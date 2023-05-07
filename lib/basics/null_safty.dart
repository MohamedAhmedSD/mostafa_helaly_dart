import 'dart:io';

void main() {
  print("Enter your firstname: \n");
  String firstName;
  //* ! => no way to be null 100%
  firstName = stdin.readLineSync()!;
  print(firstName);
  print("===================================");
  print("Enter your secondname: \n");
  //* ? => value of this data type may be back null value
  String? secondName;
  secondName = stdin.readLineSync();
  print(secondName);
}
