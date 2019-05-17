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

        public ActionResult Mapa()
        {
            return View();
        }


        // GET: Home
        public ActionResult Index()
        {
            object usuario = Session["usuarioLogado"];
            if (usuario != null)
            {
                UsuarioDAO dao = new UsuarioDAO();
                IList<Usuario> alu = dao.Lista();
                ViewBag.Aluno = alu;
                ViewBag.Usuario = Session["usuarioLogado"];
                return View();
            }
            else
            {
                // se não houver usuario autenticado, redireciona para a página de login
                return Redirect("~/Home.aspx");
            }
        }

        [HttpPost]
        public ActionResult Adicionar(Usuario user)
        {
            UsuarioDAO dao = new UsuarioDAO();
            dao.Adiciona(user);
            return RedirectToAction("Index", "Usuario");
        }

        public ActionResult Logar(String email, String senha)
        {
            UsuarioDAO dao = new UsuarioDAO();
            Usuario usu = dao.Busca(email, senha);
            // Se o objeto usu não for igual a null será guardado em uma variável de sessão o objeto usu (Usuario) e em seguida será redirecionado para a página de listagem de RAs
            if (usu != null)
            {
                Session["usuarioLogado"] = usu; //enviar usuário para a view Index do controller Aluno
                return RedirectToAction("Index", "Usuario");
            }
            else
            {
                //enviar usuário para a view Index, ou seja, para a página de Login. Como é no mesmo controller não preciso especificar no RedirectToAction
                return Redirect("~/Home.aspx");
            }
        }
    }
}