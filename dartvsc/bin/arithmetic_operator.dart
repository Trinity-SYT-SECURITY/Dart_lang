void main() {
  var m = 25;
  var n = 4;
  print("m+n - ${m + n}"); //加法 29
  print("++m - ${++m}"); //++m 是前置遞增運算符，先執行遞增操作，然後返回遞增後的值。26
  print("m++ - ${m++}"); //m++ 是後置遞增運算符，先返回當前值，然後再執行遞增操作。26
/*
++m
int m = 5;
int result = ++m;
print(result); // 输出: 6 -->程式輸出時會以這裡結果輸出
print(m); // 输出: 6

m++
int m = 5;
int result = m++;
print(result); // 输出: 5-->程式輸出時會以這裡結果輸出
print(m); // 输出: 6

*/
  print("--m - ${--m}"); //--m 是前置遞減運算符，先執行遞減操作，然後返回遞減後的值。26
  print("m-- - ${m--}"); //m-- 是後置遞減運算符，先返回當前值，然後再執行遞減操作。26

/*
--m
int m = 5;
int result = --m;
print(result); // 输出: 4-->程式輸出時會以這裡結果輸出
print(m); // 输出: 4

m--
int m = 5;
int result = m--;
print(result); // 输出: 5-->程式輸出時會以這裡結果輸出
print(m); // 输出: 4

*/
  print("m-n - ${m - n}"); //減法21
  print("m/n - ${m / n}"); //除法,取商到小數點6.25
  print("m*n - ${m * n}"); //乘法100
  print("m%n - ${m % n}"); //取餘數1
  print("m~/n - ${m ~/ n}"); //除法,取商不取小數6
}
