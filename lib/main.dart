import 'package:flutter/material.dart';
import 'package:week6ui1/Screens/scrn1.dart';

void main(){
  runApp(MyApp());
}


class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: ScreenOne(),
      debugShowCheckedModeBanner: false,
    );
  }
}