using System.Diagnostics;
using LojaDeBrinquedos.Models;
using Microsoft.AspNetCore.Mvc;

namespace LojaDeBrinquedos.Controllers
{
    public class CarrinhoController : Controller
    {

        public IActionResult Index()
        {
            return View();
        }
    }
}
