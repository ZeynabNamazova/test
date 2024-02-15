using System;

namespace hometask
{
    internal class Program
    {
        static void Main(string[] args)
        {
            #region task1
            // 1-dən M-ədək ədədlər içərisində 21-ə bölünən ədədlərin ədədi ortasını tapan alqoritm
            int M = Convert.ToInt32(Console.ReadLine());
            int sum = 0;
            int a = 0; //bölünə bilənin sayı
            for (int i = 1; i <= M; i++)
            {
                if (i % 21 == 0)
                {
                    sum += i;
                    a++;
                }
            }
            if (a > 0)
            {
                double orta = (double)sum / a;
                Console.WriteLine(orta);
            }
            else
            {
                Console.WriteLine("21-ə bölünən ədəd tapılmadı.");
            }
            #endregion
            #region   task2
            //2 ədəd verilmişdir.Daxil Edilən Ədədlərdə Daxil Olmaqla Bu Ədədlərin Aralığında Olan Ədədlərin cəmin Tapan Alqoritm Qurun.
            int a = Convert.ToInt32(Console.ReadLine());
            int b = Convert.ToInt32(Console.ReadLine());
            int sum = 0;
            for (int i = a; i <= b; i++)
            {
                sum += i;
            }
            Console.WriteLine(sum);
            #endregion
            #region task3
            //Verilmiş M-dən N-ədək ədədlər içərisində neçə ədədin rəqəmləri cəminin cüt olduğunu tapan alqoritm
            int M = Convert.ToInt32(Console.ReadLine());
            int N = Convert.ToInt32(Console.ReadLine());
            int a = 0; //cut toplam
            for (int i = M; i <= N; i++)
            {
                int sum = 0;
                int b = i;
                while (b > 0)
                {
                    sum += b % 10;
                    b /= 10;
                }
                if (sum % 2 == 0)
                {
                    a++;
                }
            }
            Console.WriteLine(a);
        }
        #endregion
    }
}
