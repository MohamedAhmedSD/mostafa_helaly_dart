void main() {
  //* double
  // double x = 5, y = 0;
  // double result = x / y;  //! => Infinity

  //* int
  //? ~/ => change it into nearest number
  int x = 5, y = 0;
  // int result = x ~/ y; //! Unhandled exception => IntegerDivisionByZeroException
  int result; //! Unhandled exception => IntegerDivisionByZeroException

  try {
    result = x ~/ y;
  }
  //! if I want custom certain exception with certain code
  on IntegerDivisionByZeroException {
    print("cann't divide by zero");
  } catch (e) {
    print(e);
  }
  // print("result : $result");
  print("data come...");

  // List<int> nums = [1, 2, 3, 4];
  // //! Unhandled exception: =>
  // //! RangeError (index): Invalid value: Not in inclusive range 0..3: 20
  // print(nums[20]);

  //? we use it alot with internet connection
}
