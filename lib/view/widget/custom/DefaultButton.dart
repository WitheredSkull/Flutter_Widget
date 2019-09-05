import 'package:flutter/material.dart';

class DefaultButton extends StatelessWidget {
  String data;
  VoidCallback onPressed;

  DefaultButton(this.data, this.onPressed);

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      onPressed: onPressed,
      child: Text(
        data,
        style: TextStyle(color: Colors.white),
      ),
      color: Colors.green.shade400,
    );
  }
}
