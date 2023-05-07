//! in dart we cann't use muti_inheitance from class
//* but we use multi mixins
//? create as => mixin Name{}
//* when we use multi mixins with same method we apply
//* method of mixin on most right side
//? to call them we use => with so => M/W
//* mixins use to add methods we cann't used on our parent
//? as isPet => some animales are pet and some are not
////* so etter use mixin with only that are a Pet

class Animal {
  int limbs = 4;

  void eat() {
    print("eat");
  }

  void walk() {
    print("walk");
  }
}

//* add mixins, and which method apply, Pet1 or Pet2
class Cat extends Animal with Pet, Pet2 {
  void eat() {
    print("Cat eats");
  }

  //* what new
  void meuo() {
    print("meuo");
  }
}

mixin Pet {
  void is_Apet() {
    print("Pet 1");
  }
}
mixin Pet2 {
  void is_Apet() {
    print("Pet 2");
  }
}

void main() {
  Cat cat = Cat();
  cat.is_Apet();
}
