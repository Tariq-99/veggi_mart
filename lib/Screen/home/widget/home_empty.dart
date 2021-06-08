import 'package:flutter/material.dart';
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
          SizedBox(height: 12.0,),
          Text(
            'Let us Explore',
            style: TextStyle(
                color: Colors.white,
                fontStyle: FontStyle.italic
            ),
          )
        ],
      ),
    );
  }
}