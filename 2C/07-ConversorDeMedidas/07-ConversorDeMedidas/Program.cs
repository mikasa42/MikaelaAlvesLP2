using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace _07_ConversorDeMedidas
{
    class Program
    {
        static void Main(string[] args)
        {
            Console.WriteLine(" Deseja qual conversão? \n 1- kilograma para grama \n 2- celsius para kelvin \n 3-metros para kilometros\n 4- celsius para fahrenheit \n 5-grama pra kilo \n 6- kilometro para milha ");
            int op = int.Parse(Console.ReadLine());

            if (op == 1) {

                double n = Convert.ToDouble(Console.ReadLine());
                Console.WriteLine(Conversor.KgParaG(n));
            }
            
            else if(op==2){
                double m = Convert.ToDouble(Console.ReadLine());
                Console.WriteLine(Conversor.CParaK(m));
            }

            else if(op==3){
                double l = Convert.ToDouble(Console.ReadLine());
                Console.WriteLine(Conversor.MParaKm(l));
            }

            else if(op==4){
                double f = Convert.ToDouble(Console.ReadLine());
                Console.WriteLine(Conversor.CParaFh(f));
            }

            else if(op==5){
                double g = Convert.ToDouble(Console.ReadLine());
                Console.WriteLine(Conversor.GParaKg(g));
            }

            else if(op==6){
                double h = Convert.ToDouble(Console.ReadLine());
                Console.WriteLine(Conversor.KmParaMil(h));
            }
            

          

            

            
        }
    }
}
