import 'package:flutter/material.dart';
import 'package:formandadvanceform/model/contact_model.dart';

class ContactViewModel with ChangeNotifier{
  List<Contact> _contacts =[
    Contact(name: 'Shani Indira', phone: '089886486548')
  ];
  List<Contact> get contacts => _contacts;

  void getAllContact(String name,String phone){
    Contact contact = Contact(name: name, phone: phone);
    _contacts.add(contact);
    notifyListeners();
  }
}