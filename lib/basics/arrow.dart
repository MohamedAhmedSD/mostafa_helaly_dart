void main() {
  one();

  //* we need use print
  print(two());
  print(three());

  //* use arrow with params
  double result = four(5, 7);
  print(result);
  print("=================================");
  //! ternary operator
  int x;
  int y = 50;
  //* according to y value we determain x value

  //* x =
  //* y > 50 => our condition
  //* ? if condition true => output == value
  //* : if condition false => output == value
  x = y > 0 ? 100 : -100;
  print(x);
  //! we use it alot on flutter => colors, login, activity, style,icons....
}

//* arrow => when body of function contain only one stmt
//* 1. void && print
void one() => print("one");

//* 2. String that return String
String two() => "two";

//* 3. int
int three() => 4;

//* 4. with params
double four(double a, double b) => a + b;
