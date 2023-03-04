void main() {
  List<List<dynamic>> nama = [
    ['fauzia', 6],
    ['amalia', 4],
  ];

  Map<int, List<dynamic>> noMap = Map.fromIterable(
    nama,
    key: (list) => nama.indexOf(list),
    value: (list) => list,
  );

  print(noMap);
}
