using Microsoft.AspNetCore.Mvc;

namespace aspnet.Controllers
{
    public class CheckClientsController : Controller
    {
        public IActionResult Index()
        {
            return View();
        }
    }
}
