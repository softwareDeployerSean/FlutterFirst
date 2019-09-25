void main() {
  List a = [1, "a", false, "dart"]; //dart里面 list和数组是一样的概念
  a[0] = 2;
  List b = const [0, 1]; //常量集合，不能被改变
  List c = new List();
  c.add("aaa");
  a.insert(0, 1);
  a.forEach(print);
  print(a);
  a.sort();
  print(a);

  var list=List<dynamic>();//dynamic 动态类型
  list.add(4);
  list.add("aaa");
  print(list);

  dynamic vv;
  vv=7;
  vv="a";





}
