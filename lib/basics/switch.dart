import 'dart:io';

void main() {
  //* create simple app to display student degrees
  print("Enter your degree...(A,B,C,F)\n");
  String degree = stdin.readLineSync()!.toUpperCase();

  switch (degree) {
    case "A":
      print("Excellent");
      break;
    case "B":
      print("Very good");
      break;
    case "C":
      print("good");
      break;
    case "F":
      print("failure");
      break;
    default:
      print("You enter wrong degree...");
      break;
  }
}
