import 'package:flavour_poc/string.dart';
import 'package:flutter/material.dart';
// ignore: depend_on_referenced_packages
import 'package:intl/intl.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flavour demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Flavors Example"),
      ),
      body: _buildBody(),
    );
  }

  Widget _buildBody() {
    return Container(
        margin: const EdgeInsets.symmetric(vertical: 16.0, horizontal: 16.0),
        child: Column(
          children: <Widget>[
            Text(appTitle),
            Text('$dateString ${getDateForDisplay()}'),
            Text(appDesc),
            Image.asset(
              'assets/dancing.png',
              width: 50.0,
              height: 50.0,
            ),
            Image.asset('assets/1.png', width: 50.0, height: 50.0),
          ],
        ));
  }

  String getDateForDisplay() {
    DateTime now = DateTime.now();
    return DateFormat('EEEE dd MMMM yyyy').format(now);
  }
}
