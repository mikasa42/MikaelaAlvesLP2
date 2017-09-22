using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace _05_Produtos
{
    class Program
    {
        static void Main(string[] args)
        {

            int operador = 1, id;
            string nome;
            double preço;

            while (operador == 1)
            {
                Console.WriteLine("1- Novo produto");
                Console.WriteLine("0 - Sair");
                operador = int.Parse(Console.ReadLine());

                if (operador == 1)
                {
                    Console.WriteLine("ID:");
                    id = int.Parse(Console.ReadLine());

                    Console.WriteLine("Nome:");
                    nome = Console.ReadLine();

                    Console.WriteLine("Preço cm vírgula");
                    preço = double.Parse(Console.ReadLine());

                    Produto p = new Produto(id, nome, preço);

                    while (operador == 1)
                    {
                        Console.WriteLine("1-estoque");
                        Console.WriteLine("2- Retirada de estoque");
                        Console.WriteLine("3-sobre o produto");
                        Console.WriteLine("0- Sair");
                        int operador2 = int.Parse(Console.ReadLine());

                        if (operador2 == 1)
                        {
                            Console.WriteLine("Valor para ser restabelecido:");
                            p.Repor(int.Parse(Console.ReadLine()));
                        }

                        else if (operador2 == 2)
                        {
                            Console.WriteLine("Valor a ser retirado:");
                            p.Retirar(int.Parse(Console.ReadLine()));
                        }

                        else if (operador2 == 3)
                            p.Imprimir();

                        else if (operador2 == 0)
                            break;

                        else
                            throw new System.InvalidOperationException("Operador inválido");
                    }
                }

                else if (operador == 0)
                    break;

                else
                    throw new System.InvalidOperationException("COMANDO INVÁLIDO");
            }
        }
    }
}
