using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace _2_LivrosHermione
{
    class Program
    {
        static void Main(string[] args)
        {
            Livros livros;
            livros = new Livros();

            livros.Livro = Console.ReadLine();
            livros.pags =int.Parse(Console.ReadLine());
            livros.paghora = int.Parse(Console.ReadLine());
            livros.horadia = int.Parse(Console.ReadLine());
            livros.diasrest = int.Parse(Console.ReadLine());

            livros.calculando();

            if (livros.demora < livros.diasrest)
            {
                Console.WriteLine("Será posivel ler o livro em {0} dias ", livros.demora);
            }
            else
            {
                Console.WriteLine("Não será possível ler o livro ...");
            }
        }
    }
}
