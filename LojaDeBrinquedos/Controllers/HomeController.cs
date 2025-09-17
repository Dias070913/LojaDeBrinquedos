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

        public HomeController(ILogger<HomeController> logger, ProdutoRepositorio produtoRepositorio)
        {
            _logger = logger;

            _produtoRepositorio = produtoRepositorio;
        }

        public async Task<IActionResult> Index()
        {
            var produtos = await _produtoRepositorio.TodosProdutos();
            return View(produtos);
        }

        
    }
}
