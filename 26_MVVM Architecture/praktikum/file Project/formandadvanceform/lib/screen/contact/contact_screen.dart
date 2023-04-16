import 'package:flutter/material.dart';
import 'package:formandadvanceform/screen/contact/add_contact.dart';
import 'package:formandadvanceform/screen/contact/contact_view.dart';
import 'package:provider/provider.dart';
import '../../model/contact_model.dart';

class ContactScreen extends StatefulWidget {
  const ContactScreen({Key? key}) : super(key: key);

  @override
  State<ContactScreen> createState() => _ContactScreenState();
}

class _ContactScreenState extends State<ContactScreen> {
  @override

  Widget build(BuildContext context) {
    final modelView = Provider.of<ContactViewModel>(context);
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('List Contact'),
        backgroundColor: Colors.teal,
      ),
      body: ListView.builder(
        itemCount: modelView.contacts.length,
        itemBuilder: (context, index) {
          final contact = modelView.contacts[index];
          return ListTile(
            title: Text(contact.name),
            subtitle: Text(contact.phone),
            leading: CircleAvatar(
              backgroundColor: Colors.cyan[300],
              child: Text(
                contact.name[0],
                style: TextStyle(color: Colors.white,fontSize: 20),
              ),
            ),
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {

          Navigator.of(context).push(MaterialPageRoute(builder: (_) => const addContact())
          );
        },
        backgroundColor: Colors.teal,
        child: const Icon(Icons.add),
      ),
    );
  }
}
