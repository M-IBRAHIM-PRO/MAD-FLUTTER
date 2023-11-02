import 'package:flutter/material.dart';


class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(padding: EdgeInsets.all(16.0),
      child: Column(
        children: [
          ListView(
            children: [
              ListTile(
                leading: Icon(Icons.lock,color: Colors.amber,
                ),
                title: Text('Forget password?',style: TextStyle(color: Colors.amber),),
              )
            ],
          )
      ],),),
      ),
    );
  }

  