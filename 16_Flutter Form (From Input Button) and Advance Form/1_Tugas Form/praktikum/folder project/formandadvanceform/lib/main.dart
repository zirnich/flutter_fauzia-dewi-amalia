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
      title: 'Flutter',
      theme: ThemeData(

        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Contacts'),
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
  final _formKey = GlobalKey<FormState>();
  final _nameController = TextEditingController();
  final _phoneController = TextEditingController();
  final List<Map<String, String>> _items = [];


  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(widget.title),
        backgroundColor: Colors.deepPurpleAccent,
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 50),
                child: Icon(
                  Icons.phone_android_sharp,
                  color: Colors.grey,
                ),
              ),
              SizedBox(height: 16.0),
              Text(
                'Create New Contacts',
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 24),
              ),
              SizedBox(height: 10),
              Text(
                'A dialog is a type of modal window that appears in',
                textAlign: TextAlign.center,
              ),
              Text(
                'front of app content to provide critical information, or',
                textAlign: TextAlign.center,
              ),
              Text(
                'prompt for a decision to be made.',
                textAlign: TextAlign.center,
              ),
              const Divider(
                thickness: 1,
              ),
              SizedBox(height: 15),
              Form(
                key: _formKey,
                child: Column(
                  children: [
                    TextFormField(
                      controller: _nameController,
                      style: TextStyle(color: Colors.black),
                      decoration: InputDecoration(
                        labelText: 'name',
                        hintText: 'Insert Your Name',
                        border: OutlineInputBorder(),
                        filled: true,
                        fillColor: Color.fromARGB(245, 232, 209, 255),
                      ),
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Nama harus diisi';
                        }
                        return null;
                      },
                    ),
                    SizedBox(height: 16.0),
                    TextFormField(
                      controller: _phoneController,
                      keyboardType: TextInputType.phone,
                      decoration: InputDecoration(
                        labelText: 'Nomor Telepon',
                        hintText: '+62....',
                        filled: true,
                        fillColor: Color.fromARGB(245, 232, 209, 255),

                      ),
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Nomor telepon harus diisi';
                        }
                        return null;
                      },
                    ),
                    SizedBox(height: 20),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        ElevatedButton(
                          onPressed: () {
                            if (_formKey.currentState!.validate()) {
                              // validasi sukses, tambahkan item ke daftar
                              String name = _nameController.text;
                              String phone = _phoneController.text;
                              setState(() {
                                _items.add({'name': name, 'phone': phone});
                              });
                              // reset form
                              _nameController.clear();
                              _phoneController.clear();
                            }
                          },
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.deepPurpleAccent,
                            shape: StadiumBorder(),
                          ),
                          child: Text('Submit'),

                        ),
                      ],
                    ),
                  ],
                ),
              ),
              SizedBox(height: 32.0),
              Text(
                'List Contacts',
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 20),
              ),
              ListView.builder(
                shrinkWrap: true,
                physics: ClampingScrollPhysics(),
                itemCount: _items.length,
                itemBuilder: (context, index) {
                  return ListTile(
                    leading: CircleAvatar(
                      backgroundColor: Color.fromARGB(245, 232, 209, 255),
                      child: Text(_items[index]['name']![0],
                        style: TextStyle(color: Colors.black,fontSize: 20)),
                    ),
                    title: Text(_items[index]['name']!),
                    subtitle: Text(_items[index]['phone']!),
                    trailing: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        IconButton(
                          onPressed: () {
                            // edit item
                            String name = _items[index]['name']!;
                            String phone = _items[index]['phone']!;
                            showDialog(
                              context: context,
                              builder: (context) {
                                return AlertDialog(
                                  title: Text('Edit Item'),
                                  content: Column(
                                    mainAxisSize: MainAxisSize.min,
                                    children: [
                                      Text('Name: $name'),
                                      TextField(
                                        decoration: InputDecoration(
                                          labelText: 'Phone',
                                          hintText: phone,
                                        ),
                                        onChanged: (value) {
                                          phone = value;
                                        },
                                      ),
                                    ],
                                  ),
                                  actions: [
                                    TextButton(
                                      onPressed: () {
                                        // update item
                                        setState(() {
                                          _items[index]['phone'] = phone;
                                        });
                                        Navigator.of(context).pop();
                                      },
                                      child: Text('Save'),
                                    ),
                                    TextButton(
                                      onPressed: () {
                                        Navigator.of(context).pop();
                                      },
                                      child: Text('Cancel'),
                                    ),
                                  ],
                                );
                              },
                            );
                          },
                          icon: Icon(Icons.edit_outlined,
                          color: Colors.black,),
                        ),
                        IconButton(
                          onPressed: () {
                            // hapus item
                            setState(() {
                              _items.removeAt(index);
                            });
                          },
                          icon: Icon(Icons.delete,
                          color: Colors.black,),
                        ),
                      ],
                    ),
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );

  }
}
