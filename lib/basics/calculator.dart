import 'dart:io';

void main() {
  print("Welcome into Btoo Calculator");
  print("Enter first number:\n");
  double firstNumber = double.parse(stdin.readLineSync()!);
  print("Enter second number:\n");
  double secondNumber = double.parse(stdin.readLineSync()!);
  print("Choose one of operator:(+,-,*,/)\n");
  String operation = stdin.readLineSync()!;
  //* we have 4 conditions may use if or switch
  switch (operation) {
    case "+":
      add(firstNumber, secondNumber);
      break;
    case "-":
      sub(firstNumber, secondNumber);
      break;
    case "*":
      multi(firstNumber, secondNumber);
      break;
    //* another way
    case "/":
      print(divide(firstNumber, secondNumber));
      break;
    default:
      print("You enter something wrong...");
      break;
  }
}

//* our functions => return double value, pass 2 parameters
double add(double a, double b) {
  print(a + b);
  return a + b;
}

double sub(double a, double b) {
  print(a - b);
  return a - b;
}

double multi(double a, double b) {
  print(a * b);
  return a * b;
}

//* another way
double divide(double a, double b) {
  double result = a / b;
  return result;
}
