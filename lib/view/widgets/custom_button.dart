import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  final void Function()? onPressed;
  final Color color;
  final String text;
  const CustomButton({super.key, required this.onPressed, required this.color, required this.text});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(4.0),
      width: double.infinity,
      height: 66.0,
      child: MaterialButton(
        onPressed: onPressed,
        elevation: 0.0,
        color: color,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(18.0),
        ),
        child: Text(
          text, style: const TextStyle(fontFamily: 'LexendBold', fontSize: 16),
        ),
      ),
    );
  }
}
