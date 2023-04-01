import 'package:flutter/material.dart';

class newPage extends StatelessWidget {
  const newPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home Studio and Guitar'),
        backgroundColor: Color.fromARGB(83, 15, 122, 180),
      ),
      body: Column(
            children: [
              Image.asset('assets/p1.jpg'),
              SizedBox(height: 20,),
              Center(
                child: Text('The guitar is a fretted musical instrument '
                    ),
              ),
              Center(
                child: Text('that typically has six strings. '
                ),
              )
            ],
      ),
    );
  }
}
