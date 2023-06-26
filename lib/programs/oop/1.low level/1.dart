//Create a class for a calculator with properties such as current value and operation, and methods such as add and subtract.
import 'dart:io';

class Operations {

  void addition(int a, int b) {
    print("Addition of value is ${a + b}");
  }

  void subtraction(int a, int b) {
    print("Subtraction of value is ${a - b}");
  }

  void multiplication(int a, int b) {
    print("Multiplication of value is ${a * b}");
  }

  void devision(int a, int b) {
    print("Devision of value is ${a / b}");
  }
}

void main() {
  int? a,b;
  Operations m1 = Operations();
  bool check = true;

  print("Enter first value");
  String? vala = stdin.readLineSync();
  try {
    a=int.parse(vala!);
  } catch (e) {
    print("Enter proper value");
    check = false;
  }

  print("Enter second value");
  String? valb = stdin.readLineSync();
  try {
    b=int.parse(valb!);
  } catch (e) {
    print("Enter proper value");
    check = false;
  }
  if(check == true)
    {
      m1.addition(a!, b!);
      m1.subtraction(a, b);
      m1.multiplication(a, b);
      m1.devision(a, b);
    }
}
