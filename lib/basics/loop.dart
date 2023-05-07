void main() {
  //* loops
  //* [1] for loop =>if I know numbers of repeatation
  //* for like if when write
  //! what is tabnine??? =============
  for (int i = 0; i < 10; i++) {
    print("name $i");
  }
  print("=====================================");
  //* [2] while , do -while => loop according certain condition
  bool isUserActive = false;
  while (isUserActive) {
    //* condition
    print("Active");
  }
  print("=====================================");
  do {
    print("active2");
  } while (isUserActive);
  //* [3] for in && forEach => go through items inside a list or collections

  //* a. for
  List<String> rappers = ["abusif", "pablo", "2pac", "50cent"];
  for (int i = 0; i < rappers.length; i++) {
    print(rappers[i]);
  }

  //* b. forEach
  //* element == String == List <String> ===========================
  //? try another data type
  rappers.forEach((element) {
    print(element);
  });
  print("===================================");
  //? elemenyt here == int  ====================================
  //! so element data type exchange according List <T generic>
  List<int> nums = [1, 2, 3, 4];
  nums.forEach((element) {
    print(element);
  });
  print("===================================");
  //* c. for in => use var to recive any data type on a list
  for (var name in rappers) {
    print(name);
  }
}
