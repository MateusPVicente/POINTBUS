using Microsoft.EntityFrameworkCore;
using POINTBUS.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace POINTBUS.DAO
{
    public class UsuarioDAO
    {
        public void Adiciona(Usuario user)
        {
            using (var context = new OnibusContext())
            {
                context.Usuario.Add(user);
                context.SaveChanges();
            }
        }

        public void Atualiza(Usuario user)
        {
            using (var contexto = new OnibusContext())
            {
                contexto.Entry(user).State = EntityState.Modified;
                contexto.SaveChanges();
            }
        }

        public Usuario Busca(string nome, string senha)
        {
            using (var contexto = new OnibusContext())
            {
                return contexto.Usuario
                .Where(p => p.Nome == nome && p.Senha == senha)
                .FirstOrDefault();
            }
        }
    }
}