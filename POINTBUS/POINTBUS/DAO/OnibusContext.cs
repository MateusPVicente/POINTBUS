using Microsoft.EntityFrameworkCore;
using POINTBUS.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace POINTBUS.DAO 
{
    public class OnibusContext : DbContext
    {
        public DbSet<Usuario> Usuario { get; set; }
        protected override void OnConfiguring(DbContextOptionsBuilder optionsBuilder)
        {
            optionsBuilder.UseSqlServer("Data Source=regulus;Initial Catalog=PR118186;User ID=PR118186;Password=PR118186");
        }
    }
}