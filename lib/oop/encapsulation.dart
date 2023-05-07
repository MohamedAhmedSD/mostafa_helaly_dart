import 'human/human_encapsulation.dart';
//* غلف الكود مع وجود طريقة معينه للوصول الى الكود للتعديل عليه والتحكم به
//* when call final attributes from constuctor we cann't modify them later??

class StudentWithFinal {
  //* when we need fixed value => no way to modify first value => use final
  final String? name;
  final String? className;
  //! if we write late before final => we can modify its value many times !!!!
  //! but when run give us error if try run a code => init once only
  late final int? score;
  late final bool? pass;
  StudentWithFinal({
    this.name,
    this.className,
    this.score,
    this.pass,
  });
}

// class Human {
//   int? age;
//   String? name;
//   int numberOfLegs =
//       2; //! I delete it from constructor to avoid error, if not need it as required
//   int _numberOhHands = 2; //* privite
//   Human({
//     this.age,
//     this.name,
//   });
// }

void main() {
  StudentWithFinal ali =
      // StudentWithFinal(className: "A", pass: true, name: "ali", score: 70);
      StudentWithFinal(className: "A", pass: true, name: "ali");
  //* when call final attributes from constuctor we cann't modify them later??
  //! we can't used as setter == final ?? no way to modify them
  //? error ========
  // ali.score = 80;
  // print(ali.score);
  //?==================
  Human btoo = Human(
    //* (new) Human Human({int? age, String? name})
    //* we cann't see privit && that what delete from constructor

    age: 20,
    name: "btoo",
  );
  //* what we delete from constructor
  var legs = btoo.numberOfLegs = 5;
  print(legs);

  //! how we access privite attribute in certain class with certain values
  //* privite only see inside its class
  // var hands = btoo._numberOfHands = 4;  //! we cann't see privit like this
  // print(hands);

  //* we access privite through methods
  //! => 2 == default => out range
  var hand8 = btoo.setNumberOfHands(8);
  print(btoo.getNumberOfHands());
  //! 1 => in range => 0 - 2
  var hand1 = btoo.setNumberOfHands(1);
  print(btoo.getNumberOfHands());
  //! 1 => why not 2 => last true value on range was == 1 so it become as default
  var newhand = btoo.setNumberOfHands(8);
  print(btoo.getNumberOfHands());
  //+++++=====================================
  print("===============================");
  //* default will be => 2
  var hand2 = btoo.setNumberOfHands(2);
  print(btoo.getNumberOfHands());
  //! ===> 2
  var newhand2 = btoo.setNumberOfHands(8);
  print(btoo.getNumberOfHands());
}
