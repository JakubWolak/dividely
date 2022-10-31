import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class WhiteContinueButton extends StatelessWidget {
  const WhiteContinueButton({super.key, required this.onPressed});

  final void Function() onPressed;

  static const continueArrowImage = 'assets/images/continue_button_arrow.png';

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
          minimumSize: const Size.fromRadius(47),
          backgroundColor: Colors.white,
          shadowColor: Colors.black54,
          elevation: 15,
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(47))),
      child: const Image(
        image: AssetImage(WhiteContinueButton.continueArrowImage),
      ),
    );
  }
}
