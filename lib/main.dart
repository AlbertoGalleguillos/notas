import 'package:flutter/material.dart';
import 'package:notas/components/app_bar.dart';

import 'package:notas/data.dart';
import 'package:notas/views/add.dart';
import 'components/card_item.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  static const String TITLE = 'Notas';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: TITLE,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => MyHomePage(title: TITLE),
        '/add': (context) => Add(),
      },
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  List _levels = levels;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBar(),
      body: Center(
        child: ListView(
          children: _levels.map((element) => cardItem(element)).toList(),
        ),
      ),
      floatingActionButton: Builder(
        builder: (BuildContext context) {
          return FloatingActionButton(
            onPressed: () => goTo(context, '/add'),
            tooltip: 'Increment',
            child: Icon(Icons.add),
          );
        },
      ),
    );
  }

  void goTo(BuildContext context, String routeName) {
    Navigator.pushNamed(context, routeName);
    //TODO add current level
    //LevelProvider.current = level;
  }
}
