using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace POINTBUS.Models
{
    public class Usuario
    {
        //atributos
        public int ID { get; set; }
        public string Nome { get; set; }
        public string Email { get; set; }
        public string Senha { get; set; }
        public DateTime DataDeNascimento { get; set; }
        public string CEPcasa { get; set; }
        public string CEPtrabalho { get; set; }
    }
}