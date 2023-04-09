import 'dart:io';

import 'package:flutter/material.dart';


class GambarProvider extends ChangeNotifier{
  File? _image;

  File? get image => _image;

  void setImage(File? image) {
    _image = image;
    notifyListeners();
  }

  final List<String> imgs =[
    'assets/p1.jpg',
    'assets/p2.jpg',
    'assets/p3.jpg',
    'assets/p4.jpg',
  ];

  void addimage(String img){
    imgs.add(img);
    notifyListeners();
  }
}
