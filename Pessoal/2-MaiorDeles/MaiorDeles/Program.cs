using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace MaiorDeles
{
    class Program
    {
        static void Main(string[] args)
        {
           
            int n = int.Parse(Console.ReadLine());
            int[] j = new int[n];
           
            for (int i = 0; i < n; i++)
            {
                j[i]= int.Parse(Console.ReadLine());

               
            }
            int m = j[0];
            for (int i = 0; i < n; i++)
            {
                if (j[i] > m)
                {
                    m = j[i];
                }
            }
                Console.WriteLine(m);
        }
    }
}
