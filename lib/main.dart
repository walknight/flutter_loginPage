import 'package:flutter/material.dart';
import 'package:login_form/login_1.dart';
import 'package:login_form/login_2.dart';
import 'package:login_form/login_3.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Login Page Collection',
      theme: ThemeData(
          primarySwatch: Colors.blue,
          visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: Home(),
      routes: {
        Login1.tag : (BuildContext context) => Login1(),
        Login2.tag : (BuildContext context) => Login2(),
        Login3.tag : (BuildContext context) => Login3(),
      },
    );
  }
}

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Login Form List'),
      ),
      body: ListView(
        children: <Widget>[
          Card(
            child: ListTile(
              leading: Icon(Icons.bookmark),
              title: Text('Form Login 1'),
              trailing: Icon(Icons.chevron_right),
              onTap: () => {
                Navigator.pushNamed(context, Login1.tag)
              },
            ),
          ),
          Card(
            child: ListTile(
              leading: Icon(Icons.bookmark),
              title: Text('Form Login 2'),
              trailing: Icon(Icons.chevron_right),
              onTap: () => { Navigator.pushNamed(context, Login2.tag)},
            ),
          ),
          Card(
            child: ListTile(
              leading: Icon(Icons.bookmark),
              title: Text('Form Login 3'),
              trailing: Icon(Icons.chevron_right),
              onTap: () => { Navigator.pushNamed(context, Login3.tag)},
            ),
          ),
        ],
      )
    );
  }
}