//* encapsulation => setter && getter

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

  // void setNumberOfHands(int num) {
  //   //* add condition if not true we use default value of attribute
  //   if (num <= 2 && num >= 0) this._numberOhHands = num;
  // }
  //! change tjem into setter =====================================
  //* just change => [void => set or => void set] ============================
  //? we can use privit name without _ => to our set and get
  //* so we can call them as normal attribute
  // set setNumberOfHands(int num) {
  set numberOfHands(int num) {
    //* add condition if not true we use default value of attribute
    if (num <= 2 && num >= 0) {
      this._numberOhHands = num;
    } else {
      //! make exception throw to user =>=========================
      //? (new) Exception Exception([dynamic message])============

      // Exception ex = Exception("wrong number not in range 0-2");
      // throw ex;

      //? ====== use anonymous object
      //* it used when we not need to use it more than one time
      //* so not assign it into varible, just call it immediatly
      throw Exception("wrong number not in range 0-2");
    }
  }

  //? 2. get method to get your value and it's used later to display it
  //* no params
  //* return classVariables you make set on it
  // int getNumberOfHands() {
  //   return this._numberOhHands;
  // }

  //! change tjem into getter =====================================
  //* 1. one line code
  // int get getNumberOfHands => this._numberOhHands;

  //* 2. multi-lines => no need to () => bring data, no need to enter any data
  //* use {} with return
  //* cann't be void == it back data
  // int get getNumberOfHands {
  int get numberOfHands {
    return this._numberOhHands;
  }
}
