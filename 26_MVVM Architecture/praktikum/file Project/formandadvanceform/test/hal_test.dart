import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:formandadvanceform/screen/contact/detail_contact.dart';


void main() {
  testWidgets('Detail Contact', (WidgetTester tester) async {
    // Build our app and trigger a frame.
    await tester.pumpWidget(DetailContact());


    expect(find.text('Detail Contact'), findsOneWidget);


  });
}
