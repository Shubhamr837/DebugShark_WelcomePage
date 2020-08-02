import 'dart:html';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_signin_button/flutter_signin_button.dart';
import 'dart:html' as html;
import 'dart:js' as js;
import 'dart:ui' as ui;

void main() {
  
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
        // This makes the visual density adapt to the platform that you run
        // the app on. For desktop platforms, the controls will be smaller and
        // closer together (more dense) than on mobile platforms.
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  List<Color> _colors = [Colors.lightBlue[700], Colors.lightBlue[900]];
  List<double> _stops = [0.0, 0.9];
  _createlogInDialog(BuildContext context) {
    return showDialog(
        context: context,
        builder: (context) {
          return AlertDialog(
            title: Text('Log In'),
            content: Column(
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                SignInButton(
                  Buttons.Google,
                  text: "Log in with Google",
                  onPressed: () {},
                ),
                SizedBox(height: 5),
                SignInButton(
                  Buttons.Facebook,
                  text: "Log in with Facebook",
                  onPressed: () {},
                ),
                SizedBox(height: 5),
                SignInButton(
                  Buttons.GitHub,
                  text: "Log in with Github",
                  onPressed: () {},
                ),
                SizedBox(height: 10),
                Text(
                  'OR',
                  style: TextStyle(color: Colors.grey),
                ),
                SizedBox(height: 20),
                
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[
                    RaisedButton(
                      onPressed: () {
                        js.context.callMethod('openLoginPage', ['Flutter is calling upon JavaScript!']);
                      },
                      child: Text(
                        'Log in with email and password',
                        style: TextStyle(color: Colors.white),
                      ),
                      color: Colors.blue[900],
                    )
                  ],
                )
              ],
            ),
            contentPadding: EdgeInsets.all(20.0),
          );
        });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: new AppBar(
        title: new Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Text(
              "Code </> Kitchen",
              style: TextStyle(
                  color: Colors.blue[900],
                  fontWeight: FontWeight.w500,
                  fontSize: 25),
            ),
            RaisedButton(
              onPressed: () {
                _createlogInDialog(context);
              },
              child: Text(
                'Log in',
                style: TextStyle(color: Colors.blue[900]),
              ),
              color: Colors.white,
            )
          ],
        ),
        backgroundColor: Colors.transparent,
        elevation: 0.0,
      ),
      body: SingleChildScrollView(
          child: Container(
              height: MediaQuery.of(context).size.height,
              width: double.infinity,
              child: Row(
                children: <Widget>[
                  Container(
                    alignment: AlignmentDirectional.bottomStart,
                    padding: EdgeInsets.all(20.0),
                    height: double.infinity,
                    width: MediaQuery.of(context).size.width / 3,
                    color: Colors.white,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        FractionallySizedBox(
                          widthFactor: 0.8,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              SignInButton(
                                Buttons.Google,
                                text: "Sign up with Google",
                                onPressed: () {},
                              ),
                              SizedBox(height: 5),
                              SignInButton(
                                Buttons.Facebook,
                                text: "Sign up with Facebook",
                                onPressed: () {},
                              ),
                              SizedBox(height: 5),
                              SignInButton(
                                Buttons.GitHub,
                                text: "Sign up with Github",
                                onPressed: () {},
                              ),
                              SizedBox(height: 10),
                              Text(
                                'Or register',
                                style: TextStyle(color: Colors.grey),
                              ),
                              SizedBox(height: 10),
                            
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: <Widget>[
                                  RaisedButton(
                                    onPressed: () {
                                      js.context.callMethod('openRegistrationPage', ['Flutter is calling upon JavaScript!']);
                                    },
                                    child: Text(
                                      'Sign Up',
                                      style: TextStyle(color: Colors.white),
                                    ),
                                    color: Colors.blue[900],
                                  )
                                ],
                              ),
                            
                              SizedBox(
                                height: 25,
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    'Already have an account?',
                                    style: TextStyle(color: Colors.grey),
                                  )
                                ],
                              ),
                              SizedBox(
                                height: 20,
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: <Widget>[
                                  RaisedButton(
                                    onPressed: () {_createlogInDialog(context);},
                                    child: Text(
                                      'Log in',
                                      style: TextStyle(color: Colors.white),
                                    ),
                                    color: Colors.blue[900],
                                  )
                                ],
                              )
                            ],
                            // this container won't be larger than
                            // half of its parent size
                          ),
                        )
                      ],
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.all(20.0),
                    width: 2 * MediaQuery.of(context).size.width / 3,
                    height: double.infinity,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                          alignment: Alignment.bottomRight,
                          image: AssetImage("assets/background.png"),
                          fit: BoxFit.none,
                        ),
                        gradient: LinearGradient(
                          colors: _colors,
                          stops: _stops,
                        )),
                    child: Container(
                      margin: EdgeInsets.all(50.0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(height: 30.0),
                          Text('Code Kitchen to learn coding',
                              textAlign: TextAlign.left,
                              style: GoogleFonts.righteous(
                                  textStyle: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.w600,
                                      fontSize: 40))),
                          SizedBox(height: 20),
                          Text(
                              'Code Kitchen helps you masters the concepts of data structures and algorithms . \nRange of Questions which are Suitable for both beginners \nand advamced level programmers .\nForm groups and compete with others to see where you stand .',
                              textAlign: TextAlign.left,
                              style: GoogleFonts.righteous(
                                  textStyle: TextStyle(
                                      color: Colors.grey,
                                      fontWeight: FontWeight.w200,
                                      fontSize: 20)))
                        ],
                      ),
                    ),
                  )
                ],
              ))), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
