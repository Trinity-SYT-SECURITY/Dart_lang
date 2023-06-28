typedef StringList = List<String>; //List<String> 是一種通用的類型註解，用於指定一個包含字符串的列表

StringList printStrings(StringList strs) {
  print(strs); // [one, two, three]
  //不能在函數內部聲明 typedef。 typedef 關鍵字的作用域是局部的，可以在全局作用域或類的作用域內進行聲明，但不可以在函數內部進行聲明。
  return strs;
}

class Number {
  //typedef testnum = List<String>;
  List<String> listnum = ["1", "2"];

  String num1;
  int num2;
  Number(this.num1, this.num2);

  void numnum() {
    StringList strs = ["one", "two", "three", "false"];
    print("$strs $num1 $num2"); //[one, two, three, false] 1 2
  }
}

void main() {
  StringList strs = ["one", "two", "three"];
  //直接使用 List<String> 類型註解來聲明 testnum 成員變量，無需使用 typedef。這樣就可以在類內部表示字符串列表類型。
  print(strs); // [one, two, three]
  Number numn = Number("1", 2); // num1指定了string所以需要"1"不然會報錯
  numn.numnum();
}
