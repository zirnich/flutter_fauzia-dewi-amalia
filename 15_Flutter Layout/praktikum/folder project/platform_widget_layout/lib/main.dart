import 'package:flutter/material.dart';

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
      theme: ThemeData.dark(


      ),
      home: const MyHomePage(title: 'MaterialApp'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});



  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  final titles = ["Leanne Graham",
    "Ervin Howell",
    "Clementine Bauch",
    "Patricia Lebsack",
    "Chelsey Dietrich",
    "Mrs. Dennis Schulist",
    "Kurtis Weissnat"];
  final subtitles = [
    "1-770-736-8031 x56442",
    "010-692-6593 x09125",
    "1-463-123-4447",
    "493-170-9623 x156",
    "(254)954-1289",
    "1-477-935-8478 x6430",
    "210.067.6132"
  ];

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(

        title: Text(widget.title),
      ),
      body: ListView.builder(
        itemCount: titles.length,
        itemBuilder: (context, index){
          return Card(
            color: Colors.white,
            child: ListTile(
              textColor: Colors.black,
              title: Text(titles[index]),
              subtitle: Text(subtitles[index]),
              leading: CircleAvatar(
                backgroundColor: Colors.green,
                child: Text(
                  titles[index][0],
                  style: TextStyle(color: Colors.white,fontSize: 20),
                ),
              ),
            ),
          );
        },
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings),
            label: 'Dialog',
          ),
        ],
      ),
      drawer: Drawer(

        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            ListTile(
            ),
            ListTile(
              title: const Text('Home'),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: const Text('Settings'),
              onTap: () {
                Navigator.pop(context);
              },
            ),
          ],
        ),
      ),
       // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
