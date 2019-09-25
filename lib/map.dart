void main() {
  var a = {"1": "a", "2": "b"};
  var b = const {1: "1", 2: "2"};
  var c = Map();
  print(a);
  print(a["1"]);
  c.addAll({"a": 1});
  print(c);
  a.forEach(f);
}

void f(String k, String v) {
  print("key:$k Vaule:$v");
}
