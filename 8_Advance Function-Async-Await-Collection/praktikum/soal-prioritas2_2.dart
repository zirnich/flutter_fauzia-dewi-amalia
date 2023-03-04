void main() {
  List<int> num = [4, 8, 9, 5, 6, 7];
  int sum = 0;
  for (int i = 0; i < num.length; i++) {
    sum += num[i];
  }
  print((sum / 6).ceil());
}
