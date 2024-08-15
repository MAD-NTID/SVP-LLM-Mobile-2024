using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace LLama_AI.Model
{
    public class ChatMessage
    {
        public string Text { get; set; }
        public bool IsUserMessage { get; set; }
        public ImageSource Photo { get; set; }
        public string VideoPath { get; set; }

    }
}
