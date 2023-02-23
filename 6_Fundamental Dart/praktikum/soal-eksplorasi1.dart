void main() {
  String str = "radar";
  String rs = "";
  String br = str;
  for (int p = str.length - 1; p >= 0; p--) {
    rs += str[p];
  }
  if (br == rs) {
    print("Palindrome");
  } else {
    print(" not Palindrome");
  }
}
