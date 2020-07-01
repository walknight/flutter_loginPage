import 'package:flutter/material.dart';

class Login2 extends StatelessWidget {
  static final String tag = '/login_2';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF1F2D44),
      appBar: AppBar(
        title: Text('Login 2'),
        backgroundColor: Color(0xFF1F2D44),
      ),
      body: Center(
        child: SingleChildScrollView(
            padding: EdgeInsets.all(30.0),
            child: Column(
              children: <Widget>[
                Column(
                  children: <Widget>[
                    Image(
                      image: AssetImage('assets/images/cloud_storage_logo.png'),
                      width: 130,
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 20.0, bottom: 20.0),
                      child: Text(
                        'Cloud Storage',
                        style: TextStyle(color: Colors.white, fontSize: 16.0),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 50.0,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: <Widget>[
                    userNameTextField(),
                    SizedBox(
                      height: 15.0,
                    ),
                    passwordTextField(),
                    SizedBox(
                      height: 25.0,
                    ),
                    btnPart('LOG IN'),
                    SizedBox(
                      height: 20.0,
                    ),
                    btnForgotPassword(),
                    SizedBox(
                      height: 10.0,
                    ),
                    Divider(
                      color: Colors.white,
                    ),
                    SizedBox(
                      height: 15.0,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Text(
                          'Dont Have Account ?',
                          style: TextStyle(color: Color(0xFFA2A2A2)),
                        ),
                        FlatButton(
                            onPressed: () {},
                            child: Text(
                              'SIGN UP',
                              style: TextStyle(color: Colors.white),
                            ))
                      ],
                    )
                  ],
                ),
              ],
            )),
      ),
    );
  }

  Widget userNameTextField() {
    return TextFormField(
      style: TextStyle(color: Colors.grey),
      decoration: InputDecoration(
        prefixIcon: Icon(
          Icons.person,
          color: Colors.white,
        ),
        focusedBorder: UnderlineInputBorder(
          borderSide: BorderSide(color: Colors.grey[50]),
        ),
        enabledBorder: UnderlineInputBorder(
          borderSide: BorderSide(color: Colors.grey),
        ),
        hintStyle: TextStyle(color: Colors.grey),
        hintText: 'Username',
        filled: true,
      ),
    );
  }

  Widget passwordTextField() {
    return TextFormField(
      obscureText: true,
      style: TextStyle(color: Colors.grey),
      decoration: InputDecoration(          
          filled: true,
          focusedBorder: UnderlineInputBorder(
            borderSide: BorderSide(color: Colors.grey[50]),
          ),
          enabledBorder: UnderlineInputBorder(
            borderSide: BorderSide(color: Colors.grey),
          ),
          prefixIcon: Icon(Icons.lock, color: Colors.white),
          hintStyle: TextStyle(color: Colors.grey),
          hintText: 'Password'),
    );
  }

  Widget btnPart(String text) {
    return RaisedButton(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10.0),
        ),
        onPressed: () {},
        padding: EdgeInsets.all(0.0),
        child: Ink(
          decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [Color(0xFF0BBFD6), Color(0xFF5ACCC1)],
                begin: Alignment.centerLeft,
                end: Alignment.centerRight,
              ),
              borderRadius: BorderRadius.circular(10.0)),
          child: Container(
            constraints: BoxConstraints(maxWidth: 500.0, minHeight: 50.0),
            alignment: Alignment.center,
            child: Text(
              text,
              textAlign: TextAlign.center,
              style:
                  TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
            ),
          ),
        ));
  }

  Widget btnForgotPassword() {
    return FlatButton(
        onPressed: () {},
        child: Text(
          'Forget Password?',
          style: TextStyle(color: Color(0xFFA2A2A2)),
        ));
  }
}
