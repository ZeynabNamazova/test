using System;

namespace SimpleCalculator
{
    internal class Program
    {
        static void Main(string[] args)
        {
           while (true)
            {
                Console.Write("Enter first number:");
                double a = Convert.ToDouble(Console.ReadLine());
                char symbol = Convert.ToChar(Console.ReadLine());
                Console.Write("Enter second number:");
                double b = Convert.ToDouble(Console.ReadLine());


                switch (symbol)
                {
                    case '+':
                        Console.WriteLine(Convert.ToDouble(a + b) + " ",  "solve");
                        break;

                    case '-':
                        Console.WriteLine(Convert.ToDouble(a - b) + " ",  "solve");
                        break;

                    case '*':
                        Console.WriteLine(Convert.ToDouble(a * b) + " ",  "solve");
                        break;

                    case '/':
                        Console.WriteLine(Convert.ToDouble(a / b) + " ",  "solve");
                        break;

                    default:
                        Console.WriteLine("Don't the right symbol");
                        break;
                }

            }




        }
    }
}
