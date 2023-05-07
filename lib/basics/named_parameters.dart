void main() {
  //* 1. you should write value for all params=> 4/4
  // printData(first, second, third, age);

  //* 2. we need only value for 2/4
  // printData(first, second);

  //* 3. 0/4
  printData(); //! back 4 nulls
  printData(age: 7);
}

//* 1. need all of them
// void printData(String first, String second, String third, int age) {

//* 2. optional, last 2 => optional should be on last
//* optional should be => ? at end of its data type => may be null
//* we can add default value for optional only as on age
//* when use degfault => no need to use => ????
// void printData(String first, String second, [String? third, int age = 40]) {

//* 3. named => make every thing optional so
//* we need use => ??? or give default value
void printData({String? first, String? second, String? third, int age = 40}) {
  print(first);
  print(second);
  print(third);
  print(age);
}
