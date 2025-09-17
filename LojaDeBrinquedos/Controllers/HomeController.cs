using System.Diagnostics;
using LojaDeBrinquedos.Models;
using Microsoft.AspNetCore.Mvc;
using LojaDeBrinquedos.Repositorio;

namespace LojaDeBrinquedos.Controllers
{
    public class HomeController : Controller
    {
        private readonly ILogger<HomeController> _logger;

        private readonly ProdutoRepositorio _produtoRepositorio;

        public HomeController(ILogger<HomeController> logger)
        {
            _logger = logger;
        }

        public async Task<IActionResult> Index()
        {
            var produtos = await _produtoRepositorio.TodosProdutos();
            return View(produtos);
        }

        
    }
}
