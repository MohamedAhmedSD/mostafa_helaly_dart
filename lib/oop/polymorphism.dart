//? تعدد الاشكال

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
  //* what new
  void meuo() {
    print("meuo");
  }
}

//! ======= sub class may be super class for another classes
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
  //* we can use PM when use super class and its sub classes on same place
  //* as list<super class> = [super,sub,sub-sub-sub]
  //* list item may anonymous object our known object
  //*=================
  Hindicat hindi = Hindicat(); //? known object
  List<Animal> myPet = [Animal(), Dog(), hindi, Cat()];
  print(
      myPet); //! [Instance of 'Animal', Instance of 'Dog', Instance of 'Hindicat', Instance of 'Cat']

  print(myPet[0]); //* Instance of 'Animal'
  print(myPet[0].limbs); //* 4
  // print(myPet[0].eat()); //! Error: This expression has type 'void' and can't be used
  myPet[0].eat();
}
