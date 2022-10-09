using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace EsittelyJaAlustus
{
    internal class Program
    {
        static void Main(string[] args)
        {
            short var1 = -14;
            byte var2 = 4;
            float var3 = 3.1415926535897932384626433832795028841971693993751058209749445923078164062862089986280348253421170679f;
            char var4 = 'a';
            bool var5 = true;
            ulong var6 = 17432654345654ul;
            decimal var7 = 2.2m;

            
            Console.WriteLine("Var1 on tyyppiä " + var1.GetType());
            Console.WriteLine("Var2 on tyyppiä " + var2.GetType());
            Console.WriteLine("Var3 on tyyppiä " + var3.GetType());
            Console.WriteLine("Var4 on tyyppiä " + var4.GetType());
            Console.WriteLine("Var5 on tyyppiä " + var5.GetType());
            Console.WriteLine("Var6 on tyyppiä " + var6.GetType());
            Console.WriteLine("Var7 on tyyppiä " + var7.GetType());

        }
    }
}
