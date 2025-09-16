using Microsoft.AspNetCore.Mvc;

namespace LojaDeBrinquedos.Controllers
{
    public class ProdutoController : Controller
    {
        public IActionResult Index()
        {
            return View();
        }
    }
}
