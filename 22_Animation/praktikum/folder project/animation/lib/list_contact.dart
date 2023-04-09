import 'package:flutter/material.dart';

import 'create_contact.dart';
import 'update_contact.dart';

class ListContact extends StatefulWidget {
  const ListContact({Key? key}) : super(key: key);

  @override
  State<ListContact> createState() => _ListContactState();
}

class _ListContactState extends State<ListContact> {

  final titles = [
    "Leanne Graham",
    "Ervin Howell",
    "Clementine Bauch",

    ];
  final subtitles = [
    "1-770-736-8031 x56442",
    "010-692-6593 x09125",
    "1-463-123-4447",
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(

        title: Text("List Contact"),
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
              trailing: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  IconButton(
                      onPressed: () => Navigator.of(context).push(
                        PageRouteBuilder(
                            pageBuilder: (context, animation, secondaryAnimation){
                              return const  UpdateContact();
                            },
                          transitionsBuilder: (context, animation, secondaryAnimation, child){
                              final tween = Tween(begin: const Offset(0, 0.5), end: Offset.zero);

                              return SlideTransition(position: animation.drive(tween),
                              child: child,
                              );
                          },
                        ),
                      ),
                      icon:Icon(Icons.edit_outlined,
                      color: Colors.black,)
                  ),
                  IconButton(
                      onPressed: (){

                      },
                      icon:Icon(Icons.delete,
                    color: Colors.black,)
                  ),
                ],
              ),
            ),
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.of(context).pushNamed('/createcontact');
        },
        child: const Icon(Icons.add),
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
