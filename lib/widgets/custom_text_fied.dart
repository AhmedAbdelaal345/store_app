import 'package:flutter/material.dart';

class TextFieldWidget extends StatelessWidget {
  TextFieldWidget({
    super.key,
    this.onchange,
    required this.hintText,
    this.secure,
    required this.labelText,
     this.boardType
  });
  String labelText;
  bool? secure;
  String hintText;
  TextInputType ?boardType;
  Function(String)? onchange;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 12),
      child: TextField(
        onChanged: onchange,
        keyboardType: boardType,
        obscureText: secure ?? false,
        style: TextStyle(color: Colors.black),
        cursorColor: Colors.black,
        decoration: InputDecoration(
          hintText: hintText,
          hintStyle: TextStyle(color: Colors.grey),
          contentPadding: EdgeInsets.symmetric(vertical: 30, horizontal: 15),
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.black, width: 1),
            borderRadius: BorderRadius.circular(8),
          ),
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.black, width: 1),
            borderRadius: BorderRadius.circular(8),
          ),

          label: Text(labelText, style: TextStyle(color: Colors.black)),
        ),
      ),
    );
  }
}
