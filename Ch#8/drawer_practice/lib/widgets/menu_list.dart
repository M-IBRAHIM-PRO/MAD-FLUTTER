import 'package:drawer_practice/pages/birthdays.dart';
import 'package:drawer_practice/pages/gratitude.dart';
import 'package:drawer_practice/pages/reminders.dart';
import 'package:flutter/material.dart';

class MenuList extends StatefulWidget {
  const MenuList({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<MenuList> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        ListTile(
          leading: const Icon(Icons.cake),
          title: const Text('Birthdays'),
          onTap: () {
            Navigator.pop(context);
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => Birthdays(),
              ),
            );
          },
        ),
        ListTile(
          leading: const Icon(Icons.sentiment_satisfied),
          title: const Text('Gratitude'),
          onTap: () {
            Navigator.pop(context);
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => Gratitude(),
              ),
            );
          },
        ),
        ListTile(
          leading: const Icon(Icons.alarm),
          title: const Text('Reminders'),
          onTap: () {
            Navigator.pop(context);
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => Reminders(),
              ),
            );
          },
        ),
        const Divider(color: Colors.grey),
        ListTile(
          leading: const Icon(Icons.settings),
          title: const Text('Setting'),
          onTap: () {
            Navigator.pop(context);
          },
        ),
      ],
    );
  }
}
