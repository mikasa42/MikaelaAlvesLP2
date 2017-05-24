using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace DiadoAno
{
    class Program
    {
        static void Main(string[] args)
        {
            int dia, soma=0;
            string data, mes;
            data = Console.ReadLine();
            dia= int.Parse(data.Substring(0,2));
            mes = data.Substring(6,4);


            if (mes  == "jane")
                soma=dia;
            else if (mes == "feve")
                soma = dia + 31;
            else if (mes == "març")
                soma = dia + 31 + 28;
            else if (mes == "abri")
                soma = dia + 31 + 28 + 31;
            else if (mes == "maio")
                soma = dia + 31 + 28 + 31 + 30;
            else if (mes == "junh")
                soma = dia + 31 + 28 + 31 + 30 + 31;
            else if (mes == "julh")
                soma = dia + 31 + 28 + 31 + 30 + 31+ 30;
            else if (mes == "agos")
                soma = dia + 31 + 28 + 31 + 30 + 31 + 30+ 31;
            else if (mes == "sete")
                soma = dia + 31 + 28 + 31 + 30 + 31 + 30 + 31+ 31;
            else if (mes == "outu")
                soma = dia + 31 + 28 + 31 + 30 + 31 + 30 + 31 + 31+ 30;
            else if (mes == "nove")
                soma = dia + 31 + 28 + 31 + 30 + 31 + 30 + 31 + 31 + 30+ 31;
            else if (mes == "deze")
                soma = dia + 31 + 28 + 31 + 30 + 31 + 30 + 31 + 31 + 30 + 31+ 30;

                    Console.WriteLine("O dia do ano é {0}º", soma);
              
        }
    }
}
