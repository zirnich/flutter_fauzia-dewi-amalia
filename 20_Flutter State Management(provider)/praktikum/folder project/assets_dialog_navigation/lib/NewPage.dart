import 'dart:io';

import 'package:flutter/material.dart';

class newPage extends StatelessWidget {

  const newPage({Key? key, required String image,}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final parameter = ModalRoute.of(context)!.settings.arguments as String;
    return Scaffold(
      appBar: AppBar(
        title: Text('Home Studio and Guitar'),
        backgroundColor: Color.fromARGB(83, 15, 122, 180),
      ),
      body: Column(
            children: [
              Image.asset(parameter),
            ],
      ),
    );
  }
}
