using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace LerNum
{
    class Program
    {
        static void Main(string[] args)
        {
            int cont = 0;
            for( int i=0; i<=500; i++)
            {
                cont = i % 5;
                if (cont==0)
                {
                    Console.WriteLine(i);
                }
            }
        }
    }
}
