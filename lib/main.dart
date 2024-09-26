import 'package:flutter/material.dart';
// ignore: unused_import
import 'package:ui_samples/screens/screen1.dart';
// ignore: unused_import
import 'package:ui_samples/screens/screen2.dart';
// ignore: unused_import
import 'package:ui_samples/screens/screen3.dart';
// ignore: unused_import
import 'package:ui_samples/screens/screen4.dart';
// ignore: unused_import
import 'package:ui_samples/screens/screen5.dart';
// ignore: unused_import
import 'package:ui_samples/screens/screen6.dart';
import 'package:ui_samples/screens/screenhome.dart';

void main(List<String> args) {
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      theme: ThemeData(
      ),
      debugShowCheckedModeBanner: false,
      // ignore: prefer_const_constructors
      home:  ScreenHome(),
    );
  }
}