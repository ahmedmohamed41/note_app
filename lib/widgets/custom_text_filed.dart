import 'package:flutter/material.dart';

// ignore: must_be_immutable
class CustomTextField extends StatelessWidget {
  CustomTextField(
      {super.key, this.labelText, this.hintText, this.onChang, this.inputType, this.maxLines=1});
  String? labelText;
  String? hintText;
  int maxLines;
  Function(String)? onChang;
  TextInputType? inputType;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 3, vertical: 5),
      child: TextField(
        onChanged: onChang,
        keyboardType: inputType,
        maxLines: maxLines,
        style: const TextStyle(fontSize: 15.0),
        decoration: InputDecoration(
          labelText: labelText,
          hintText: hintText,
          // hintStyle: TextStyle(color: Colors.black),
          focusedBorder: const OutlineInputBorder(
            borderSide: BorderSide(),
          ),
          enabledBorder: OutlineInputBorder(
            
            borderSide: const BorderSide(
              color: Colors.white
            ),
            borderRadius: BorderRadius.circular(9),
          ),
          border: const OutlineInputBorder(
            borderSide: BorderSide(),
          ),
        ),
      ),
    );
  }
}
