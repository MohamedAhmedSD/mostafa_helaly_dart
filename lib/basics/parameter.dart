void main() {
  //* call our void function
  //* need enter there parameter
  sum(10, 20);
  //! what we see it => from print => put we cann't make an operation on it
  //! our assign it into variable
  //! double d = sum(10,20);
  print("=========================================");

  //* so we use function that back certain data type
  //* it should use return
  //* because they use return => we kan make an operation on them or
  //* assign them into variables
  sumAndReturn(10, 20); //! not appear any thing on output => no print
  double result = sumAndReturn(10, 20);
  print(result);
}

//* void not back data to make operation on it, but can display it with print
//* scope make our need to parameter, we cann't take variables from equal our lawer
void sum(double a, double b) {
  print(a + b);
}

double sumAndReturn(double a, double b) {
  return a + b;
}
