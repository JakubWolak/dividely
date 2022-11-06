import 'package:flutter/material.dart';

class ShadowIconButton extends StatelessWidget {
  const ShadowIconButton({
    super.key,
    required this.icon,
    required this.onPressed,
  });

  final IconData icon;
  final void Function() onPressed;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15),
        ),
        backgroundColor: Colors.white,
        foregroundColor: Colors.black87,
        padding: EdgeInsets.zero,
        elevation: 12,
        shadowColor: Colors.black38,
        minimumSize: const Size.square(48),
      ),
      child: Icon(icon, size: 21,),
    );
  }
}
