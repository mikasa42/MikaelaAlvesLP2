using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace _04_CódigoMorse
{
    class Mensagem
    {
        public string[] codguarda = new string[] { };
         public string msg {get;set;}
         public string[] tab = new string[]
         {
             ".-", "-...", "-.-.", "-..", ".", //a, b, c, d, e
            "..-.", "--.", "....", "..", ".---", //f, g, h, i, j
            "-.-", ".-..", "--", "-.", "---", //k, l, m, n, o
            ".--.", "--.-", ".-.", "...", "-", //p, q, r, s, t
            "..-", "...-", ".--", "-..-", "-.--", "--.." //u, v, w, x, y, z
         };
         public string[] alfabeto = new string[]
        {
            "a","b","c","d","e",
            "f","g","h","i","j","k",
            "l","m", "n","o","p","q","r",
            "s","t","u","v","w","x","y","z"
        };
        
        public string codificar()
        {
            string codigo= "";

           for (int i = 0; i < msg.Length; i++)
                {
                    char letra = msg[i];
                    int pos = letra - 'A';
                    string codLetra = tab[pos];
                    codigo += codLetra + "  ";

                }
               
    
          return codigo ;

        }
        public string decodificar()
        {
            
                 
                 string codigo = "", codLetra=" ";
                 
            
            
             string [] Letras= msg.Split(' '); 

               for (int i = 0; i <msg.Length; i++)
                {
                    for( int k = 0; k <26; k++)
                    {
                        if(Letras[i] == tab[k] )
                           {
                              
                              
                              codLetra = alfabeto[i];
                              
                    
                            }
                           
                    }
                    codigo += codLetra + "  ";
                }
         return codigo;

         }


    }
}
