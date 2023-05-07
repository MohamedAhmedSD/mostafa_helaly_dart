import 'dart:io';

void main() {
  //* create simple app to display student degrees
  print("Enter your degree..(1 to 100)\n");
  int mark = int.parse(stdin.readLineSync()!);
  String degree = "";

  //* we get degree from mark
  //* then by using if convert it into degree
  //* to use it by switch later

  if (mark > 80) {
    degree = "A";
  } else if (mark > 70) {
    degree = "B";
  } else if (mark > 55) {
    degree = "C";
  } else {
    degree = "F";
  }

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

  //* when talk about scope => smaller can use variable from parent our larger
  //* larger can not take varible from smaller
  //* same degree can not take from each others
  //* number of scopes == numbers of {}
}
