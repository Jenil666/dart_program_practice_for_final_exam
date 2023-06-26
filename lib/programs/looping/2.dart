//Write a program to calculate the sum of all numbers between two inputted numbers using a loop.
import 'dart:io';

void main()
{
  int? a,b;
  int sum = 0;
  print("Enter First value");
  String? x = stdin.readLineSync();
  print("Enter Last value");
  String? y = stdin.readLineSync();
  a = int.parse(x!);
  b = int.parse(y!);
  for(int i = a;i<=b;i++)
    {
      sum = sum +i;
    }
  print("Addition of Number Between $a and $b is :- $sum");
}