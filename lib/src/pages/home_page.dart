import 'package:first_counter/src/styles/styles.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePage createState() => _HomePage();
}

class _HomePage extends State<HomePage> {
  int _count = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text("App de Roberto"),
          backgroundColor: Colors.green,
        ),
        body: Center(
            child: Column(children: <Widget>[
          Text("Number of taps", style: Styles.title),
          Text("$_count", style: Styles.body)
        ], mainAxisAlignment: MainAxisAlignment.center)),
        floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
        floatingActionButton: _buildButtonRow());
  }

  void _incrementCounter() {
    setState(() {
      _count++;
    });
  }

  void _decrementCounter() {
    setState(() {
      _count--;
    });
  }

  void _clearCounter() {
    setState(() {
      _count = 0;
    });
  }

  Widget _buildButtonRow() {
    return Row(
      children: <Widget>[
        SizedBox(width: 30),
        FloatingActionButton(
            child: Icon(Icons.exposure_zero),
            onPressed: _clearCounter,
            backgroundColor: Colors.green),
        Expanded (child:SizedBox()),
        FloatingActionButton(
            child: Icon(Icons.remove),
            onPressed: _decrementCounter,
            backgroundColor: Colors.green),
        FloatingActionButton(
            child: Icon(Icons.add),
            onPressed: _incrementCounter,
            backgroundColor: Colors.green)
      ],
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
    );
  }
}
