import 'package:flutter/cupertino.dart';
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
      child: Text(text.toUpperCase()),
      style: ElevatedButton.styleFrom(
        elevation: 0,
        backgroundColor: Color.fromRGBO(245, 246, 250, 1),
        foregroundColor: Colors.black87,
        textStyle: TextStyle(
          fontFamily: 'Inter',
          fontSize: 14
        ),
        minimumSize: Size.fromHeight(53),
      ),
    );
  }
}
