import 'package:flutter/material.dart';

class LoginMethodButton extends StatelessWidget {
  const LoginMethodButton({
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
        elevation: 0,
        backgroundColor: const Color.fromRGBO(245, 246, 250, 1),
        foregroundColor: Colors.black87,
        textStyle: const TextStyle(
          fontFamily: 'Inter',
          fontSize: 14,
          fontWeight: FontWeight.w500,
        ),
        minimumSize: const Size.fromHeight(53),
      ),
      child: Text(text.toUpperCase()),
    );
  }
}
