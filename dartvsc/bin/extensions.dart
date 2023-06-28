void main() {
  print("43".parseInt());
  print("hello".capitalize());
  Claext obj = Claext('hi');
  obj.out();
  obj.leng();
}

extension NewClass on String {
  //把一些擴展功能寫在這裡面
  int parseInt() {
    return int.parse(this);
  }

  String capitalize() {
    if (isEmpty) {
      return this;
    }
    return this[0].toUpperCase() + substring(1);
    /*
  this[0] 表示當前字符串對象的第一個字符。由於字符串在 Dart 中可以像數組一樣訪問，所以可以使用索引來獲取字符。

  this 指代當前字符串對象，[0] 表示獲取索引為 0 的字符，即第一個字符。

  toUpperCase() 用於將字符轉換為大寫形式。在這裡，將第一個字符轉換為大寫。

  substring(1) 是一個字符串的方法，用於獲取從索引 1 開始的子字符串。在這裡，我們獲取從索引 1 開始的剩餘部分，即去掉了第一個字符的子字符串。

  最後，使用 + 運算符將第一個字符的大寫形式和剩餘部分的子字符串拼接在一起，形成首字母大寫的新字符串。

  綜合起來，這行代碼的作用是將字符串的首字母大寫，並將其與剩餘部分拼接在一起，返回一個新的字符串。

  將字符串 "hello world" 的首字母 "h" 大寫，得到結果 "Hello world"。
    */
  }

  void length() {
    print(length);
  }
}

class Claext {
  // class中不可以用extension

  String mes;
  Claext(this.mes);

  void out() {
    print(mes);
  }

  void leng() {
    print(mes.length);
  }
}
