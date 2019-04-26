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

        public ActionResult Adicionar(Usuario user)
        {
            UsuarioDAO dao = new UsuarioDAO();
            dao.Adiciona(user);
            return RedirectToAction("Index", "Home");
        }
    }
}