using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace _2_LivrosHermione
{
    class Livros
    {
        public string Livro;
        public int pags;
        public int paghora;
        public int horadia;
        public int diasrest;
        public int demora=0;
        
        public void calculando()
        {
            demora = (paghora * horadia) / pags;

        }
    }
}
