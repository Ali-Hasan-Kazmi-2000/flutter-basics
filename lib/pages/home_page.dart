import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var days = 30;
    var bootcamp = "flutter";

    return Scaffold(
        appBar: AppBar(
          title: const Text('Catalog App'),
        ),
        drawer: const Drawer(),
        body: Center(
          child: Text('Welcome to $days days of $bootcamp'),
        ),
    );
  }
}
