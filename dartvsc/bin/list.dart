//Fixed size List:Dart 不支持 Array，它等同於 Dart 中的 Array。列表長度不允許您在運行時更改。
//Growable List：沒有固定長度，列表可以增長並且長度可以改變。

void main() {
  List<int> numbers = List.filled(5, 0);
  print(numbers); // [0, 0, 0, 0, 0]

  List<String> names = List.filled(3, 'John',
      growable: true); //growable 参数影响到列表是否可以自动增长（即是否可以添加或删除元素）。
  print(names); // ['John', 'John', 'John']

  List<bool> flags = List.filled(2, true, growable: false);
  print(flags); // [true, true]

/*
當 growable 參數設置為 true 時，列表是可變的，可以隨時添加或刪除元素。
這意味著你可以使用列表的 add()、insert()、remove() 等方法來修改列表的內容，甚至可以改變列表的長度。
*/

  List<int> numbersgro = List.filled(3, 0, growable: true);
  print(numbersgro); // [0, 0, 0]

  numbersgro[1] = 1;
  print(numbersgro); // [0, 1, 0]

  numbersgro.add(2);
  print(numbersgro); // [0, 1, 0, 2]

  numbersgro.removeAt(0);
  print(numbersgro); // [1, 0, 2] 刪除列表內第一個0

  var listvariable = List<String>.filled(3, "", growable: false);

  listvariable[0] = "one";
  listvariable[1] = "two";
  listvariable[2] = "three";
  //如果您嘗試插入索引大於或等於長度的固定長度，則會拋出錯誤。
  print(listvariable);

  var listvar =
      List<String>.filled(0, "", growable: true); //可增長列表的大小在聲明時未知，並且大小可以在運行時更改

  listvar = ["one", "two", "three"];
  print(listvar);

  List<String> listvaremp = List<String>.empty(growable: true); // []

  listvaremp = ["one", "two", "three"];
  print(
      listvaremp); //將empty 方法與growable 結合使用是true 該List. empty()方法允許您創建具有可增長大小的空列表。

  var listnum1 = [];
  var listnum2 = [1, 2, 3];
//列表變量是用空括號創建的，也稱為空列表文字。列表值在聲明期間初始化或使用列表文字語法為空。
  listnum1 = ["one", "two", "three", "3"];
  listnum2.add(4);
  print(listnum1);
  print(listnum2);
}
