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
  final List<String> image = [
    'Zirnich Studio',
  ];
  final List<String> name =[
    'alat music'
  ];
  @override
  Widget build(BuildContext context){
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        centerTitle: true,
        title: Text('Zirnich Studio',
        ),
        actions: [
          CircleAvatar(
            backgroundImage: AssetImage('assets/ZCH.png'),
          )
        ],
        backgroundColor: Colors.teal,
      ),
      drawer: Sidebar(context),
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
                'Zirnich Music Studio',
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
                          image: AssetImage('assets/gtr.jpg')
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(10),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(10),
                      child: const Image(
                          image: AssetImage('assets/drm.jpg')
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(10),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(10),
                      child: const Image(
                          image: AssetImage('assets/pn.jpg')
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
            AboutUs(context),
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

  Widget Sidebar (BuildContext context){
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          const DrawerHeader(
            decoration: BoxDecoration(
              color: Colors.teal,
            ),
            child: CircleAvatar(
              backgroundImage: AssetImage('assets/ZCH.png'),

            )
          ),
          ListTile(
            title: ElevatedButton(
                onPressed: (){},
                style: ElevatedButton.styleFrom(
                  primary: Colors.teal,
                ),
                child: Text(
                  'Contact Us'
                )
            )
          ),
          ListTile(
              title: ElevatedButton(
                  onPressed: (){},
                  style: ElevatedButton.styleFrom(
                    primary: Colors.teal,
                  ),
                  child: Text(
                      'About Us'
                  )
              )
          ),
          ListTile(
              title: ElevatedButton(
                  onPressed: (){},
                  style: ElevatedButton.styleFrom(
                    primary: Colors.teal,
                  ),
                  child: Text(
                      'Login'
                  )
              )
          ),
        ],
      ),
    );
  }

  Widget AboutUs (BuildContext context){
    return Column(
    children: [
      Container(
        margin: const EdgeInsets.symmetric(vertical: 16),
        child: Text(
          'About Us',
          style: TextStyle(fontSize: 25),
          textAlign: TextAlign.center,
        ),
      ),
      Container(
        margin: const EdgeInsets.only(top: 16),
        child: const Text('Zirnich Music Studio is an online music store that provides various kinds of musical instruments and music accessories. '
            'We are dedicated to providing quality products at affordable prices, as well as providing musicians and music fans with a fun and easy shopping experience.',
          textAlign: TextAlign.center,
        ),
      ),
      SizedBox(height: 15,),
      Container(
        margin: EdgeInsets.symmetric(horizontal: 5),
        child: Row(
          children:<Widget> [
            Expanded(
              child: Card(
                color: Colors.teal,
                child: Column(
                  children: [
                    Image.asset('assets/mst.jpg'),
                    Padding(padding: EdgeInsets.all(5),
                    child: Text('Music Intrumental',
                        style:TextStyle(color: Colors.white) ),
                    )
                  ],
                ),
              ),
            ),
            SizedBox(width: 10,),
            Expanded(
              child: Card(
                  color: Colors.teal,
                  child: Column(
                    children: [
                      Image.asset('assets/std.jpg'),
                      Padding(padding: EdgeInsets.all(5),
                        child: Text('recording tool',
                            style:TextStyle(color: Colors.white)
                        ),)
                    ],
                  )
              ),
            ),
          ],
        ),
      )
    ],
    );
  }
}
