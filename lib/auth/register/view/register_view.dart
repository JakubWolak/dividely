import 'package:flutter/material.dart';

import '../../../common_widgets/buttons/big_button.dart';
import '../../../common_widgets/buttons/login_method_button.dart';
import '../../../common_widgets/inputs/text_input.dart';

class RegisterView extends StatefulWidget {
  const RegisterView({super.key});

  @override
  State<RegisterView> createState() => _RegisterViewState();
}

class _RegisterViewState extends State<RegisterView> {
  bool _termsAccepted = false;

  void _onCheckboxChanged(bool? selected) {
    setState(() {
      _termsAccepted = selected ?? false;
    });
  }

  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
  }

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
              height: 40,
            ),
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
            const SizedBox(
              height: 12,
            ),
            Row(
              children: [
                Expanded(
                  child: Container(
                    margin: const EdgeInsets.only(left: 60, right: 18),
                    child: const Divider(
                      color: Colors.black38,
                      height: 36,
                    ),
                  ),
                ),
                const Text(
                  'or',
                  style: TextStyle(
                    fontSize: 15,
                    fontFamily: 'SourceSansProBold',
                    color: Colors.black45,
                  ),
                ),
                Expanded(
                  child: Container(
                    margin: const EdgeInsets.only(left: 18, right: 60),
                    child: const Divider(
                      color: Colors.black45,
                      height: 36,
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 12,
            ),
            const TextInput.email(hintText: 'Email'),
            const SizedBox(
              height: 12,
            ),
            const TextInput.password(hintText: 'Password'),
            const SizedBox(
              height: 12,
            ),
            const TextInput.password(hintText: 'Repeat password'),
            const SizedBox(
              height: 14,
            ),
            Row(
              children: [
                Checkbox(
                  onChanged: _onCheckboxChanged,
                  value: _termsAccepted,
                  checkColor: const Color.fromRGBO(255, 137, 126, 1),
                  fillColor: MaterialStateColor.resolveWith(
                    (states) => states.contains(MaterialState.selected)
                        ? const Color.fromRGBO(255, 137, 126, 0.16)
                        : const Color.fromRGBO(255, 137, 126, 1),
                  ),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(4),
                    // side: const BorderSide(
                    //   color: Colors.red,
                    //   width: 2,
                    // ),
                  ),
                ),
                GestureDetector(
                  onTap: () => _onCheckboxChanged(!_termsAccepted),
                  child: const Text(
                    "I've read and agree to terms of privacy policy",
                    style: TextStyle(
                        fontSize: 12,
                        fontFamily: 'Inter',
                        color: Colors.black54),
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 80,
            ),
            BigButton(
              text: 'Next',
              onPressed: () {},
              primaryColor: ButtonColor.orange,
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
