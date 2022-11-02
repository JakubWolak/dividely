import 'dart:ui';

import 'package:dividely/common_widgets/buttons/back_button.dart';
import 'package:flutter/material.dart';
import 'package:pin_code_fields/pin_code_fields.dart';

class PhoneConfirmationCode extends StatelessWidget {
  const PhoneConfirmationCode({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      floatingActionButton: Padding(
        padding: const EdgeInsets.only(top: 40, left: 20),
        child: CustomBackButton(
          onPressed: () {},
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.startTop,
      body: Container(
        width: double.infinity,
        height: MediaQuery.of(context).size.height,
        padding: const EdgeInsets.only(
          top: 170,
          left: 40,
          right: 40,
          bottom: 40,
        ),
        color: Colors.white,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Verify Code',
              style: TextStyle(
                fontFamily: 'GiloryBold',
                fontWeight: FontWeight.bold,
                fontSize: 44,
                color: Colors.black87,
              ),
            ),
            SizedBox(
              height: 16,
            ),
            RichText(
              text: const TextSpan(
                style: TextStyle(
                  fontFamily: 'Inter',
                  fontSize: 17,
                  color: Colors.black87,
                ),
                children: [
                  TextSpan(
                      text:
                          'Check your SMS inbox, we have sent you the code at '),
                  TextSpan(
                    text: '+0 000 000 000.',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 100,
            ),
            SizedBox(
              width: 340,
              child: PinCodeTextField(
                appContext: context,
                pastedTextStyle: TextStyle(
                  color: Colors.green.shade600,
                  fontWeight: FontWeight.bold,
                ),
                length: 4,
                // obscureText: true,
                // obscuringCharacter: '*',
                // obscuringWidget: const FlutterLogo(
                //   size: 24,
                // ),
                blinkWhenObscuring: true,
                animationType: AnimationType.fade,
                validator: (v) {
                  if (v!.length < 3) {
                    return "I'm from validator";
                  } else {
                    return null;
                  }
                },
                pinTheme: PinTheme(
                  shape: PinCodeFieldShape.box,
                  borderRadius: BorderRadius.circular(10),
                  fieldHeight: 70,
                  fieldWidth: 70,
                  activeFillColor: const Color.fromRGBO(49, 75, 206, 1),
                  activeColor: const Color.fromRGBO(49, 75, 206, 1),
                  selectedColor: const Color.fromRGBO(49, 75, 206, 1),
                  inactiveColor: const Color.fromRGBO(245, 246, 250, 1),
                  inactiveFillColor: const Color.fromRGBO(245, 246, 250, 1),
                  selectedFillColor: const Color.fromRGBO(49, 75, 206, 0.14),
                ),
                cursorColor: Colors.black,
                animationDuration: const Duration(milliseconds: 300),
                enableActiveFill: true,
                textStyle: TextStyle(
                  fontSize: 40,
                  fontFamily: 'Abel',
                  color: Colors.white,
                ),
                // errorAnimationController: errorController,
                // controller: textEditingController,
                keyboardType: TextInputType.number,
                boxShadows: const [
                  BoxShadow(
                    offset: Offset(0, 1),
                    color: Colors.black12,
                    blurRadius: 10,
                  )
                ],
                onCompleted: (v) {
                  debugPrint("Completed");
                },
                // onTap: () {
                //   print("Pressed");
                // },
                onChanged: (value) {
                  debugPrint(value);
                  // setState(() {
                  //   currentText = value;
                  // });
                },
                beforeTextPaste: (text) {
                  debugPrint("Allowing to paste $text");
                  //if you return true then it will show the paste confirmation dialog. Otherwise if false, then nothing will happen.
                  //but you can show anything you want here, like your pop up saying wrong paste format or etc
                  return true;
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
