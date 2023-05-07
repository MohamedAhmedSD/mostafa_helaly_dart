void main() {
  //* dynamic == weak variable
  //? we use it when we don't know type of data type we will recived
  //* var keyword => our big box that contain all data types
  //? when assign any datatype to it we cann't change it's type later
  //! and that different between it and dynamin
  var name = "ali";
  // name = 10; //! error
  dynamic name2 = "ali";
  name2 = 10;
}
