//* encapsulation => setter && getter

class Human {
  int? age;
  String? name;
  int numberOfLegs =
      2; //! I delete it from constructor to avoid error, if not need it as required
  int _numberOhHands = 2; //* privite
  //* we need count number of objects
  //! when use int without static => it account only == 1
  //? it deal with copy => Human ali = Human() => ali.num.. == 1
  // int numberOfObjects = 0;
  //! but when we use static => this attribute or method called by class immediatly
  //* no need to make an object to call it
  static int numberOfObjects = 0; //? =>
  Human({
    this.age,
    this.name,
  }) {
    //* it increase every time we create an object
    numberOfObjects++;
  }

  //* make function to display our number of objects
  //* method can be also static
  //! becarful which method you make static and which not
  static void objects_number() {
    print(numberOfObjects);
  }

  //! this method not good to be static
  //* Instance members can't be accessed from a static method
  // static void walk() {
  void walk() {
    print("he is $name");
  }

  set numberOfHands(int num) {
    //* add condition if not true we use default value of attribute
    if (num <= 2 && num >= 0) {
      this._numberOhHands = num;
    } else {
      throw Exception("wrong number not in range 0-2");
    }
  }

  int get numberOfHands {
    return this._numberOhHands;
  }
}

void main() {
  Human ali = Human();
  Human hashim = Human();
  Human khalid = Human(name: "k");
  //! if not static == 1, static == 3
  // ali.objects_number();
  //! if method static => you cann't access through an object, access by class
  Human.objects_number();
  ali.walk();
  //* null ifnut give value to there names
  hashim.walk();
  khalid.walk();
}
