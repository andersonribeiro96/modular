import 'package:flutter/material.dart';

class Otherpage extends StatefulWidget {
  final String text;

  const Otherpage({Key key, this.text}) : super(key: key);

  @override
  _OtherpageState createState() => _OtherpageState();
}

class _OtherpageState extends State<Otherpage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Other'),
      ),
      body: Center(
        child: Text(widget.text),
      ),
    );
  }
}
