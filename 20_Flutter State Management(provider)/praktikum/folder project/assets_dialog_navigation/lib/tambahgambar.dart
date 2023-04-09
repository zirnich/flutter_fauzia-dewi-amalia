import 'dart:io';
import 'package:assets_dialog_navigation/home.dart';
import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'gambar.dart';

class TambahGambar extends StatefulWidget {
  const TambahGambar({Key? key}) : super(key: key);

  @override
  State<TambahGambar> createState() => _TambahGambarState();
}

class _TambahGambarState extends State<TambahGambar> {
  Future pickFile(BuildContext context) async {
    final pickedFile = await FilePicker.platform.pickFiles();

    if (pickedFile != null) {
      GambarProvider gambarProvider = Provider.of<GambarProvider>(context, listen: false);
      gambarProvider.setImage(File(pickedFile.files.single.path!));
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => MyHomePage(),
        ),
      );
    } else {
      print('No file selected.');
    }
  }

  @override
  Widget build(BuildContext context) {
    return
      Scaffold(
        appBar: AppBar(
          title: Text('Select an image file'),
          backgroundColor: Color.fromARGB(83, 15, 122, 180),
        ),
        body: Consumer<GambarProvider>(
          builder: (context, gambarProvider, child) {
            return Column(
              children: [
                SizedBox(
                  height: 30,
                ),
                Container(
                  alignment: Alignment.bottomCenter,
                  child: ElevatedButton(
                    onPressed: () => pickFile(context),
                    child: Text('Select File'),
                  ),
                ),
                gambarProvider.image == null
                    ? Text('No file selected.')
                    : Text(gambarProvider.image!.path),
              ],
            );
          },
        ),
      );

  }
}
