import 'package:flutter/material.dart';
import 'package:flutter_01/ImagesAndIcons.dart';
import 'package:flutter_01/ValidateForms.dart';
import 'package:flutter_01/home.dart';
import 'package:flutter_01/OrientationApp.dart';


void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Starter Template',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const OrientationApp(),
    );
  }
}


