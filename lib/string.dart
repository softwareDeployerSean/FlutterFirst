void main() {
  String a = "a"; //'a'
  String b = """ 我是谁
          是你爹""";
  String c = r"a \n b"; //原始字符，只会打印原始字符串
  int e = 1;
  String d = "e+1=${++e}"; //$字符替换
  String f = "e$e";
  print(b);
  print(c);
  print(d);
  print(f);
  //布尔值
  bool g = false;
  bool ff = true;
}
