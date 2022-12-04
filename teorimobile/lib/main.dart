import 'package:flutter/material.dart';
// import 'homepage.dart';
// import 'login.dart';
import 'games.dart';
import 'login.dart';
import 'bottom.dart';
import 'loginn.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primaryColor: Colors.deepPurple,
      ),
      home: LoginPageFul(),
    );
  }
}