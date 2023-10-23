import 'package:ch9_customscrollview_slivers/widgets/sliver_app_bar.dart';
import 'package:ch9_customscrollview_slivers/widgets/sliver_grid.dart';
import 'package:ch9_customscrollview_slivers/widgets/sliver_list.dart';
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
      appBar: AppBar(
        title: const Text('CustomScrollView - Slivers'),
        elevation: 0.0,
      ),
      body:  const CustomScrollView(
        slivers: [
          SliverAppBarWidget(),
          SliverListWidget(),
          SliverGridWidget(),
        ],
      ),
    );
  }
}
