using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;


namespace _6_AreaDoTriangulo
{
    class Triangulo
    {
        double[] cossenos = new double[] { 0.86, 0.7, 0.5 };

        public double CalcularPerimetro(double a, double b, double c)
        {
            return a + b + c;
        }
        
        public double CalcularArea(double b, double h)
        {
            return (b * h) / 2;
        }

        public double CalcularArea(int b, double h)
        {
            return 1.0;
        }
    }
}
