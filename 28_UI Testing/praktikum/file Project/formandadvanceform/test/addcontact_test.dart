import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:formandadvanceform/main.dart';
import 'package:formandadvanceform/screen/contact/add_contact.dart';
import 'package:formandadvanceform/screen/contact/contact_screen.dart';

void main() {
  testWidgets('Add Contact', (WidgetTester tester) async {
    // Build our app and trigger a frame.
    await tester.pumpWidget(addContact());



    expect(find.text('Add Contact'), findsOneWidget);
    expect(find.byType(ElevatedButton), findsOneWidget);


  });
}
