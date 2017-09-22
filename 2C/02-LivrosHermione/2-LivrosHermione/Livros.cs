using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace _2_LivrosHermione
{
    class Livros
    {
        public string Titulo;
        public int pags;
        public int paghora;
        public int horadia;
        public int diasrest;

        
        public int calculando()
        {
            return (paghora * horadia) * diasrest;

        }
    }
}
