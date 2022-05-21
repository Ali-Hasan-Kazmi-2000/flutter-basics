import 'package:e_commerce_app/widgets/drawer.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var days = 30;
    var bootcamp = "flutter";
    return Scaffold(
      appBar: AppBar(
        iconTheme: const IconThemeData(color: Colors.black),
        backgroundColor: Colors.white,
        title: const Text(
          'Catalog App',
          style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
      ),
      drawer: const MyDrawer(),
      body: Center(
        child: Text('Welcome to $days days of $bootcamp'),
      ),
    );
  }
}
