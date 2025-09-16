using Microsoft.AspNetCore.Mvc;

namespace LojaDeBrinquedos.Controllers
{
    public class PedidoController : Controller
    {
        public IActionResult Index()
        {
            return View();
        }
    }
}
