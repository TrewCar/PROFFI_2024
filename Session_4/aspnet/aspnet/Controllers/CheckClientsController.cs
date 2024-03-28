using aspnet.Models;
using Microsoft.AspNetCore.Mvc;

namespace aspnet.Controllers
{
    public class CheckClientsController : Controller
    {
        public IActionResult Index()
        {
            return View();
        }
        public IActionResult DragDrop()
        {
            return View(new KoechModel());
        }
        public IActionResult CreateKoika(string set_koika)
        {
            KoechModel model = new KoechModel();
            model.SaveComnat(set_koika);
            return Ok();
        }
        public IActionResult RemoveKoika(string set_koika)
        {
            KoechModel model = new KoechModel();
            model.RemoveComnat(set_koika);
            return Ok();
        }
        public IActionResult ReplaceKoika(string unset_koika, string set_koika)
        {
            KoechModel model = new KoechModel();
            model.ReplaceComnat(unset_koika, set_koika);
            return Ok();
        }
    }
}
