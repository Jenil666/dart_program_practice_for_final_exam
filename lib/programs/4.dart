//Write a program to check if a given number is a palindrome or not using a loop.
//palindrome = 11,22,33 etc

import 'dart:io';

void main()
{
  String? a,check;
  bool verify = true;
  print("Enter number");
  a = stdin.readLineSync();
  try
  {
    int num = int.parse(a!);
  }
  catch(e)
  {
    verify = false;
    print("Enter valid value");
  }
  if(verify == true)
    {
      check = a!.split('').reversed.join();
      if(a == check)
      {
        print("Number is pelidrome");
      }
      else
      {
        print("Number is not pelidrome");
      }
    }

}