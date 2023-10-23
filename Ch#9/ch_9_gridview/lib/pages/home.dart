import 'package:ch_9_gridview/widgets/gridview_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

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
        systemOverlayStyle:
            const SystemUiOverlayStyle(statusBarBrightness: Brightness.light),
        title: const Text(
          'Layouts',
          style: TextStyle(color: Colors.black87),
        ),
        backgroundColor: Colors.white,
        iconTheme: const IconThemeData(color: Colors.black54),
        leading: IconButton(icon: const Icon(Icons.menu), onPressed: () {}),
        actions: <Widget>[
          IconButton(icon: const Icon(Icons.cloud_queue), onPressed: () {})
        ],
      ),
      body: const SafeArea(
        child: GridViewBuilderWidget(),
      ),
    );
  }
}

_gridViewExtend() {
  return GridView.extent(
    maxCrossAxisExtent: 175.0,
    padding: const EdgeInsets.all(8.0),
    children: List.generate(
      100,
      (index) {
        print('_buildGridViewExtent $index');
        return Card(
          margin: const EdgeInsets.all(8.0),
          child: InkWell(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                const Icon(
                  Icons.abc,
                  size: 48.0,
                  color: Colors.blue,
                ),
                const Divider(),
                Text(
                  'Index $index',
                  textAlign: TextAlign.center,
                  style: const TextStyle(
                    fontSize: 16.0,
                  ),
                )
              ],
            ),
            onTap: () {
              print('Row $index');
            },
          ),
        );
      },
    ),
  );
}

_gridViewCount() {
  return GridView.count(
    crossAxisCount: 3,
    padding: const EdgeInsets.all(8.0),
    children: List.generate(
      7000,
      (index) {
        print('_buildgridview $index');
        return Card(
          margin: const EdgeInsets.all(8.0),
          child: InkWell(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                const Icon(
                  Icons.abc,
                  size: 48.0,
                  color: Colors.blue,
                ),
                const Divider(),
                Text(
                  'Index $index',
                  textAlign: TextAlign.center,
                  style: const TextStyle(
                    fontSize: 16.0,
                  ),
                )
              ],
            ),
            onTap: () {
              print('Row $index');
            },
          ),
        );
      },
    ),
  );
}
