using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace EsittelyJaAlustus2
{
    internal class Program
    {
        static void Main(string[] args)
        {
            // sbyte
            sbyte var1 = -14;
            // long
            long var2 = 409600l;
            // ushort
            ushort var3 = 32768;

            // double
            double var4 = 3.1415926535897932384626433832795028841971693993751058209749445923078164062862089986280348253421170679f;

            


            Console.WriteLine("Var1 on tyyppiä " + var1.GetType());
            Console.WriteLine("Var2 on tyyppiä " + var2.GetType());
            Console.WriteLine("Var3 on tyyppiä " + var3.GetType());
            Console.WriteLine("Var4 on tyyppiä " + var4.GetType());
           
        }
    }
}
