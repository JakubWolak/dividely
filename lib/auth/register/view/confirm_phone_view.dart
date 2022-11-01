import 'package:flutter/material.dart';

class ConfirmPhoneView extends StatefulWidget {
  const ConfirmPhoneView({super.key});

  @override
  State<ConfirmPhoneView> createState() => _ConfirmPhoneViewState();
}

class _ConfirmPhoneViewState extends State<ConfirmPhoneView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Register',
              style: TextStyle(
                fontFamily: 'GilroyBold',
                fontSize: 44,
                color: Colors.black,
              ),
              textAlign: TextAlign.start,
            ),
            const SizedBox(
              height: 50,
            ),
            RichText(
              text: const TextSpan(
                style: TextStyle(
                  fontFamily: 'Inter',
                  fontSize: 18,
                  color: Colors.black87,
                ),
                children: [
                  TextSpan(text: 'Please enter '),
                  TextSpan(
                      text: 'your phone number ',
                      style: TextStyle(fontWeight: FontWeight.bold)),
                  TextSpan(text: 'and '),
                  TextSpan(
                      text: 'location ',
                      style: TextStyle(fontWeight: FontWeight.bold)),
                  TextSpan(text: 'so we can verify you.'),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
