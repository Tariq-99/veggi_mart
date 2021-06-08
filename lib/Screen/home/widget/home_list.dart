import 'package:flutter/material.dart';

class HomeList extends StatelessWidget {
  final List<Map<String, dynamic>> items;

  const HomeList({Key? key, required this.items}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: items.length,
      itemBuilder: (BuildContext context, int index) {
        return ListTile(
          leading: Icon(
            Icons.edit,
          ),
          title: Text(items[index]['Title']),
          subtitle: Text(items[index]['Content']),
          trailing: Text(items[index]['Price'].toString()),
        );
      },
    );
  }
}
