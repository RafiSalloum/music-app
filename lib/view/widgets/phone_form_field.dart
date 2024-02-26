import 'package:flutter/material.dart';
import 'package:music_app/shared/local/constant/color.dart';

class PhoneFormField extends StatelessWidget {
  final String? hint;
  final String suffixText;
  final Icon? suffix;
  final void Function()? func;
  final void Function(String)? change;
  final String? Function(String?)? valid;
  final TextEditingController? myController;
  final TextInputType? inputType;
  const PhoneFormField(
      {super.key,
      this.func,
      this.hint,
      this.suffix,
      required this.myController,
      required this.valid,
      required this.inputType,
      required this.suffixText,
      required this.change});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 12.0),
      decoration: const BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(40.0)),
      ),
      child: TextFormField(
        style: const TextStyle(
          fontSize: 16.0,
          fontFamily: 'LexendLight'
        ),
        onChanged: change,
        keyboardType: inputType,
        validator: valid,
        controller: myController,
        decoration: InputDecoration(
          suffixStyle: const TextStyle(
            fontFamily: 'LexendLight', fontSize: 16.0
          ),
          errorMaxLines: 2,
          errorStyle: const TextStyle(
            fontSize: 10.0,
            fontFamily: 'LexendLight'
          ),
          filled: true,
          fillColor: ColorApp.inactiveButton,
          hintText: hint,
          suffixText: suffixText,
          floatingLabelBehavior: FloatingLabelBehavior.always,
          contentPadding:
              const EdgeInsets.symmetric(vertical: 5.0, horizontal: 30.0),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(40.0),
          ),
        ),
      ),
    );
  }
}
