using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace etapa_5_exercicios
{
    class Program
    {
        static void Main(string[] args)
        {

        } 
            struct carro
        {
            public string modelo;
            public int pot;
            public int km;
            public int anofab;
            public int fabricacao;
            public string cor ;
        }
        static void Main(string[] args)
        {
                    string modelo, tipo;
                    int km,pot, carros;
                    
                    
                    
                    
                    Console.WriteLine("Insira o numero de carros");
                    carros = Convert.ToInt32(Console.ReadLine());
                    {  
                    car1[] carro = new carro [i];
                            for (int i = 0; i < carros; i++)
                            {
                        

                                Console.WriteLine("Insira o seu modelo ");
                                car1.modelo = Console.ReadLine();
                                Console.WriteLine("Insira a quilometragem :");
                                car1.km = Convert.ToInt32(Console.ReadLine());
                                Console.WriteLine("Insira a potência :");
                                car1.pot = Convert.ToInt32(Console.ReadLine());

                                tipo = classif(car1.modelo, car1.km, car1.pot);

                             
                            }
                        for (int i = 0; i < carros; i++)
                        Console.WriteLine(tipo);
                        Console.WriteLine("A taxa de uso é de {0}", taxa);
                    }


                }
                public static string classif(carro c)
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
                public static void cor(carro c)
                {
                    c.km = Console.ReadLine();
                }

                public static void mod(carro c)
                {
                    c.modelo = Console.ReadLine();
                }

                public static int taxadeuso(carro c)
                {
                    int anofab, anohj, taxa=0;
                    taxa = anofab - anohj;

                    return taxa;

                }
    }
}
