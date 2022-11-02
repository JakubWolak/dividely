import 'package:flutter/material.dart';

class CustomBackButton extends StatelessWidget {
  const CustomBackButton({
    super.key,
    required this.onPressed,
  });

  final void Function() onPressed;

  @override
  Widget build(BuildContext context) {
    // return Container(
    //   padding: EdgeInsets.all(2),
    //   decoration: BoxDecoration(
    //     color: Colors.white,
    //     borderRadius: BorderRadius.circular(15),
    //     boxShadow: [
    //       BoxShadow(
    //         blurRadius: 15,
    //         offset: Offset(5, 0),
    //         color: Colors.black26,
    //       ),
    //     ],
    //   ),
    //   child: BackButton(
    //     onPressed: onPressed,
    //   ),
    // );
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
        minimumSize: const Size.square(48),
      ),
      child: const Icon(Icons.arrow_back, size: 21,),
    );
  }
}
