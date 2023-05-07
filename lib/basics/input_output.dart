import 'dart:io';

void main() {
  print("Enter your first name: ");
  //* stdin: The standard input stream of data read by this program.
  //* readLineSync: Reads a line from stdin.

  String firstName = stdin.readLineSync()!;

  print("Enter your last name: ");
  String lastName = stdin.readLineSync()!;
  print("Enter your age: ");
  String age = stdin.readLineSync()!;

  print("Hello ${firstName} ${lastName}.\nYour age is ${age}");
  print("=========================================");

  print("Enter your first number: ");
  double firstNumber = double.parse(stdin.readLineSync()!);
  print("Enter your first name: ");
  double lastNumber = double.parse(stdin.readLineSync()!);

  double result = firstNumber + lastNumber;
  print("result = $result");
}
