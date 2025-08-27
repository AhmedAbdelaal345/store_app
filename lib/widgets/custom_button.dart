import 'package:flutter/material.dart';

class ElevatedButtonWidget extends StatelessWidget {
  ElevatedButtonWidget({super.key, this.onpressed, required this.textbutt});
  String textbutt;
  VoidCallback? onpressed;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      child: ElevatedButton(
        style: ButtonStyle(
          minimumSize: WidgetStatePropertyAll(Size(double.infinity, 50)),
          backgroundColor: WidgetStatePropertyAll(Color(0xff274460)),
          shape: WidgetStatePropertyAll(
            RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
          ),
        ),
        onPressed: onpressed,
        child: Text(
          textbutt,
          style: TextStyle(color: Colors.white, fontSize: 20),
        ),
      ),
    );
  }
}
