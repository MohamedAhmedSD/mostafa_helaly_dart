import 'dart:io';

void main() {
  //* when you repeat part of code for many times it's better
  //* to make it as function, and call it when you need to it

  print("What task you want the robot to do?(1.first task,2.second task)\n");

  String task = stdin.readLineSync()!;

  switch (task) {
    case "1":
      firstTask();
      print("Go home.");
      break;
    case "2":
      secondTask();
      print("Go home.");

      break;
  }
}

firstTask() {
  print("go to btoo streat");
  print("keep going till find milk shop");
  print("ask a boy for 1 liter of milk");
}

secondTask() {
  firstTask();
  print("then");
  print("go to ksba streat");
  print("ask about new manga ");
}
