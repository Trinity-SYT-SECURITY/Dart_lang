library security;

/*
final String rolecode; 表示在 Role 類中定義了一個名為 rolecode 的不可變（只讀）的字符串類型屬性。

關於 final 關鍵字的含義：

final 用於聲明一個只能被賦值一次的變量（或屬性）。
在 Dart 中，final 變量的值在運行時確定，並且一旦被賦值後就不能再改變。

final 變量可以在聲明時進行初始化，也可以在構造函數中進行初始化。

*/
class Role {
  final String
      rolecode; //final String rolecode; 聲明了一個名為 rolecode 的 final 屬性，它是一個字符串類型的變量。
//這意味著在創建 Role 對象時，可以為 rolecode 屬性賦予一個初始值，並且之後不能再修改它的值。

  final String rolename;

  const Role(this.rolecode, this.rolename);
}

@Role('ADMIN',
    'ADMINISTRATOR') //註解來標記 isAdminGranted 方法。然而，在 Dart 中，並沒有內置的註解來直接表示角色授權的功能。
void isAdminGranted() {
  print('administrator granted');
}

void main() {
  final Role role = Role('ADMIN', 'meow');
  print(role.rolecode); // 输出：ADMIN
  print(role.rolename);
  isAdminGranted(); //administrator granted

  // 错误！不能再修改 final 属性的值
  // role.rolecode = 'USER';
}
