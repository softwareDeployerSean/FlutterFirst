void main() {
  Person student = Student("张三", "a");
  student.age = 15;
  print(student.doublea);

  D d = D();
  d.drink();
}

class Person {
  String name;
  int age;
  final String general;

  Person(this.age, this.name) : general = "";

  Person.withAge(this.name) : general = "";

  int get doublea {
    return age * 2;
  }

  set doublea(vaf) {}
}

//继承用extends关键字,子类会默认实现父类的无参构造方法，如果父类有有名，有参构造方法，则会实现该构造方法
class Student extends Person {
  final String general;

  Student(String name, String g)
      : general = g,
        super.withAge(name);
}

//抽象类，用abstraci修饰，
abstract class Car {
  drive(); //抽象方法，不用abstract修饰
}

//接口用implements实现，不同的是在dart中，任意类都可以当作接口来使用，会重新接口里面所有的方法和属性
class dazhong extends Car implements jiayou {
  @override
  drive() {}

  @override
  jiayouing() {}
}

//所有的类都可以当作接口类使用；
class jiayou {
  jiayouing() {}
}

//mixins
//其实就是with操作符，有点多继承的味道

class A {
  drink() {
    print("A ...a");
  }
}

class B {
  drink() {
    print("B ...b");
  }
}

class C {
  drink() {
    print("C ...C");
  }
}

class D extends A with B, C {}

//枚举,用于有限个确定的数据

enum Season { Sping, Summer, Autumn, Winner }

//泛型，其实就是一个定义 一个使用 没啥好说的

class Generic<T> {//定义
  T termibal;//使用
  List list = List();

  put(T t) {
    list.add(t);
  }
}
