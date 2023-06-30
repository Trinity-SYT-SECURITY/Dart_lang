//mixin 是 Dart 中一種用於代碼重用和組合的機制。它允許將一組方法和屬性混入到類中，以擴展類的功能，而無需使用繼承。
// 使用 implements 实现代码复用
abstract class Shape {
  void draw();
}

class Circle implements Shape {
  @override
  void draw() {
    print('Drawing a circle');
  }
}

class Rectangle implements Shape {
  @override
  void draw() {
    print('Drawing a rectangle');
  }
}

// 使用 mixin 实现代码复用
mixin Logging {
  void log(String message) {
    print('Logging: $message');
  }
}

mixin Authorization {
  bool checkAccess() {
    print('Checking access');
    // 这里可以包含具体的授权逻辑
    return true;
  }
}

class DatabaseService with Logging, Authorization {
  //DatabaseService 無法混入 Shape 是因為混入（mixin）的關係是用來在類之間共享和復用代碼的，而不是用來實現類似繼承的行為。
  void saveData(String data) {
    if (checkAccess()) {
      log('Saving data: $data');
      // 执行保存数据的操作
    } else {
      print('Access denied');
    }
  }
}

/*
混入通常用於在類中引入額外的功能或特性，而不是用來擴展類的繼承關係。
混入類不會影響類的繼承鏈，它只是通過將自己的方法和屬性混入到其他類中來實現代碼復用。
*/
void main() {
  // 使用 implements 实现代码复用
  final circle = Circle();
  circle.draw(); // 输出: Drawing a circle

  final rectangle = Rectangle();
  rectangle.draw(); // 输出: Drawing a rectangle

  // 使用 mixin 实现代码复用
  final databaseService = DatabaseService();
  databaseService.saveData(
      'Some data'); // 输出: Checking access, Logging: Saving data: Some data
}
