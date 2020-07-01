import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Login1 extends StatelessWidget {
  static final String tag = '/login_1';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Login 1'),
      ),
      backgroundColor: const Color(0xfffafafa),
      body: Stack(
        children: <Widget>[
          Container(
            constraints: BoxConstraints.expand(),
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage('assets/images/bg_login_1.png'),
                    fit: BoxFit.cover)),
            child: ClipRRect(
              child: BackdropFilter(
                filter: ImageFilter.blur(sigmaX: 3, sigmaY: 3),
                child: Container(
                  alignment: Alignment.center,
                  color: Colors.grey.withOpacity(0.1),
                ),
              ),
            ),
          ),
          Center(
            child: SingleChildScrollView(
              padding: EdgeInsets.all(30.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: <Widget>[
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      frostedCircle(
                          Center(
                            child: Text(
                              'Travel',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 35.0),
                            ),
                          ),
                          120.0,
                          120.0),
                    ],
                  ),
                  SizedBox(height: 20.0),
                  userNameTextField(),
                  SizedBox(height: 5.0),
                  passwordTextField(),
                  SizedBox(height: 15.0),
                  btnForgotPassword(),
                  SizedBox(height: 5.0),
                  btnPart('LOGIN', Colors.pink),
                  SizedBox(height: 10.0),
                  btnPart('REGISTER', Colors.grey),
                  SizedBox(height: 20.0),
                  devider(),
                  SizedBox(height: 25.0),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: <Widget>[
                      frostedCircle(
                          IconButton(
                              // Use the FaIcon Widget + FontAwesomeIcons class for the IconData
                              icon: FaIcon(
                                FontAwesomeIcons.facebookF,
                                color: Colors.white,
                                size: 15,
                              ),
                              onPressed: () {
                                print("Pressed");
                              }),
                          50,
                          50),
                      frostedCircle(
                          IconButton(
                              // Use the FaIcon Widget + FontAwesomeIcons class for the IconData
                              icon: FaIcon(
                                FontAwesomeIcons.twitter,
                                color: Colors.white,
                                size: 15,
                              ),
                              onPressed: () {
                                print("Pressed");
                              }),
                          50,
                          50),
                      frostedCircle(
                          IconButton(
                              // Use the FaIcon Widget + FontAwesomeIcons class for the IconData
                              icon: FaIcon(
                                FontAwesomeIcons.googlePlusG,
                                color: Colors.white,
                                size: 15,
                              ),
                              onPressed: () {
                                print("Pressed");
                              }),
                          50,
                          50),
                    ],
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

Widget frostedCircle(Widget widget, double wdt, double hgt) {
  return ClipRRect(
    borderRadius: BorderRadius.circular(50.0),
    child: BackdropFilter(
      filter: ImageFilter.blur(sigmaY: 3.0, sigmaX: 3.0),
      child: Container(
        width: wdt,
        height: hgt,
        child: widget,
        decoration: BoxDecoration(
            color: Colors.white.withOpacity(0.2), shape: BoxShape.circle),
      ),
    ),
  );
}

Widget userNameTextField() {
  return TextFormField(
    decoration: InputDecoration(
        border: new OutlineInputBorder(
          borderRadius: const BorderRadius.all(
            const Radius.circular(5.0),
          ),
          borderSide: BorderSide.none
        ),
        prefixIcon: Icon(
          Icons.person,
          color: Colors.white,
        ),
        hintStyle: TextStyle(color: Colors.grey),
        filled: true,
        fillColor: Colors.black45,
        hintText: 'Username'),
  );
}

Widget passwordTextField() {
  return TextFormField(
    decoration: InputDecoration(
        border: new OutlineInputBorder(
          borderRadius: const BorderRadius.all(
            const Radius.circular(5.0),
          ),
          borderSide: BorderSide.none
        ),
        filled: true,
        prefixIcon: Icon(Icons.lock, color: Colors.white),
        hintStyle: TextStyle(color: Colors.grey),
        fillColor: Colors.black45,
        hintText: 'Password'),
  );
}

Widget btnForgotPassword() {
  return FlatButton(
      onPressed: () {},
      child: Text(
        'Forgot your Password?',
        style: TextStyle(color: Colors.white),
      ));
}

Widget btnPart(String text, Color colors) {
  return RaisedButton(
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(5.0),
    ),
    onPressed: () {},
    child: Padding(padding: EdgeInsets.all(15.0), child: Text(text)),
    color: colors,
    textColor: Colors.white,
  );
}

Widget devider() {
  return Row(
    children: <Widget>[
      Expanded(
        child: Divider(
          color: Colors.white,
          height: 8.0,
        ),
      ),
      SizedBox(
        width: 8.0,
      ),
      Text(
        'OR',
        style: TextStyle(color: Colors.white),
      ),
      SizedBox(
        width: 8.0,
      ),
      Expanded(
        child: Divider(
          color: Colors.white,
          height: 8.0,
        ),
      )
    ],
  );
}
