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
      style: ElevatedButton.styleFrom(
        minimumSize: const Size.fromRadius(48),
        textStyle: const TextStyle(fontSize: 14, fontFamily: 'InterRegular'),
        backgroundColor: const Color.fromRGBO(49, 75, 206, 1),
        foregroundColor: Colors.white,
        elevation: 15,
        shadowColor: const Color.fromRGBO(49, 75, 206, 0.6),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(
            48,
          ),
        ),
      ),
      child: Text(text),
    );
  }
}
