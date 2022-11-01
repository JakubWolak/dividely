import 'package:flutter/material.dart';
import 'package:sms_autofill/sms_autofill.dart';

class PhoneConfirmationCode extends StatelessWidget {
  const PhoneConfirmationCode({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        width: double.infinity,
        height: MediaQuery.of(context).size.height,
        padding: const EdgeInsets.only(
          top: 90,
          left: 40,
          right: 40,
          bottom: 40,
        ),
        color: Colors.white,
        child: Column(
          children: [
            PinFieldAutoFill(
              codeLength: 4,
              currentCode: '123',
              decoration: BoxLooseDecoration(
                radius: const Radius.circular(10),
                textStyle: const TextStyle(
                  fontFamily: 'Abel',
                  fontSize: 40,
                ),
                bgColorBuilder: PinListenColorBuilder(
                  Color.fromRGBO(49, 75, 206, 1),
                  Colors.red,
                ),
                strokeColorBuilder: PinListenColorBuilder(
                  Colors.transparent,
                  Colors.transparent,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
