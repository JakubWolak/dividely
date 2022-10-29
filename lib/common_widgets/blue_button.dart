import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class BlueButton extends StatelessWidget {
  const BlueButton({
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
        padding: EdgeInsets.symmetric(vertical: 15, horizontal: 75),
        minimumSize: Size.fromHeight(56),
        textStyle: TextStyle(fontSize: 18, fontFamily: 'SourceSansProBold'),
        backgroundColor: Color.fromRGBO(49, 75, 206, 1),
        foregroundColor: Colors.white,
        elevation: 15,
        shadowColor: Color.fromRGBO(49, 75, 206, 0.35),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(
            Radius.circular(8),
          ),
        ),
      ),
      child: Text(text),
    );
  }
}
