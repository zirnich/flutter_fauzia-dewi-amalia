import 'dart:io';

import 'package:flutter/material.dart';
import 'package:formandadvanceform/screen/contact/add_contact.dart';
import 'package:formandadvanceform/screen/contact/contact_screen.dart';
import 'package:formandadvanceform/screen/contact/contact_view.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(MultiProvider(providers: [
    ChangeNotifierProvider(
        create: (_) => ContactViewModel()
    ),
  ],
    child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter',
      theme: ThemeData(

        primarySwatch: Colors.blue,
      ),
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      routes: {
        '/': (_) => const ContactScreen(),
        '/addcontact': (_) => const addContact(),
      },
    );
  }
}

