using System.Text.Json.Serialization;

namespace aspnet.Controllers.API.Data
{
    public struct Sklad
    {
        [JsonPropertyName("id")]
        public int id;
        [JsonPropertyName("name")]
        public string name;
    }
}
