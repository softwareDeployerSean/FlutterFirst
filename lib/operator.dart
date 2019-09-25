void main() {
  //算术运算符  + - * / ~/ %
  //关系运算符
  int a = 3;
  int b = 5;
  print(a > 3);
  print(a == b); // == 判断值是否相等
  var c = "1";
  var d = "1";
  print(c == d);
  //逻辑运算符 ！  &&  ||
  bool e = true;
  print(!e);
  //赋值运算符 =    ??=如果值为Null  则赋值，其实相当于空安全运算符
  var f;
  f ??= a;
  print(f);

  //三目运算符
  var istrue = true;
  var login = istrue ? "a" : "b";
  print(login);
//空安全运算符
  var kk;
  var hh = kk ?? 88;
  print(hh);
}
