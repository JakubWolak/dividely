import 'package:flutter/material.dart';

enum ButtonColor { blue, orange }

class BigButton extends StatelessWidget {
  const BigButton({
    super.key,
    required this.primaryColor,
    required this.text,
    required this.onPressed,
    this.disabled = false,
  });

  final ButtonColor primaryColor;
  final String text;
  final void Function() onPressed;
  final bool disabled;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: disabled ? null : onPressed,
      style: ElevatedButton.styleFrom(
          minimumSize: const Size.fromHeight(56),
          elevation: 15,
          backgroundColor: primaryColor == ButtonColor.orange
              ? const Color.fromRGBO(255, 137, 126, 1)
              : const Color.fromRGBO(1, 1, 1, 1),
          foregroundColor: Colors.white,
          shadowColor: primaryColor == ButtonColor.orange
              ? const Color.fromRGBO(255, 137, 126, 0.35)
              : const Color.fromRGBO(255, 137, 6, 1),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(8),
          ),
          textStyle: const TextStyle(
            fontFamily: 'SourceSansProBold',
            fontSize: 18,
          )),
      child: Text(text),
    );
  }
}
