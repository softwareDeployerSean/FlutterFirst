void main() {
  Person p = new Person(); //关键字new可以省略
  p.work();
  Range range = Range();
  range.area = 200;
  print(range.width);
  var student = Student("xiaowang", 14, "nan");
  Student student1 = Student.withAge(15, "nv");

  const animal = const Animal(8, "black");
  //对象操作符
  //空安全操作符，？.  类型转换 as ,类型判断  is is!  级联操作符..
  animal?.age;
  animal as Animal;
  animal is Animal;
  animal is! String;
  Dog()
    ..age = 5
    ..voice = "wangwang"; //很强，这个级联操作符，很牛逼

  Pig pig = Pig();
  pig("aa");
}

class Person {
  //用class声明类 _声明私有的
  String name;
  int age;

  work() {
    print("名字是$name,年龄是$age的人在工作");
  }
}

class Range {
  num height, width;

  num get area {
    //计算属性，通过计算之后给属性赋值；
    return height * width;
  }

  set area(value) {
    width = value / 20;
  }
}

//构造方法
class Student {
  String name;
  int age;
  final String general;

  /* Student(String name, int age) {
    this.age = age;
    this.name = name;
  }*/

  Student(this.name, this.age,
      this.general); //语法糖的构造方法，用这种方式，可以给final的变量赋值，已经给属性赋值；

  Student.withName(this.name, this.general); //用于多个构造方法的写法，dart语言，构造方法不能被重写
  Student.withAge(int age, this.general) {
    this.age = age;
  }
}

//常量构造方法

class Animal {
  final String color;
  final int age;

  const Animal(this.age, this.color); //常量构造方法用const修饰构造方法，属性必须为final
}

//工厂构造方法：用factory修饰，可以返回对象，链式调用
class Dog {
  int age;
  String voice;

  Dog() {}

  factory Dog.WithAgeV(int age, String voice) {
    return Dog.withAge(age);
  }

  Dog.withAge(this.age);
}

//初始化列表，主要用于初始化final的属性
class Cat {
  final String name;
  final int age;

  Cat(String name, int age) //用于初始化final的属性，会在执行构造方法之前执行；
      : name = name,
        age = age {}
}

//用static 修饰静态成员  类里面的常量，要用static const 修饰；

//对象操作符

//实现对象的call方法，可以把对象当成方法使用

class Pig {
  call(String name) {
    print("我的名字是$name");
  }

  setAge() {}
}
















