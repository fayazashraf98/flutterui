import 'package:flutter/material.dart';
import 'package:flutterui/screens/SignupScreen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Application",
      home: SignupScreen(),
    );
  }
}
