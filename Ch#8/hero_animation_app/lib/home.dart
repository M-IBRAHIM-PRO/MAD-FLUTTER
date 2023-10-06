import 'package:flutter/material.dart';
import 'fly.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Hero Animation'),
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: GestureDetector(
            child: const Hero(
              tag: 'format_paint',
              child: Icon(
                Icons.format_paint,
                color: Colors.green,
                size: 120.0,
              ),
            ),
            onTap: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => Fly()));
            },
          ),
        ),
      ),
    );
  }
}
