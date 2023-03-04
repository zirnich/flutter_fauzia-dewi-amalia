void main() async {
  List<int> list_data = [2, 3, 4];
  int pengali = 2;
  print(list_data);
  await kali(list_data, pengali);
}

Future<void> kali(list_data, int pengali) async {
  await Future.delayed(Duration(seconds: 1), () {
    for (int list_data in list_data) {
      print('${list_data * pengali}');
    }
  });
}
