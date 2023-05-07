//* encapsulation
//* final we cann't modify it after assign put here we can modify it

class Human {
  int? age;
  String? name;
  int numberOfLegs =
      2; //! I delete it from constructor to avoid error, if not need it as required
  int _numberOhHands = 2; //* privite
  Human({
    this.age,
    this.name,
  });

  //* to deal with privite && encapsulation attribute
  //? 1. make void method to set your value => access class attribute through => this.classAttribute

  void setNumberOfHands(int num) {
    //* add condition if not true we use default value of attribute
    if (num <= 2 && num >= 0) this._numberOhHands = num;
  }

  //? 2. get method to get your value and it's used later to display it
  //* no params
  //* return classVariables you make set on it
  int getNumberOfHands() {
    return this._numberOhHands;
  }
}
