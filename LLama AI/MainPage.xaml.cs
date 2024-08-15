using LLama_AI.ViewModel;

namespace LLama_AI
{
    public partial class MainPage : ContentPage
    {
        int count = 0;
        private ChatViewModel chatViewModel;

        public MainPage()
        {
            InitializeComponent();
            this.chatViewModel = new ChatViewModel();
        }

        //private void OnCounterClicked(object sender, EventArgs e)
        //{
        //    count++;

        //    //if (count == 1)
        //    //    CounterBtn.Text = $"Clicked {count} time";
        //    //else
        //    //    CounterBtn.Text = $"Clicked {count} times";

        //    //SemanticScreenReader.Announce(CounterBtn.Text);
        //}

        private void OnSendButtonClicked(object sender, EventArgs e)
        {
            this.chatViewModel.SendCommand.Execute(null);

        }

        private async void OnMediaButtonClicked(object sender, EventArgs e)
        {
            chatViewModel.SelectMediaCommand.Execute(null);
        }
    }

}
