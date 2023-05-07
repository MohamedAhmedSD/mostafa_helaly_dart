void main() {
  //* ===== List [] =================
  //! any list without <data type> => week == dynamic ====
  //* collections save time minimum efforts when deal with data

  List<String> rappers = ["abusif", "pablo"];
  print(rappers);
  rappers.add("wegz");
  print(rappers);
  rappers.remove("pablo");
  print(rappers);
  print(rappers[0]);
  print("==============================");

  //* ===== Set {} =================
  //? we save only unique value, no way to repeat data => only once
  //! any set without <data type> => week == dynamic ====
  //* collections save time minimum efforts when deal with data

  Set<String> rappersSet = {"abusif", "pablo", "2pac", "50cent"};
  print(rappersSet);
  rappersSet.add("wegz");
  print(rappersSet);
  rappersSet.remove("pablo");
  print(rappersSet);
  //! how we can reach to it's certain value
  // print(rappersSet[0]);
  //* convert it first into list then access to certain value
  //* [1] if you want do it for once time
  print(rappersSet.toList()[0]);

  //* [2] we need access alot of time => make new list first
  //? we make it from set collection
  List<String> rapperes2 = rappersSet.toList();
  print(rapperes2[0]);
  print(rapperes2[1]);
  print(rapperes2[2]);
  print("==============================");

  //* ===== Map {} , key : value =================
  Map<String, String> employee = {
    "name": "ali",
    "phone": "09876",
    "degree": "88"
  };
  print(employee);
  print(employee["name"]);
  print(employee["phone"]);
  print(employee["degree"]);
}
