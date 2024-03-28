using aspnet.Models;
using Microsoft.AspNetCore.Mvc;

namespace aspnet.Controllers
{
    public class ClientController : Controller
    {
        public IActionResult Index()
        {
            return View(new ClientModel());
        }
        public IActionResult Gostopolize()
        {
            return View(new ClientModel());
        }
        public IActionResult ViewClient(int id)
        {
            return View(new ClientModel(id));
        }
        public IActionResult RegIn()
        {
            return View(new ClientModel());
        }
        [HttpGet]
        public IActionResult GetInfoUser(int id)
        {
            return Json(new ClientModel().GetInfoMedCardByUser(id));
        }
    }
}
