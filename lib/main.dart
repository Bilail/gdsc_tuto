import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:gdsc_tuto/reader/screens/home.dart';

void main(){
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home : Homepage()
    );
  }
}

