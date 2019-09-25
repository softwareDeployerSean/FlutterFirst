void main() {
  //变量，可以改变值和类型
  var a;
  print(a);
  a = 5;
  print(a);
  a = "jj";
  print(a);
  var b = 6; //如果声明的时候，已经赋值，则不能改变类型
//   b="5";
  b = 7;
  print(b);
  //final 修饰只能赋值一次的变量
  final c = 8;
//  c=9;
  print(c);
  //constant 修饰常量
  const d = "a";
//  d="c";
  print(d);
}
