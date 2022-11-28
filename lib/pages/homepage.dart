import 'package:catalog_app/widget/drawer.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  int days = 30;
  String name = "Tofan";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Catalog App"),
      ),
      body: Center(
          child: Container(
        child: Text("Welcome to $days days of flutter by $name"),
      )),
      drawer: MyDrawer(),
    );
  }
}
