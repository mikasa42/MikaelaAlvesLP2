using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace etapa_4_exercicios
{
    class Program
    {
        struct carro
        {
            public string modelo;
            public int pot;
            public int km;
        }
        static void Main(string[] args)
        {
                    string modelo, tipo;
                    int km,pot, carros;
                    int carro;

                    carro car1;
                    Console.WriteLine("Insira o numero de carros");
                    carros = Convert.ToInt32(Console.ReadLine());

                    for (int i = 0; i < carros; i++)
                    {
                        Console.WriteLine("Insira o seu modelo ");
                        car1.modelo = Console.ReadLine();
                        Console.WriteLine("Insira a quilometragem :");
                        car1.km = Convert.ToInt32(Console.ReadLine());
                        Console.WriteLine("Insira a potência :");
                        car1.pot = Convert.ToInt32(Console.ReadLine());

                        tipo = classif(car1.modelo, car1.km, car1.pot);

                        Console.WriteLine(tipo);
                    }


                }
                static string classif(string modelo, int km1, int pot1)
                {
                    string classrodagem, classpot, tipo;

                    if (km1 <= 5000)
                    {
                        classrodagem = "novo";
                    }
                    else if (km1 > 5000 && km1 <= 30000)
                    {
                        classrodagem = "seminovo";
                    }
                    else
                    {
                        classrodagem = "velho";
                    }

                    if (pot1 <= 200)
                    {
                        classpot = "potente";
                    }
                    else if (pot1 >= 120 && pot1 <= 200)
                    {
                        classpot = "forte";
                    }
                    else
                        classpot = "popular";
                    tipo = String.Format("{0} - {1} - {2}", modelo, classrodagem, classpot);
                    return tipo;
        }
    }
}
