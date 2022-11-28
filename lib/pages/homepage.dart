import 'package:catalog_app/models/catalog.dart';
import 'package:catalog_app/widget/drawer.dart';
import 'package:catalog_app/widget/item_widget.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  final dummyList = List.generate(50, (index) => CatalogModel.items[0]);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Catalog App"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListView.builder(
          itemCount: dummyList.length,
          itemBuilder: (context, index) {
            return ItemWidget(item: dummyList[index]);
          },
        ),
      ),
      drawer: MyDrawer(),
    );
  }
}
