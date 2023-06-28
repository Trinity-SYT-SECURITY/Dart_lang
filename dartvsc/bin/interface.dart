// 定义一个接口
abstract class Vehicle {
  void start(); // 抽象方法
  void stop();
}

/*
在Dart中，抽像類是不能直接實例化的，這意味著你不能直接使用抽像類創建對象。
抽像類僅用作其他類的基類或接口，它提供了一種定義共享行為和屬性的機制，但不能直接使用它來創建對象。

abstract class Animal {
  void makeSound();
}

void main() {
  Animal animal = Animal(); // 错误！不能直接实例化抽象类
}

----
相反，我們應該創建一個繼承自抽像類的具體子類，並在子類中提供抽象方法的具體實現，然後通過子類來實例化對象：

abstract class Animal {
  void makeSound();
}

class Dog extends Animal {
  @override
  void makeSound() {
    print('The dog barks');
  }
}

void main() {
  Dog dog = Dog(); // 正确！通过子类实例化对象
  dog.makeSound(); // 输出: The dog barks
}



 */
// 实现接口的类
class Car implements Vehicle {
  @override
  void start() {
    print('Car starts'); // 非抽象方法
  }

  @override
  void stop() {
    print('Car stops');
  }
}

// 实现接口的类
class Bicycle implements Vehicle {
  @override
  void start() {
    print('Bicycle starts');
  }

  @override
  void stop() {
    print('Bicycle stops');
  }
}

void main() {
  Vehicle car = Car();
  car.start(); // 输出: Car starts
  car.stop(); // 输出: Car stops

  Vehicle bicycle = Bicycle();
  bicycle.start(); // 输出: Bicycle starts
  bicycle.stop(); // 输出: Bicycle stops
}
