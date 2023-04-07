import 'package:flutter/material.dart';


class Menu extends StatefulWidget {
  const Menu({Key? key}) : super(key: key);

  @override
  State<Menu> createState() => _MenuState();
}

class _MenuState extends State<Menu> {
  final _formKey = GlobalKey<FormState>();
  String _firstName ='';
  String _lastName ='';
  String _email='';
  String _message='';

  @override
  Widget build(BuildContext context){
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        centerTitle: true,
        title: Text('Zirnich Studio',
        ),
        backgroundColor: Colors.teal,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              margin: const EdgeInsets.only(top: 15),
              alignment: Alignment.center,
              child: CircleAvatar(
                backgroundImage: AssetImage('assets/ZCH.png'),
                radius: 100,
              ),
            ),
            Container(
              margin: const EdgeInsets.symmetric(vertical: 30),
              child: const Text(
                'Zirnich Studio',
                style: TextStyle(fontSize: 25),
                textAlign: TextAlign.center,
              ),
            ),
            Container(
              margin: const EdgeInsets.symmetric(vertical: 16),
              child: const Text('Explore a beautiful realm of Musical Instruments & Accessories at affordable prices. '
                  'Explore all kinds of Musical Instruments & Accessories made from plastic materials. Logistics Service.',
                textAlign: TextAlign.center,
              ),
            ),
            SizedBox(
              height: 200,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(10),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(10),
                      child: const Image(
                          image: NetworkImage('https://images.unsplash.com/photo-1563357989-f6cdbbae76cb?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8Nnx8ZWxlY3RyaWMlMjBndWl0YXJ8ZW58MHwwfDB8fA%3D%3D&auto=format&fit=crop&w=1000&q=60')
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(10),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(10),
                      child: const Image(
                          image: NetworkImage('https://images.unsplash.com/photo-1580625528104-830b09667e42?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MjB8fGRydW18ZW58MHwwfDB8fA%3D%3D&auto=format&fit=crop&w=500&q=60')
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(10),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(10),
                      child: const Image(
                          image: NetworkImage('https://images.unsplash.com/photo-1570698824041-22cbab696486?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTF8fHBpYW5vJTIwa2V5Ym9hcmR8ZW58MHwwfDB8fA%3D%3D&auto=format&fit=crop&w=500&q=60')
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 20
            ),
            Container(
              margin: const EdgeInsets.symmetric(vertical: 30),
              child: const Text(
                'Contact us',
                style: TextStyle(fontSize: 25),
                textAlign: TextAlign.start,
              ),
            ),
            Container(
              margin: const EdgeInsets.only(top: 10),
              child: const Text('Need to get in touch with us? either fill out the form'
                  ' with your inquiry find the departement email youd like to contact bellow',
                textAlign: TextAlign.center,
              ),
            ),
            SizedBox(height: 20
            ),
            BuildForm(context),
            SizedBox(height: 20
            ),
          ],
        ),
      ),

    );
  }
  Widget BuildForm (BuildContext context){
    return Column(
      children: [
        Form(
          key: _formKey,
          child: Column(
            children: [
              Row(
                children: [
                  Expanded(
                    child: Padding(
                      padding: EdgeInsets.all(10.0),
                      child: TextFormField(
                        decoration: InputDecoration(
                          filled: true,
                          fillColor: Colors.black26,
                          border: OutlineInputBorder(),
                          labelText: 'First name',
                        ),
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'Nama harus diisi';
                          }
                          return null;
                        },
                        onSaved: (value) {
                          _firstName = value!;
                        },
                      ),
                    ),
                  ),
                  Expanded(
                    child: Padding(
                      padding: EdgeInsets.all(10.0),
                      child: TextFormField(
                        decoration: InputDecoration(
                          filled: true,
                          fillColor: Colors.black26,
                          border: OutlineInputBorder(),
                          labelText: 'last name',
                        ),
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'Nama harus diisi';
                          }
                          return null;
                        },
                        onSaved: (value) {
                          _lastName = value!;
                        },
                      ),
                    ),
                  ),
                ],
              ),
              Container(
                padding: EdgeInsets.all(10.0),
                child: TextFormField(
                  keyboardType: TextInputType.emailAddress,
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: Colors.black26,
                    border: OutlineInputBorder(),
                    labelText: 'Email',
                  ),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'please enter your email';
                    } if(!value.contains("@")){
                      return " please enter a valid email address";
                    }
                    return null;
                  },
                  onSaved: (value) {
                    _email = value!;
                  },
                ),
              ),
              Container(
                padding: EdgeInsets.all(10.0),
                child: TextFormField(
                  minLines: 6,
                  keyboardType: TextInputType.multiline,
                  maxLines: null,
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: Colors.black26,
                    border: OutlineInputBorder(),
                    labelText: 'what can we help you with?',
                  ),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'please enter a message';
                    }
                    return null;
                  },
                  onSaved: (value) {
                    _message = value!;
                  },
                ),
              ),
              SizedBox(height: 15),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  ElevatedButton(
                    onPressed: (){
                    if (_formKey.currentState!.validate()) {
                      _formKey.currentState?.save();
                      showDialog(context: context,
                          builder: (context) => AlertDialog(
                            title: Text('data'),
                            content: Column(
                              mainAxisSize: MainAxisSize.min,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text("First Name : $_firstName"),
                                Text("last Name : $_lastName"),
                                Text("Email Name : $_email"),
                                Text("Message Name : $_message"),

                                //reset

                              ],
                            ),
                            actions: [
                              ElevatedButton(onPressed: () => Navigator.pop(context),
                                  child: Text('oke'))
                            ],
                          )
                      );
                    }
                  },
                      child: Text('Submit'),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.teal,
                    ),
                  ),
                ],
              )
            ],
          ),

        ),


      ],
    );
  }

}
