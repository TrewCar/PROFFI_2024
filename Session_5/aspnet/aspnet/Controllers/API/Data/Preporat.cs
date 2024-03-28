using System.Text.Json.Serialization;

namespace aspnet.Controllers.API.Data
{
    public struct Preporat
    {
        [JsonPropertyName("id")]
        public int id;
        [JsonPropertyName("name")]
        public string name;
        [JsonPropertyName("id_sklad")]
        public int id_sklad;
        [JsonPropertyName("count")]
        public int count;
    }
}
