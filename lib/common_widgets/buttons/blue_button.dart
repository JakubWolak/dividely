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
        padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 75),
        minimumSize: const Size.fromHeight(56),
        textStyle: const TextStyle(fontSize: 18, fontFamily: 'SourceSansProBold'),
        backgroundColor: const Color.fromRGBO(49, 75, 206, 1),
        foregroundColor: Colors.white,
        elevation: 15,
        shadowColor: const Color.fromRGBO(49, 75, 206, 0.35),
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.all(
            Radius.circular(8),
          ),
        ),
      ),
      child: Text(text),
    );
  }
}
