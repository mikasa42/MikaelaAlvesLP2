using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Meu_intparse
{
    class Program
    {
        static void Main(string[] args)
        {
            string n;
            int  a=0, convert;
            Console.WriteLine("informe seus valores :");
            n = Console.ReadLine();

            
            }
            convert =IntParse(n);
            Console.WriteLine("O resultado é ", result);
        }
        public static int IntParse(string n)
        {
           int a=0, result=0;
            for (int i=0; i<=n.Length; i++)
                    {
                        if (n[i] == '0')
                            a = 0;
                        if (n[i] == '1')
                            a = 1;
                        if (n[i] == '2')
                            a = 2;
                        if (n[i] == '3')
                            a = 3;
                        if (n[i] == '4')
                            a = 4;
                        if (n[i] == '5')
                            a = 5;
                        if (n[i] == '6')
                            a = 6;
                        if (n[i] == '7')
                            a = 7;
                        if (n[i] == '8')
                            a = 8;
                        if (n[i] == '9')
                            a = 9;
                    
                
        }
    }
}
