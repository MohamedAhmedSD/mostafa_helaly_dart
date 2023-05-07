//? When we need Inforce pogrammer or our sels
//* to override certain methods later, when extend from this class

//! ==== we can not make an object from main class == parent == animal
// Animal animal = Animal();
//! write abstract before class
abstract class Animal {
  int limbs = 4;

  //! === must be empty method => so when we extend from class we should be
  //* override on it
  void eat();
  //! it has a body not need to override
  void eat2(){}

  //! === if method has a code == not empty => no need to override it
  void walk() {
    print("walk");
  }
}

class Cat extends Animal {
  //* what new
  void meuo() {
    print("meuo");
  }

  @override
  void eat() {
    print("Cat eats");
  }
}

//! ======= sub class we fix its parent => Cat
class Hindicat extends Cat {
  void dance() {
    print("dance");
  }
}

class Dog extends Animal {
  @override
  int limbs = 8;

  @override
  void eat() {
    print("dog eat");
  }

  void park() {
    print("parking");
  }
}

void main() {
  Hindicat hindi = Hindicat();
  hindi.eat();
  Dog().eat();
  Cat().eat();
  //! ==== we can not make an object from main class == parent == animal
  // Animal animal = Animal();
}
