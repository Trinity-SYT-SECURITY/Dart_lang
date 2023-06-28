/*
該函數也稱為方法，它接受輸入並執行語句代碼塊序列並返回輸出。

當多個代碼語句想要在不同的地方重複執行時，就會使用和創建函數。

它有助於代碼的可重用性以及邏輯和功能方面代碼的清晰分離。
*/

void main() {
  //void到一個函數意味著它不返回任何東西
  print(multiplication(12, 2)); //24
  printMsg();
  print(getMessage());
  notypefun("帶參數但不帶返回類型的函數");
  printNumbers(10, number2: 20, number3: 1);
  printNumbers2(10, 20);
  printNumbers3(10, 20);
}

void printMsg() {
  print("沒有參數和返回類型的函數");
}

String getMessage() {
  return "不帶參數的函數並返回一個類型";
}

void notypefun(String name) {
  print("Welcome $name");
}

int multiplication(int one, int two) {
  var result = one * two;
  print("帶參數和返回類型的函數");
  return result;
}

void printNumbers(number1,
    {required int number2, int? number3, bool? number4}) {
  print("可選的命名參數");
  print(number1); //10
  print(number2); //20
  print(number3); //1
  print(number4); //null

  //通过在参数类型后面加上 ?，表示该参数可以接受 null 值。
  //或是如果參數類型後面加上？，不賦值不會報錯，賦值了那個數值就為該參數的
  //通過將 required 關鍵字添加到 number2 參數前面，表示該參數是必需的。也就是需要賦值
}

void printNumbers2(number1, [int? number2, int? number3]) {
  //可選參數在方括號內傳遞[]。位置參數根據內部定義的位置和順序進行分配[]
  print("位置可選參數");
  print(number1); //10
  print(number2); //20
  print(number3); //null
}

void printNumbers3(number1, [int? number2, int? number3 = 40]) {
  print("具有默認值的可選參數");
  print(number1); //10
  print(number2); //20
  print(number3); //40
}
