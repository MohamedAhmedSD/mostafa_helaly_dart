// ignore_for_file: public_member_api_docs, sort_constructors_first
//! as parent == super class, child => sub class
//* sub class take 100% its parent content
//* class subclass extends superclass{}

class Animal {
  int limbs = 4;

  void eat() {
    print("eat");
  }

  void walk() {
    print("walk");
  }
}

class Cat extends Animal {
  void eat() {
    print("Cat eats");
  }

  //* what new
  void meuo() {
    print("meuo");
  }
}

//! ======= sub class may be super class for another classes
//* here if we have same method on Cat and Animal
//* we use that of Cat
class Hindicat extends Cat {
  void dance() {
    print("dance");
  }
}

class Dog extends Animal {
  //! ======== override =================
  //* when we need to take same attributes or methods from super class
  //* to modify them with new value or codes
  //* we may not write @override => but better use it

  //*==========================================
  @override
  int limbs = 8;
  @override
  void eat() {
    print("dog eat");
  }
  //*============================

  void park() {
    print("parking");
  }
}

void main() {
  Hindicat hindi = Hindicat();
  //* Hindicat
  hindi.dance();
  //* Cat
  hindi.meuo();
  //* Animal
  hindi.eat();
  hindi.walk();
  print(hindi.limbs);
  print("============================");
  FottballPlayer messi = FottballPlayer(country: "Arg", hairColor: "black");
  print(messi.hairColor);
  print("============================");
  Dog lucky = Dog();
  print(lucky.limbs);
  lucky.eat();
  lucky.park();

  //! ============= every class extends from Oject =====
  //* so we can use object methos as toString()....
  //* inside our classess
  //* also we can use Object as T generic type
  List<Object> object = [Dog(), Animal(), lucky, hindi];
  object.length;
}

//! how we make super constructor && why we need it

class Human {
  String? name;
  String? hairColor;
  int? numberOfHands;
  //* we need make constructour of parent at first
  //* to call it by => :super() , on its sub class
  //* when want call its attribute inside another constructor
  Human({
    this.name,
    this.hairColor,
    this.numberOfHands,
  });
}

class FottballPlayer extends Human {
  String? teamName;
  String? country;
  //! not add as attribute => but on our constructor
  String? hairColor;
  FottballPlayer({
    this.teamName,
    this.country,
    //* how we add our parent class attribute here
    //? 1. make same attribute here
    this.hairColor,
  }) :
        //? 2. call our parent class => :super(choose any attribute we need them)
        super(hairColor: hairColor); //? assign sub to parent attribute

  void run() {
    print("Ankra messi .........");
  }
}
