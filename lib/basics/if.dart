import 'dart:io';

void main() {
  print("==============[if]==========================");

  print("What do you think is my favourute color?\n(red,yellow,green)?");
  //! make if condition, according answer enter by user

  //* rnsure all answer will be lowerCase
  String answer = stdin.readLineSync()!.toLowerCase();

  if (answer == "red") {
    print(" right answer, you get it.");
  } else if (answer == "yellow") {
    print("wrong, but you near to get it");
  } else {
    print("wrong answer.try again");
  }
  print("LOL, see you later.");
  print("==============[Nested if 1]==========================");

  //* make simple question app
  print(
      "Who is btoo?\nchoose right number of answer\n(1.my brother,2.my son,3.my friend)");
  String answer1 = stdin.readLineSync()!;
  print("Is 5 > 10\n 1.true, 2.false");
  String answer2 = stdin.readLineSync()!;
  print("What language I studying now?\n(1.Arabic,2.Dart,3.English)");
  String answer3 = stdin.readLineSync()!;

  //* add counter
  int scoreCounter = 0;
  if (answer1 == "1") {
    // scoreCounter += 1;
    scoreCounter++;
    print("You get it.");
  } else {
    print("wrong, read more");
  }
  if (answer2 == "2") {
    scoreCounter++;
    print("You get it.");
  } else {
    print("wrong, read more");
  }
  if (answer3 == "2") {
    scoreCounter++;
    print("You get it.");
  }
  //! === we can remove {} from code if only write one stmt
  else
    print("wrong, read more");

  print("Your final score is ${scoreCounter * 10}/30");

  print("==============[Notes]==========================");
  //* when error on our IDE text editor == compiler erroe
  //* when it on logical, human error == runtime error
}
