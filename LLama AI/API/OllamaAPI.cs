using Newtonsoft.Json;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace LLama_AI.API
{
    public class OllamaAPI
    {
        private const string BASE_URL = "http://129.21.220.95:11434/api/";
        private readonly HttpClient _httpClient;

        public OllamaAPI()
        {
            _httpClient = new HttpClient();
        }

        public async Task<HttpResponseMessage> PostAsync(string prompt, string model,string endpoint, string mediaBase64, bool stream = true)
        {
            var requestBody = new
            {
                prompt = prompt,
                model = model,
                images = new[] { mediaBase64 },
                stream = stream
            };

            var json = JsonConvert.SerializeObject(requestBody);
            Console.Write(json);
            var content = new StringContent(json, Encoding.UTF8, "application/json");

            string uri = $"{BASE_URL}{endpoint}";
            Console.WriteLine(uri);
            Console.WriteLine(content);

            return await this._httpClient.PostAsync(uri, content);

        }

        public string MediaToBase64(string path)
        {
            byte[] media = System.IO.File.ReadAllBytes(path);
            return Convert.ToBase64String(media);
        }


    }
}
