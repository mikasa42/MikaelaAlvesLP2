using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace _04_CódigoMorse
{
    class Program
    {
        static void Main(string[] args)
        {
            Console.WriteLine("0-sair");
            Console.WriteLine("1-novo codigo?");
            

            int op=int.Parse(Console.ReadLine());

            Mensagem x = new Mensagem();

            while (op == 1)
            {
                Console.WriteLine("2-codificar");
                Console.WriteLine("3-decodificar");
                Console.WriteLine("4-transmitir");

                int y = int.Parse(Console.ReadLine());
                if (y == 2)
                {
                    x.msg = Console.ReadLine();
                    x.codificar();
                    Console.WriteLine(x.codificar());
                }
                else if (y==3)
                {
                    x.msg = Console.ReadLine();
                    x.decodificar();
                    Console.WriteLine(x.decodificar());

                }



               
            }
        }
    }
}
