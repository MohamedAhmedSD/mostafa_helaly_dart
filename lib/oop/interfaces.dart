//? When we need Inforce pogrammer or our sels
//* to override every thing inside parent class
//* we use implements super class => so our sub should override wvery thing

//! don't write abstract before class
class Animal {
  int limbs = 4;

  //* it has a body
  void eat() {}
  void walk() {
    print("walk");
  }
}

//! implements
class Cat implements Animal {
  //* what new
  void meuo() {
    print("meuo");
  }

  @override
  void eat() {
    print("Cat eats");
  }

  @override
  int limbs = 5;
  //* or => make also parent ???
  // int? limbs;

  @override
  void walk() {
    print("walk");
  }
}

void main() {
  Cat cat = Cat();
  cat.eat();

  //! not as abstract => it can make an object from parent
  Animal animal = Animal();
  animal.eat();
  print(animal.limbs);
}
