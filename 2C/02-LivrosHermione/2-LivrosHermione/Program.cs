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
            int qtd = int.Parse(Console.ReadLine());
            int[] demora = new int[qtd];
            Livros[] livros = new Livros[qtd];


            for (int i = 0; i < qtd; i++)
            {
                livros[i] = new Livros();
                livros[i].Titulo = Console.ReadLine();
                livros[i].pags = int.Parse(Console.ReadLine());
                livros[i].paghora = int.Parse(Console.ReadLine());
                livros[i].horadia = int.Parse(Console.ReadLine());
                livros[i].diasrest = int.Parse(Console.ReadLine());

                demora[i] = livros[i].calculando();

                if (demora[i] >= livros[i].pags)
                {
                    Console.WriteLine("Será posivel ler o livro {1} em {0} dias ", (livros[i].pags / (livros[i].paghora * livros[i].horadia)), livros[i].Titulo);
                    
                }
                else
                {
                    Console.WriteLine("Não será possível ler o livro ...");
                    
                }


            }
            
        }
    }
}
