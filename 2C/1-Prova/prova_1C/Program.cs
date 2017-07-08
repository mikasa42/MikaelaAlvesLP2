using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace prova_1C
{
    class Program
    {
        static void Main(string[] args)
        {
            int j = int.Parse(Console.ReadLine());

            for (int i=1; i<=j; i++)
            {
                int marcado=0;
                int ambiguo=0;
                string alt = "*";

                int a = int.Parse(Console.ReadLine());
                int b = int.Parse(Console.ReadLine());
                int c = int.Parse(Console.ReadLine());
                int d = int.Parse(Console.ReadLine());
                int e = int.Parse(Console.ReadLine());

                if (a <= 100)
                {
                    alt = "A";
                    marcado++;
                }
                else if (a <= 220) 
                    ambiguo++;
                if (b <= 100)
                {
                    alt = "B";
                    marcado++;
                }
                else if (b <= 220)
                    ambiguo++;
                if (c <= 100)
                {
                    alt = "C";
                    marcado++;
                }
                else if (c <= 220)
                    ambiguo++;
                if (d <= 100)
                {
                    alt = "D";
                    marcado++;
                }
                else if (d <= 220)
                    ambiguo++;
                if (e <= 100)
                {
                    alt = "E";
                    marcado++;
                }
                else if (e <= 220)
                    ambiguo++;

                if (marcado == 1 && ambiguo == 0)
                    Console.WriteLine(alt);
                else
                    Console.WriteLine("*");


            }
        }
    }
}
