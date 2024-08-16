using System;
using System.Collections.ObjectModel;
using System.ComponentModel;
using System.IO;
using System.Text.Json.Nodes;
using System.Threading.Tasks;
using System.Windows.Input;
using LLama_AI.API;
using LLama_AI.Model;
using Microsoft.Maui.Media;
using Newtonsoft.Json;
using Newtonsoft.Json.Linq;

namespace LLama_AI.ViewModel
{
    public class ChatViewModel : INotifyPropertyChanged
    {
        private string _prompt;
        private FileResult _selectedMedia;

        public string Prompt
        {
            get => _prompt;
            set
            {
                if (_prompt != value)
                {
                    _prompt = value;
                    OnPropertyChanged(nameof(Prompt));
                }
            }
        }

        public ICommand SendCommand { get; }
        public ICommand SelectMediaCommand { get; }

        public ObservableCollection<ChatMessage> Messages { get; }

        public event PropertyChangedEventHandler PropertyChanged;

        public ChatViewModel()
        {
            SendCommand = new Command(async () => await OnSend());
            SelectMediaCommand = new Command(async () => await OnSelectMedia());
            Messages = new ObservableCollection<ChatMessage>();
        }

        private async Task OnSend()
        {
            if (string.IsNullOrWhiteSpace(_prompt))
            {
                await Application.Current.MainPage.DisplayAlert("Error", "Please add a message!", "OK");
                return;
            }

            if (_selectedMedia == null)
            {
                await Application.Current.MainPage.DisplayAlert("Error", "Please add an image or video!", "OK");
                return;
            }

            var lastMessage = Messages.LastOrDefault();
            if(lastMessage is not null)
            {
                lastMessage.Text = Prompt;
            }

            

            await SendPromptToServer();

            // Clear input after sending
            Prompt = string.Empty;
            _selectedMedia = null;

            // Scroll to the bottom
            // Scroll to the bottom
            var collectionView = (CollectionView)Application.Current.MainPage.FindByName("ChatCollectionView");
            if (collectionView != null && Messages.Count > 0)
            {
                collectionView.ScrollTo(Messages.Last(), position: ScrollToPosition.End, animate: true);
            }
        }

        public async Task SendPromptToServer()
        {
            var api = new OllamaAPI();
            string model = "llava";
            string mediaToBase64 = api.MediaToBase64(_selectedMedia.FullPath);
            string endpoint = "generate";

            try
            {
                bool stream;
                var response = await api.PostAsync(_prompt, model, endpoint, mediaToBase64, stream=false);

                if (response.IsSuccessStatusCode)
                {
                    var content = await response.Content.ReadAsStringAsync();
                    JObject jsonResponse = JObject.Parse(content);
                    
                    Messages.Add(new ChatMessage { IsUserMessage = false, Text = jsonResponse["response"].ToString() });
                }
                else
                {
                    await Application.Current.MainPage.DisplayAlert("Error", "Failed to send message to server", "OK");
                }

            }
            catch(Exception e)
            {   
                Console.WriteLine(e.Message);
                Console.WriteLine(e.StackTrace);

            }


        }

        private async Task OnSelectMedia()
        {
            string action = await Application.Current.MainPage.DisplayActionSheet("Choose media", "Cancel", null, "Take Photo", "Pick Photo");
            var storageStatus = await Permissions.RequestAsync<Permissions.StorageRead>();
            await Permissions.RequestAsync<Permissions.StorageWrite>();
            await Permissions.RequestAsync<Permissions.Camera>();

            switch (action)
            {
                case "Take Photo":
                    _selectedMedia = await MediaPicker.CapturePhotoAsync();
                    break;
                case "Pick Photo":
                    _selectedMedia = await MediaPicker.PickPhotoAsync();
                    break;
            }

            if (_selectedMedia != null)
            {
                string video = null;
                string image = null;

                if (_selectedMedia.ContentType.ToLower().Contains("image"))
                {
                    image = _selectedMedia.FullPath;
                }
                else if (_selectedMedia.ContentType.ToLower().Contains("video"))
                {
                    video = _selectedMedia.FullPath;
                }

                Messages.Add(new ChatMessage { IsUserMessage = true, Text = _prompt, VideoPath = video, Photo = image });
            }
        }

        protected virtual void OnPropertyChanged(string propertyName)
        {
            PropertyChanged?.Invoke(this, new PropertyChangedEventArgs(propertyName));
        }

    }
}
