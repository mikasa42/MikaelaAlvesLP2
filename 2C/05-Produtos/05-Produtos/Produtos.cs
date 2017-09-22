using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace _05_Produtos
{
    class Produtos
    {
         public int Id { get; private set; }
        public string Nome { get; private set; }
        public double Preco { get; set; }
        public string Marca { get; set; }
        public int QtdEstoque { get; private set; }

        public Produto(int id, string nome, double produto)
        {
            Id = id;
            Nome = nome;
            Preco = produto;
            QtdEstoque = 0;
        }

        public void Repor(int novaQtd)
        {
            QtdEstoque += novaQtd;
        }

        public void Retirar(int qtd)
        {
            if (qtd > QtdEstoque)
                throw new System.InvalidOperationException("A retirada não pode ser maior que o estoque :");
            else
                QtdEstoque -= qtd;
        }

        public void Imprimir()
        {
            Console.WriteLine("Produto: {0} - R${1:0.00} - Estoque: {2}", Nome, Preco, QtdEstoque);
        }
    }
}
