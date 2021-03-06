﻿using Microsoft.EntityFrameworkCore;
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

        public IList<Usuario> Lista()
        {
            using (var contexto = new OnibusContext())
            {
                return contexto.Usuario.ToList();
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

        public Usuario Busca(string email, string senha)
        {
            using (var contexto = new OnibusContext())
            {
                return contexto.Usuario.Where(p => p.Email == email && p.Senha == senha).FirstOrDefault();
            }
        }
    }
}