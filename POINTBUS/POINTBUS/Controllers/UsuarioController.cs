using POINTBUS.DAO;
using POINTBUS.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace POINTBUS.Controllers
{
    public class UsuarioController : Controller
    {
        // GET: Usuario
        public ActionResult Cadastro()
        {
            return View();
        }

        // GET: Home
        public ActionResult Index()
        {
            return View();
        }

        [HttpPost]
        public ActionResult Adicionar(Usuario user)
        {
            UsuarioDAO dao = new UsuarioDAO();
            dao.Adiciona(user);
            return RedirectToAction("Index", "Usuario");
        }

        public ActionResult Logar(string email, string senha)
        {
            UsuarioDAO dao = new UsuarioDAO();
            Usuario user = dao.Busca(email, senha);
            if (user != null)
            {
                ViewBag.Usuario = user;
                return RedirectToAction("Index", "Usuario");
            }
            else
                return Redirect("~/Home.aspx");
        }
    }
}