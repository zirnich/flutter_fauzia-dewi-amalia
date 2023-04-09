import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'gambar.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, });

  @override
  State<MyHomePage> createState() => _MyHomePageState();

}

class _MyHomePageState extends State<MyHomePage> {

  @override
  Widget build(BuildContext context) {
    GambarProvider gambarProvider = Provider.of<GambarProvider>(context);
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
            itemCount: gambarProvider.imgs.length,
            itemBuilder: (BuildContext context, int index){
              return GestureDetector(
                onTap: (){
                  Navigator.of(context)
                      .pushNamed(
                    '/newpage',arguments: gambarProvider.imgs[index],);
                },
                child: Image.asset(gambarProvider.imgs[index]),
              );
            },
          ),
      floatingActionButton: FloatingActionButton(
          onPressed: () => Navigator.of(context)
              .pushNamed('/tambah_gambar'),
        child: const Icon(Icons.add),
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