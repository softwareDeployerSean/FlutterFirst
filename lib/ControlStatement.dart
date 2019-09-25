void main() {
  int score = 80;
  if (score > 90) {
    print("优秀");
  } else {
    print("菜鸡");
  }
  var list = [1, 2, 3, 4, 5];
  for (int i = 0; i < list.length; i++) {
    print(i);
  }

  for (var i in list) {
    print(i);
  }

  int aa = 5;
  while (aa > 0) {
    print(aa--); //54321
  }
  print("-======$aa====="); //0
  do {
    print(aa++); //0
  } while (aa < 5 && aa > 0); //01234

  var list2 = [1, 2, 3];

  for (int a = 0; a < list2.length; a++) {
    if (a == 1) {
      break;
    }
    print(list2[a]);
  }

  String text = "java";

  switch (text) {
    D:
    case "java":
      break;
    case "kotlin":
      continue D;
    case "dart":
      break;
  }
}
