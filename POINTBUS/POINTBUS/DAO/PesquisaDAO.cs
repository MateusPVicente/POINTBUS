using System;
using Microsoft.EntityFrameworkCore;
using POINTBUS.Models;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace POINTBUS.DAO
{
    public class PesquisaDAO
    {
        public void Adiciona(Pesquisa p)
        {
            using (var context = new OnibusContext())
            {
                p.ID = 1;
                p.Total = 1;
                context.Pesquisa.Add(p);
                context.SaveChanges();
            }
        }

        public Pesquisa Busca()
        {
            using (var contexto = new OnibusContext())
            {
                return contexto.Pesquisa.Where(p => p.ID == 1).FirstOrDefault();
            }
        }
    }
}