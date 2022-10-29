import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class BlueCircularButton extends StatelessWidget {
  const BlueCircularButton({
    super.key,
    required this.text,
    required this.onPressed,
  });

  final String text;
  final void Function() onPressed;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      child: Text(text),
      style: ElevatedButton.styleFrom(
        minimumSize: Size.fromRadius(48),
        textStyle: TextStyle(fontSize: 14, fontFamily: 'InterRegular'),
        backgroundColor: Color.fromRGBO(49, 75, 206, 1),
        foregroundColor: Colors.white,
        elevation: 15,
        shadowColor: Color.fromRGBO(49, 75, 206, 0.6),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(
            48,
          ),
        ),
      ),
    );
  }
}
