import "package:flutter/material.dart";
import 'package:flutter/widgets.dart';
import 'package:veggi_mart/Screen/home/widget/home_list.dart';
import 'widget/home_empty.dart';

class HomePage extends StatelessWidget {
  HomePage({Key? key}) : super(key: key);

  final List<Map<String, dynamic>> _taskList = [
    {
      'Title': 'Veg 1',
      'Content': 'Onion',
      'Price': 50,
    },
    {
      'Title': 'Veg 2',
      'Content': 'Potato',
      'Price': 60,
    },
    {
      'Title': 'Veg 3',
      'Content': 'Tomato',
      'Price': 70,
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: _taskList.isNotEmpty ? HomeList(items: _taskList) : HomeEmptyBody(),
        floatingActionButton: FloatingActionButton(
          onPressed: _fabClick,
          child: Icon(Icons.add, color: Colors.black),
          backgroundColor: Colors.red.shade900,
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat);
  }
}

void _fabClick() {
  print('Clicked');
}

class HomeEmptyBody extends StatelessWidget {
  const HomeEmptyBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(
        left: 48.0,
        right: 48.0,
      ),
      width: double.infinity,
      height: double.infinity,
      color: Colors.green.shade900,
      child: Column(
        children: [
          Image.asset(
            'asset/image/veggie_bg.png',
            width: double.infinity,
            height: MediaQuery.of(context).size.height * 0.8,
          ),
          Text(
            'Have a Healthy Lifestyle',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 20.0,
              color: Colors.white,
            ),
          ),
          SizedBox(
            height: 12.0,
          ),
          Text(
            'Let us Explore',
            style: TextStyle(color: Colors.white, fontStyle: FontStyle.italic),
          )
        ],
      ),
    );
  }
}
