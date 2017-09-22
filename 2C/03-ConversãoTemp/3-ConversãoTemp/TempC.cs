using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace _3_ConversãoTemp
{
    class TempC
    {
        public double tc;

        public double Emfarenheit()
        {
            return (1.8 * tc) + 32;
        }
        public double kelvin ()
        {
            return tc + 273;
        }
    }
}
