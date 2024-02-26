import 'package:flutter/material.dart';

class Message extends StatelessWidget {
  const Message({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(
          horizontal: 12.0, vertical: 25.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Match',
            style: TextStyle(
                fontSize: 66.0,
                color: Colors.white,
                fontFamily: 'LexendBold'),
          ),
          Text(
            'Through',
            style: TextStyle(
                fontSize: 66.0,
                color: Colors.white,
                fontFamily: 'LexendBold'),
          ),
          Text(
            'Music',
            style: TextStyle(
                fontSize: 66.0,
                color: Colors.white,
                fontFamily: 'LexendBold'),
          ),
        ],
      ),
    );
  }
}
