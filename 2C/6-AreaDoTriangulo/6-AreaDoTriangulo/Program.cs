using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace _6_AreaDoTriangulo
{
    class Program
    {
        static void Main(string[] args)
        {

            Triangulo lado = new Triangulo();

             lado.A = Convert.ToDouble(Console.ReadLine());
             lado.B = Convert.ToDouble(Console.ReadLine());
             lado.C = Convert.ToDouble(Console.ReadLine());
             lado.angulo = Convert.ToDouble(Console.ReadLine());
        }
    }
}
