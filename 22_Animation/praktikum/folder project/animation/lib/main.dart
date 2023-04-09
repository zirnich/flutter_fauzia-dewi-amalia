import 'package:animation/create_contact.dart';
import 'package:flutter/material.dart';

import 'list_contact.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(

        primarySwatch: Colors.blue,
      ),
      initialRoute: '/',
      onGenerateRoute: (settings) {
        if (settings.name == "/createcontact") {
          return PageRouteBuilder(
              settings: settings, // Pass this to make popUntil(), pushNamedAndRemoveUntil(), works
              pageBuilder: (_, __, ___) => CreateContact(),
              transitionsBuilder: (context, animation, secondaryAnimation, child) {
                final tween = Tween(begin: 0.0, end: 1.0);
                return ScaleTransition(
                  scale: animation.drive(tween),
                  child: child,
                );
              }
          );
        }

      },
      routes: {
        '/': (_) => const ListContact(),
      },
    );
  }
}


