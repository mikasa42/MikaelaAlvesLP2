using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace _3_ConversãoTemp
{
    class Program
    {
        static void Main(string[] args)
        {
            TempC x = new TempC();
            Console.WriteLine("0-sair");
            Console.WriteLine("1-Nova temperatura");
            Console.WriteLine("2-farenheit");
            Console.WriteLine("3-kelvin");

            int op = int.Parse(Console.ReadLine());

            while (op == 1)
            {
                Console.WriteLine("2-farenheit");
                Console.WriteLine("3-kelvin");
                int convert = int.Parse(Console.ReadLine());

                if ( convert==2)
                {
                    x.tc = int.Parse(Console.ReadLine());
                    x.Emfarenheit();
                    Console.WriteLine(x.Emfarenheit());
                }
                else if (convert == 3)
                {
                    x.tc = int.Parse(Console.ReadLine());
                    x.kelvin();
                    Console.WriteLine(x.kelvin());
                }
                Console.WriteLine("0-sair");
                Console.WriteLine("1-Nova temperatura");
                op = int.Parse(Console.ReadLine());

            }
        }
    }
}
