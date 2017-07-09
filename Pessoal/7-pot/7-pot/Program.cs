using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace _7_pot
{
    class Program
    {
        static void Main(string[] args)
        {
            int cont = 0;
            int A = int.Parse(Console.ReadLine());
            int B = int.Parse(Console.ReadLine());
            cont = A * (B * A);

            Console.WriteLine(cont);

        }
    }
}
