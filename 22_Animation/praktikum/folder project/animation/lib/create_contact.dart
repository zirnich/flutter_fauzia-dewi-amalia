import 'package:flutter/material.dart';

class CreateContact extends StatefulWidget {
  const CreateContact({Key? key}) : super(key: key);

  @override
  State<CreateContact> createState() => _CreateContactState();
}

class _CreateContactState extends State<CreateContact> {
  final _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(

      ),
      body: Form(
        key: _formKey,
        child: Column(
          children: [
            TextFormField(

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


            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                ElevatedButton(
                  onPressed: () {

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
    );
  }
}
