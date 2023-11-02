import 'package:flutter/material.dart';
import 'package:flutter_mid_exam/pages/profile.dart';

class ContactPage extends StatefulWidget {
  const ContactPage({super.key});

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<ContactPage> {
  void _handleListTileTap(BuildContext context) {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => const ProfilePage(),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Friends'),
      ),
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.all(10),
          child: ListView(
            children: [
              GestureDetector(
                onTap: () =>
                    _handleListTileTap(context), // Use a lambda function here
                child: const ListTile(
                  leading: CircleAvatar(),
                  title: Text('John'),
                  subtitle: Text('Jhon@email.com'),
                ),
              ),
              GestureDetector(
                onTap: () =>
                    _handleListTileTap(context), // Use a lambda function here
                child: const ListTile(
                  leading: CircleAvatar(),
                  title: Text('Hassan'),
                  subtitle: Text('Hassan@email.com'),
                ),
              ),
              GestureDetector(
                onTap: () =>
                    _handleListTileTap(context), // Use a lambda function here
                child: const ListTile(
                  leading: CircleAvatar(),
                  title: Text('Ali'),
                  subtitle: Text('Ali@email.com'),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
