import 'dart:io';

import 'package:assets_dialog_navigation/NewPage.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:assets_dialog_navigation/gambar.dart' as gambar_st;

import 'home.dart';
import 'tambahgambar.dart';

void main() {
  runApp(MultiProvider(providers: [
    ChangeNotifierProvider(
        create: (_) =>gambar_st.GambarProvider()),
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
      title: 'Flutter Demo',
      theme: ThemeData(
                primarySwatch: Colors.blue,
      ),
      initialRoute: '/',
      onGenerateRoute: (settings) {
        if (settings.name == "/newpage") {
          final String parameter = settings.arguments as String;
          return PageRouteBuilder(
              settings: settings, // Pass this to make popUntil(), pushNamedAndRemoveUntil(), works
              pageBuilder: (_, __, ___) => newPage(image: parameter),
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
        '/': (_) => const MyHomePage(),
        '/tambah_gambar' : (_) => const TambahGambar(),
      },
    );
  }
}


