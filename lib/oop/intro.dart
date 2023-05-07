// ignore_for_file: public_member_api_docs, sort_constructors_first
//* to deal with object => we need define its class and its attributes
//? الكائن له نوع ينحدر منه ومميزات وخصائص ووظائف تميزه
//* to make code more bigger and easy deal with data

//?============== final && const =========
//* final on run time => can wait till call it
//* const => compile time => write its value immediatly,
//* not wait to get its value from any where, or enter by user input
//* so use it on mathmatical rules for example => pi value
//* both final && const => we cann't modify them after assign them value

//?====== Steps to make it =============
//* 1. make its class
class Human {
  //* 2. attributes == class variable == should be initialized
  //* may make it late, or give it deault value, or ????
  late int age;
  String? name;
  int numberOfLegs = 2;

  //! constructor is found by default, and use it when we need make an object
  //? it is a method, its name same to class name, start with capital
  //* how we write it

  //* 1. if we write it we need to assign value to attribute when make an object
  // Human(String? name2, int? age, [int numberOfLegs = 2]) {
  //   //? this.classAttribute = constructorAttribute
  //   this.name = name2;
  //   this.age = age!;
  //   this.numberOfLegs = numberOfLegs;
  // }

  //* 2 . named is better
  //  Human({String? name2, int? age, int numberOfLegs = 2}) {
  //   //? this.classAttribute = constructorAttribute
  //   this.name = name2;
  //   this.age = age!;
  //   this.numberOfLegs = numberOfLegs;
  // }
  //* 3. if we write it we need to assign value to attribute when make an object
  //! short way use this immediatly
  Human({
    required this.age,
    this.name,
    required this.numberOfLegs,
  });
}

void main() {
  //* make an object from class Human == take all class attributes && methods
  // Human btoo = Human();
  // Human btoo = Human("ali", 2);
  // Human btoo = Human(age: 2,name2: "ali");
  //! enter required aattributes
  Human btoo = Human(age: 5, numberOfLegs: 2);

  //* access [.] to class attributes, and make unique copy from it to btoo
  btoo.age = 20;
  btoo.name = "btoo";
  print(btoo); //! Instance of 'Human' => access[.] to see what inside
  print(btoo.name);
  print(btoo.age);
  print(btoo.numberOfLegs);
  //? ==========================================
  print("=================================");
  Student ali = Student();
  ali.score = 50;
  // Student ahmed = Student.failed(className: "A", score: 30, pass: true); //! pass != true
  //* you cann't write pass on your constructor
  //* but we can get its default value
  Student ahmed = Student.failed(
    className: "A",
    score: 30,
  );
  print(ahmed.score);
  print(ahmed.pass);
  //* access by object our methods
  ahmed.read(); //! don't forget use () at end of function
  //? ==========================================
  print("=================================");
  // StudentWithFinal hind = StudentWithFinal();
  // hind.className = "A"; //! we can't used as setter == final ?? no way to modify them

  //* so to give value for final attribute => give value inside a constructor
  StudentWithFinal hind = StudentWithFinal(className: "A");
  print(hind.className);
}

class Student {
  String? name;
  String? className;
  int? score;
  bool? pass;
  Student({
    this.name,
    this.className,
    this.score,
    this.pass,
  });

  //* named constructor => to write different things from clas => add or delete
  Student.failed({
    this.name,
    this.className,
    this.score,
  }) {
    //! look how and where we write pass => now cann't write its pass true
    this.pass = false;
  }

  Student.pass({
    this.score,
    this.pass = true,
  });

  //* add methods
  void read() {
    print("student read a story");
  }
}

class StudentWithFinal {
  //* when we need fixed value => no way to modify first value => use final
  final String? name;
  final String? className;
  final int? score;
  final bool? pass;
  StudentWithFinal({
    this.name,
    this.className,
    this.score,
    this.pass,
  });
}
