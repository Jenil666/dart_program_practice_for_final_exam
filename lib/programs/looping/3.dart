//Write a program to generate the first n terms of the Fibonacci sequence using a loop./
//Fibonacci sequence = 0 1 1 2 3 5 8 ..... n
import 'dart:io';

void main()
{
  int a=0,b=1;
  int? n;
  print("Enter n term of Fibonacci sequence");
  String? z = stdin.readLineSync();
  n = int.parse(z!);

  for(int j = 0; j<=n ; j++)
    {
      print(a);
      int nextTerm = a + b;
      a = b;
      b = nextTerm;
    }
}