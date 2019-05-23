using POINTBUS.DAO;
using POINTBUS.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace POINTBUS.Controllers
{
    public class PesquisaController : Controller
    {
        // GET: Pesquisa
        public ActionResult Index()
        {
            PesquisaDAO dao = new PesquisaDAO();
            ViewBag.Pesquisa = dao.Busca();
            ViewBag.Usuario = Session["usuarioLogado"];
            return View();
        }

        [HttpPost]
        public ActionResult Adicionar(Pesquisa p)
        {
            PesquisaDAO dao = new PesquisaDAO();
            dao.Adiciona(p);
            return RedirectToAction("Index", "Pesquisa");
        }
    }
}