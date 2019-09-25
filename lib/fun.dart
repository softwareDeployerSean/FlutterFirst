void main() {
  text("aaa");
  text1(4);
  print(text2(4));
  choose(18, name: "张三", general: "男人"); //名字可选，加参数必须带上名字
  choose1(25, "lisi", "女人");
  defaultVaule(7);
  var myName = getname; //和kt一样，方法也是一等公民，方法也是对象
  myName("张柏芝");
  Function myName1 = getname;
  myName1("成关系");
  setParmers("你是谁", print);
  //匿名方法
  () {};
  var list = ["1", "2", "3"];
  var list1 = extenertion(list, (tag) {
    return tag * 3;
  });
  print(list1);
  var ff = func();
  ff();
  ff();
  ff();
  ff();
}

int text(String a) {
  //返回值如果是void 可以省略
  print(a);
}

text1(aaa) => print(aaa); //=> 用于只有一行代码块的方法体

text2(b) => 777; //参数类型也可以省略

//可选参数 {}名字可选
choose(int age, {String name, general}) {
  print("他的名字是$name,年龄是$age,性别是$general");
}

//位置可选 可选参数必须在具名参数之后
choose1(int age, [name, gernermal]) {}

//默认参数值 ,只能作用于可选参数身上
void defaultVaule(int age, {name = "王老五", general = "男人"}) {
  print("他的名字是$name,年龄是$age,性别是$general");
}

//方法对象
String getname(name) {
  return "我的名字是$name";
}

setParmers(name, print(comtent)) {
  print(name);
}

List extenertion(List list, String add(tag)) {
  for (int a = 0; a < list.length; a++) {
    list[a] = add(list[a]);
  }
  return list;
}

//闭包,能访问到外部方法的变量，并
func() {
  int count = 0;
  return () {
    print(count++);
  };
}
