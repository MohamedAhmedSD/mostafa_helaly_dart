import 'human/human_setter.dart';

void main() {
  Human ali = Human(name: "ali", age: 60);
  //! access its setter and getter
  //* even both setter and getter carry same name of our privit attribute
  //* dart able to determain where we use set and where we use get
  ali.numberOfHands = 1; //! void set numberOfHands(int num)

  var hand = ali.numberOfHands; //!int get numberOfHands

  print(hand);

  try {
    ali.numberOfHands = 7;
  } catch (ex) {
    print(ex);
    //! also we can write code or function
    ali.numberOfHands = 2;
  }
  print(ali.numberOfHands);
}
