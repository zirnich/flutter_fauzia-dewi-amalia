import 'package:assets_dialog_navigation/NewPage.dart';
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
      theme: ThemeData(
                primarySwatch: Colors.blue,
      ),
      initialRoute: '/',
      routes: {
        '/': (_) => const MyHomePage(),
        '/newpage' : (_)=> const newPage(),
      },
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, });



  @override
  State<MyHomePage> createState() => _MyHomePageState();

}

class _MyHomePageState extends State<MyHomePage> {
  final List<String> images =[
    'assets/p1.jpg',
    'assets/p2.jpg',
    'assets/p3.jpg',
    'assets/p4.jpg',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(83, 15, 122, 180),
        title: Center(child: Text('Home Studio and Guitar')),
      ),
      body: GridView.builder(
        padding: const EdgeInsets.all(10),
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              crossAxisSpacing: 3,
          ),
          itemCount: images.length,
          itemBuilder: (BuildContext context, int index){
            return GestureDetector(
              onTap: (){
                _bottomsheet(context, images[index]);
              },
              child: Image.asset(images[index]),
            );
          },
      ),
      );
       // This trailing comma makes auto-formatting nicer for build methods.

  }
  void _bottomsheet(BuildContext context, String image){
    showModalBottomSheet(
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(
          top: Radius.circular(20),
        )
      ),
        context: context,
        builder: (context) => Padding(
          padding: const EdgeInsets.all(25),
          child: Column(
            children: [
              GestureDetector(
                onTap: (){
                  _dialog(context, image);
                },
                child: Image.asset(image),
              ),
              SizedBox(height: 15,),
              Center(child: Text('Guitar Style')),
            ],
          ),
        ),
    );
  }

  void _dialog (BuildContext context, String image){
    showDialog(
        context: context,
        builder: (context){
          return AlertDialog(
            content: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Text('Menuju Halaman Baru'),
                SizedBox(height: 5),
                Image.asset(image),
                SizedBox(height: 10),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    TextButton(
                        onPressed: (){
                          Navigator.of(context)
                              .pushNamed('/newpage');
                        },
                        child: Text('Ya')
                    ),
                    TextButton(
                        onPressed: ()=> Navigator.of(context).pop(),
                        child: Text('Tidak')
                    ),
                  ],
                )
              ],
            ),
          );
        }
      );
  }
}
