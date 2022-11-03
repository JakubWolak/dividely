import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class WhiteButton extends StatelessWidget {
  const WhiteButton({
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
        minimumSize: const Size.fromHeight(56),
        foregroundColor: Colors.black87,
        backgroundColor: Colors.white,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8),
        ),
        elevation: 20,
        shadowColor: Colors.black87,
        textStyle: const TextStyle(
          fontFamily: 'Inter',
          fontSize: 18,
          fontWeight: FontWeight.bold,
        ),
      ),
      child: Text(text),
    );
  }
}
