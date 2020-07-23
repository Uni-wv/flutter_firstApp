import 'package:flutter/material.dart';

myapp() {
  var mytext = Text(
    'Emotiz',
    textDirection: TextDirection.rtl,
    textAlign: TextAlign.center,
  );

  var url1 =
      'https://github.com/Uni-wv/flutter_firstApp/raw/master/icon_v2.png';
  var url2 = 'https://github.com/Uni-wv/flutter_firstApp/raw/master/body1.jpg';
  var logo = Image.network(
    url1,
  );
  var home = Image.network(
    url2,
    width: double.infinity,
    height: double.infinity,
  );

  var emoti = Icon(Icons.insert_emoticon);
  var camera = Icon(Icons.camera);
  var edit = Icon(Icons.edit_attributes);

  emotipress() {
    print("Emoti is clicked... ");
  }

  camerapress() {
    print("User need to capture...");
  }

  editpress() {
    print("Some Edit is reqired....");
  }

  var myemotibutton = IconButton(
    icon: emoti,
    onPressed: emotipress,
  );
  var mycamerabutton = IconButton(
    icon: camera,
    onPressed: camerapress,
  );
  var myeditbutton = IconButton(
    icon: edit,
    onPressed: editpress,
  );

  var myappbar = AppBar(
    title: mytext,
    backgroundColor: Colors.redAccent,
    leading: logo,
    actions: <Widget>[
      myemotibutton,
      mycamerabutton,
      myeditbutton,
    ],
  );

  var myhome = Scaffold(
    appBar: myappbar,
    body: home,
    backgroundColor: Colors.orange.shade100,
    floatingActionButton: FloatingActionButton(
      onPressed: () {
        // Add your onPressed code here!
      },
      child: Icon(Icons.navigation),
      backgroundColor: Colors.green,
    ),
  );

  var design = MaterialApp(
    home: myhome,
    debugShowCheckedModeBanner: false,
  );

  return design;
}
