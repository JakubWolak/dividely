import 'package:dividely/common_widgets/buttons/big_button.dart';
import 'package:dividely/common_widgets/inputs/text_input.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../common_widgets/buttons/login_method_button.dart';

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
            const SizedBox(
              height: 60,
            ),
            const Text(
              'Enter your location',
              style: TextStyle(
                  fontFamily: "Inter",
                  fontSize: 16,
                  fontWeight: FontWeight.bold),
            ),
            Card(
              elevation: 15,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(5)),
              child: Text('elo'),
            ),
            DropdownButton(items: [], onChanged: (_) {}),
            const SizedBox(
              height: 26,
            ),
            const Text(
              'Enter your location',
              style: TextStyle(
                  fontFamily: "Inter",
                  fontSize: 16,
                  fontWeight: FontWeight.bold),
            ),
            const SizedBox(
              height: 12,
            ),
            const TextInput(hintText: '+00 000 000 000'),
            const SizedBox(
              height: 35,
            ),
            BigButton(
              text: 'Register',
              onPressed: () {},
              primaryColor: ButtonColor.orange,
            ),
            const SizedBox(
              height: 20,
            ),
            Row(
              children: [
                Expanded(
                  child: Container(
                    margin: const EdgeInsets.only(left: 60, right: 18),
                    child: const Divider(
                      color: Colors.black26,
                      height: 36,
                    ),
                  ),
                ),
                const Text(
                  'or',
                  style: TextStyle(
                    fontSize: 15,
                    fontFamily: 'SourceSansProBold',
                    color: Colors.black38,
                  ),
                ),
                Expanded(
                  child: Container(
                    margin: const EdgeInsets.only(left: 18, right: 60),
                    child: const Divider(
                      color: Colors.black26,
                      height: 36,
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 20,),
            Row(
              children: [
                Expanded(
                  child: LoginMethodButton(
                    text: 'Facebook',
                    onPressed: () {},
                  ),
                ),
                const SizedBox(
                  width: 10,
                ),
                Expanded(
                  child: LoginMethodButton(
                    text: 'Google',
                    onPressed: () {},
                  ),
                ),
              ],
            ),
            const Spacer(),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  'Already have an account?',
                  style: TextStyle(
                      fontSize: 14, fontFamily: 'Inter', color: Colors.black87),
                ),
                TextButton.icon(
                  onPressed: () {},
                  icon: const Text('LOGIN'),
                  label: const Icon(
                    Icons.arrow_forward,
                    size: 22,
                  ),
                  style: TextButton.styleFrom(
                    padding:
                    const EdgeInsets.symmetric(horizontal: 5),
                    backgroundColor: Colors.transparent,
                    foregroundColor: const Color.fromRGBO(48, 75, 206, 1),
                    textStyle: const TextStyle(
                      fontSize: 16,
                      fontFamily: 'Inter',
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
