import 'layer_graphview.dart';
import 'package:flutter/material.dart';

import 'directed_graphview.dart';
import 'tree_graphview.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(home: Home());
  }
}

class Home extends StatelessWidget {
  const Home({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Center(
          child: Column(children: [
            TextButton(
                onPressed: () => Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => Scaffold(
                                appBar: AppBar(),
                                body: const TreeViewPage(),
                              )),
                    ),
                child: Text(
                  'Tree View (BuchheimWalker)',
                  style: TextStyle(color: Theme.of(context).primaryColor),
                )),
            TextButton(
                onPressed: () => Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => Scaffold(
                                appBar: AppBar(),
                                body: const GraphClusterViewPage(),
                              )),
                    ),
                child: Text(
                  'Graph Cluster View (FruchtermanReingold)',
                  style: TextStyle(color: Theme.of(context).primaryColor),
                )),
            TextButton(
                onPressed: () => Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => Scaffold(
                                appBar: AppBar(),
                                body: const LayeredGraphViewPage(),
                              )),
                    ),
                child: Text(
                  'Layered View (Sugiyama)',
                  style: TextStyle(color: Theme.of(context).primaryColor),
                )),
          ]),
        ),
      ),
    );
  }
}
