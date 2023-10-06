import 'package:ch_8_practice/Pages/about.dart';
import 'package:ch_8_practice/Pages/gratitude.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<HomePage> {
  final String _howAreYou = "...";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Navigator'),
        actions: [
          IconButton(
            onPressed: () => _openPageAbout(
              context: context,
            ),
            icon: const Icon(Icons.info_outline),
          )
        ],
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Text(
            'Grateful for: $_howAreYou',
            style: const TextStyle(fontSize: 32.0),
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: (){},
      ),
    );
  }
}

void _openPageAbout(
    {required BuildContext context, bool fullscreenDialog = false}) {
  Navigator.push(
      context,
      MaterialPageRoute(
          fullscreenDialog: fullscreenDialog, builder: (context) => About()));
}

void _openPageGratitude(
    {required BuildContext context, bool fullscreenDialog = false}) async {
  final String gratitudeResponse = await Navigator.push(
    context,
    MaterialPageRoute(
      fullscreenDialog: fullscreenDialog,
      builder: (context) => const Gratitude(
        radioGroupValue: -1,
      ),
    ),
  );
  var _howAreYou = gratitudeResponse;
}
