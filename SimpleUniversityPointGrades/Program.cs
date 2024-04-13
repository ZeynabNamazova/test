using System;

namespace SimpleUniversityPointGrades
{
    internal class Program
    {
        static void Main(string[] args)
        {
            while (true)
            {
                Console.WriteLine("Enter the point: ");
                int a = Convert.ToInt32(Console.ReadLine());

                if (a <= 50 && a >= 0)
                {
                    Console.WriteLine("F");
                }
                else if (a <= 60 && a > 51)
                {
                    Console.WriteLine("E");
                }
                else if (a <= 70 && a >= 61)
                {
                    Console.WriteLine("D");
                }
                else if (a <= 80 && a >= 71)
                {
                    Console.WriteLine("C");
                }
                else if (a <= 90 && a >= 81)
                {
                    Console.WriteLine("B");

                }
                else if (a <= 100 && a >= 91)
                {
                    Console.WriteLine("A");
                }
                else
                {
                    Console.WriteLine("Enter the correct point");
                }
            }
        }
    }
}
