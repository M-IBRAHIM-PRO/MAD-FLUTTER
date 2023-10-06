import 'package:flutter/material.dart';
import 'package:tab_bar_app/birthdays.dart';
import 'package:tab_bar_app/gratitude.dart';
import 'package:tab_bar_app/reminders.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> with SingleTickerProviderStateMixin {
  late TabController _tabController;
  @override
  void initState() {
    super.initState();
    _tabController = TabController(vsync: this, length: 3);
    _tabController.addListener(_tabChanged);
  }

  @override
  void dispose() {
    super.dispose();
    _tabController.dispose();
  }

  void _tabChanged() {
    // Check if Tab Controller index is changing, otherwise we get the notice twice
    if (_tabController.indexIsChanging) {
      print('tabChanged: ${_tabController.index}');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Animation Controller'),
      ),
      body: SafeArea(
        child: TabBarView(
          controller: _tabController,
          children: [
            Birthdays(),
            Gratitude(),
            Reminders(),
          ],
        ),
      ),
      bottomNavigationBar: SafeArea(
          child: TabBar(
        controller: _tabController,
        labelColor: Colors.black54,
        unselectedLabelColor: Colors.black38,
        tabs: const [
          Tab(
            icon: Icon(Icons.cake),
            text: 'Birthdays',
          ),
          Tab(
            icon: Icon(Icons.sentiment_satisfied),
            text: 'Gratitude',
          ),
          Tab(
            icon: Icon(Icons.access_alarm),
            text: 'Reminders',
          ),
        ],
      )),
    );
  }
}
