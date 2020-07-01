import 'dart:ui';
import 'package:flutter/material.dart';

class Login3 extends StatelessWidget {
  static final String tag = '/login_3';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Login 3'),
        backgroundColor: Colors.lightGreen,
      ),
      backgroundColor: const Color(0xfffafafa),
      body: Stack(
        children: <Widget>[
          ClipPath(
            child: Container(
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage('assets/images/bg_login_1.png'),
                      fit: BoxFit.cover)),
              width: MediaQuery.of(context).size.width,
            ),
            clipper: CustomClipPath(),
          ),
          Center(
            child: SingleChildScrollView(
              padding: EdgeInsets.all(30.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: <Widget>[
                  SizedBox(height: 80.0),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      frostedCircle(
                          Center(
                            child: Text(
                              'GO',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 35.0,
                                  fontWeight: FontWeight.w800),
                            ),
                          ),
                          120.0,
                          120.0),
                    ],
                  ),
                  SizedBox(height: 50.0),
                  userNameTextField(),
                  SizedBox(height: 5.0),
                  passwordTextField(),
                  SizedBox(height: 5.0),
                  btnPart('LOGIN', Colors.lightGreen),
                  SizedBox(height: 20.0),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      btnForgotPassword(),
                      FlatButton(
                          onPressed: () {},
                          child: Text(
                            'SIGN UP',
                            style: TextStyle(color: Colors.grey),
                          ))
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

class CustomClipPath extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    Path path = Path();
    path.lineTo(0, size.height - 360);
    path.lineTo(size.width, size.height - 460);
    path.lineTo(size.width, 0);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => false;
}

Widget frostedCircle(Widget widget, double wdt, double hgt) {
  return ClipRRect(
    borderRadius: BorderRadius.circular(60.0),
    child: BackdropFilter(
      filter: ImageFilter.blur(sigmaY: 3.0, sigmaX: 3.0),
      child: Container(
        width: wdt,
        height: hgt,
        child: widget,
        decoration: BoxDecoration(
            color: Colors.lightGreen.withOpacity(0.2), shape: BoxShape.circle),
      ),
    ),
  );
}

Widget userNameTextField() {
  return TextFormField(
    decoration: InputDecoration(
      hintText: 'your_mail@custom.com',
      labelText: 'Email',
      labelStyle: TextStyle(color: Colors.grey),
      focusedBorder: UnderlineInputBorder(
        borderSide: BorderSide(color: Colors.lightGreen),
      ),
      enabledBorder: UnderlineInputBorder(
        borderSide: BorderSide(color: Colors.lightGreen),
      ),
    ),
    onSaved: (String value) => {print(value)},
  );
}

Widget passwordTextField() {
  return TextFormField(
    obscureText: true,
    decoration: InputDecoration(
      labelText: 'Password',
      labelStyle: TextStyle(color: Colors.grey),
      focusedBorder: UnderlineInputBorder(
        borderSide: BorderSide(color: Colors.lightGreen),
      ),
      enabledBorder: UnderlineInputBorder(
        borderSide: BorderSide(color: Colors.lightGreen),
      ),
    ),
    onSaved: (String value) => {print(value)},
  );
}

Widget btnForgotPassword() {
  return FlatButton(
      onPressed: () {},
      child: Text(
        'Forgot your Password?',
        style: TextStyle(color: Colors.grey),
      ));
}

Widget btnPart(String text, Color colors) {
  return RaisedButton(
    onPressed: () {},
    child: Padding(padding: EdgeInsets.all(15.0), child: Text(text)),
    color: colors,
    textColor: Colors.white,
  );
}
