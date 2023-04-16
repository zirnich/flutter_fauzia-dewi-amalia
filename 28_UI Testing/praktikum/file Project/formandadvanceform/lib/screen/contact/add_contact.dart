import 'package:flutter/material.dart';
import 'package:formandadvanceform/screen/contact/contact_screen.dart';
import 'package:formandadvanceform/screen/contact/contact_view.dart';
import 'package:provider/provider.dart';

class addContact extends StatefulWidget {
  const addContact({Key? key}) : super(key: key);

  @override
  State<addContact> createState() => _addContactState();
}

class _addContactState extends State<addContact> {
  final _formKey = GlobalKey<FormState>();
  final _nameController = TextEditingController();
  final _phoneController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Add Contact',
      home :Scaffold(
      appBar: AppBar(
        title: Text('Add Contact'),
        backgroundColor: Colors.teal,
      ),
      body: Form(
        key: _formKey,
        child: Column(
          children: [
            TextFormField(
              controller: _nameController,
              style: TextStyle(color: Colors.black),
              decoration: InputDecoration(
                labelText: 'name',
                hintText: 'Insert Your Name',
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
                      final name = _nameController.text;
                      final phone = _phoneController.text;

                      Provider.of<ContactViewModel>(context, listen: false).getAllContact(name, phone);

                      Navigator.push(context, MaterialPageRoute(
                          builder: (context) => ContactScreen()
                      )
                      );

                      // reset form
                      _nameController.clear();
                      _phoneController.clear();
                    }
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.teal,
                    shape: StadiumBorder(),
                  ),
                  child: Text('Submit'),

                ),
              ],
            ),
          ],
        ),
      ),
      )
    );
  }
}
