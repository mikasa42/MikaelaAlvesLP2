using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace ÍmparesPares
{
    class Program
    {
        static void Main(string[] args)
        {
            int cont = 0, contimp=0, contpar=0;
            for (int i=0; i<200; i++)
            {
                int num = int.Parse(Console.ReadLine());

                cont = i % 2;

                if (cont == 0)
                {
                    contpar = contpar + 1;
                }
                else
                    contimp = contimp + 1;

                    
            }
            Console.WriteLine("São {0} números pares", contpar);
            Console.WriteLine("São {0} números ímpares", contimp);
        }
    }
}
