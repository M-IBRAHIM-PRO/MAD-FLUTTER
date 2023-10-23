import 'package:ch_9_gridview/pages/home.dart';
import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Starter Template',
        
      theme: ThemeData(

        primarySwatch: Colors.amber,
      ),
      home: const HomePage(),
    );
  }
}


