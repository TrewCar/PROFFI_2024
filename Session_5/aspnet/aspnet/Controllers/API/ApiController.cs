using aspnet.Controllers.API.Data;
using Microsoft.AspNetCore.Mvc;
using Newtonsoft.Json;

namespace aspnet.Controllers.API
{
    public class ApiController : Controller
    {
        [HttpGet]
        public IActionResult Sklad()
        {
            var data = new DataBase().GetData("SELECT * FROM sklad");
            List<Sklad> list = new List<Sklad>();
            foreach(var item in data)
            {
                list.Add(new Data.Sklad() { 
                    id = int.Parse(item[0]),
                    name = item[1]
                });
            }
            return Ok(JsonConvert.SerializeObject(list));
        }
        [HttpGet]
        public IActionResult GetPreporat(int id)
        {
            var data = new DataBase().GetData($"SELECT * FROM preporat WHERE id_skald = {id}");
            List<Preporat> list = new List<Preporat>();
            foreach (var item in data)
            {
                list.Add(new Data.Preporat()
                {
                    id = int.Parse(item[0]),
                    name = item[1],
                    id_sklad = int.Parse(item[2]),
                    count = int.Parse(item[3])
                });
            }
            return Ok(JsonConvert.SerializeObject(list));
        }
        [HttpGet]
        public IActionResult SpisanPreporat(int id, int count, string why)
        {
            var data = new DataBase().GetData($"SELECT * FROM preporat WHERE id = {id}");
            if(data.Count == 0)
            {
                return BadRequest("Не найден");
            }
            var preporat = new Data.Preporat()
            {
                id = int.Parse(data[0][0]),
                name = data[0][1],
                id_sklad = int.Parse(data[0][2]),
                count = int.Parse(data[0][3])
            };

            if(preporat.count < count)
            {
                return BadRequest("В списании кол-во больше чем на самом деле");
            }
            new DataBase().SendData($"UPDATE preporat SET count = count - {count} WHERE id = {id}");
            new DataBase().SendData($"INSERT INTO spisan VALUES (default, 'Препорат {preporat.name} списан со скалада {preporat.id_sklad} в колличестве {count}', '{why}')");
            return Ok();
        }
    }
}
