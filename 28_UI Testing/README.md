# UI Testing

pengujian yang dilakukan pada tampilan suatu aplikasi untuk memastikan aplikasi dapat menerima interaksi dan memberi respon kepada pengguna

#### UI Testing di Flutter
disebut juga widget testing sehingga pengujian dilakukan pada widget dengan menuliskan script yang dapat dijalankan secara otomatis

#### Keungulan UI Testing
- memastikan seluruh widget memberi tampilan yang sesuai
- memastikan seluruh interaksi dapat diterima dengan baik
- menjadi ketentuan yang harus diikuti saat dipelukan perubahan pada widget 

#### Penulisan Script Testing
folder test
```
test 
    about_test.dart
    contact_test.dart
    widget_tes.dart
```

#### Penulisan Script Testing
tiap file fungsi main() 
```
void main() {
  testWidgets('......', (WidgetTester tester) async {
    
  });
}
```

##### Script Testing
Test case diawali dengan testWidgets dan diberi judul 
```
void main() {
  testWidgets('List Contact', (WidgetTester tester) async {
    // Build our app and trigger a frame.
    await tester.pumpWidget(const MyApp());



    expect(find.text('List Contact'), findsOneWidget);
    expect(find.widgetWithIcon(FloatingActionButton, Icons.add), findsOneWidget);

    
  });
}
```

