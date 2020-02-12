import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:loginmobx/app/pages/home/home_controller.dart';

class Otherpage extends StatefulWidget {
  @override
  _OtherpageState createState() => _OtherpageState();
}

class _OtherpageState extends State<Otherpage> {
  @override
  Widget build(BuildContext context) {
    final homeController = Modular.get<HomeController>();
    return Scaffold(
      appBar: AppBar(
        title: Text('Other'),
      ),
      body: Center(
        child: Text(homeController.text),
      ),
    );
  }
}
