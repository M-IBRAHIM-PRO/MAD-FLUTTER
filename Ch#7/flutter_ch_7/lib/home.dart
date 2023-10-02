import 'package:flutter/material.dart';
import 'package:flutter_ch_7/AnimatedContainers.dart';
import 'package:flutter_ch_7/animated_cross_fade.dart';
import 'package:flutter_ch_7/animated_opacity.dart';

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
        title: const Text('Animations'),
      ),
      body: const SafeArea(
          child: Column(
        children: [
          AnimatedContainerClass(),
          Divider(),
          AnimatedCrossFadeWidget(),
          Divider(),
          AnimatedOpacityWidget(),
        ],
      )),
    );
  }
}
