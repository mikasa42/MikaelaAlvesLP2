using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace MostrarSoma
{
    class Program
    {
        static void Main(string[] args)
        {
            int soma=0;
            for (int i=0; i<100; i++)
            {
                Console.WriteLine(i);
                soma = soma + i;
            }
            Console.WriteLine(soma);


        }
    }
}
