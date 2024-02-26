import 'package:flutter/material.dart';

class Closing extends StatelessWidget {
  const Closing({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Column(
        children: [
          Text(
            'By logging in, you accept the Terms of Use.',
            style: TextStyle(
                fontSize: 12.0,
                color: Colors.white,
                fontFamily: 'LexendLight'),
          ),
          Text(
            'We will not publish anything in your name.',
            style: TextStyle(
                fontSize: 12.0,
                color: Colors.white,
                fontFamily: 'LexendLight'),
          ),
        ],
      ),
    );
  }
}
