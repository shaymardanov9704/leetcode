void main() {
  bool isFascinating(int n) {
    List s = "$n${n * 2}${3 * n}".split("");
    return s.length == 9 && !s.contains("0") && s.toSet().length == 9;
  }

  print(isFascinating(384));
}
