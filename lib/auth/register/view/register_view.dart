import 'package:flutter/material.dart';

import '../../../common_widgets/buttons/login_method_button.dart';
import '../../../common_widgets/inputs/text_input.dart';

class RegisterView extends StatefulWidget {
  const RegisterView({super.key});

  @override
  State<RegisterView> createState() => _RegisterViewState();
}

class _RegisterViewState extends State<RegisterView> {
  final FocusNode _emailFocus = FocusNode();
  late TextEditingController _emailController;

  @override
  void initState() {
    _emailController = TextEditingController();

    _emailFocus.addListener(_onFocusChange);

    super.initState();
  }

  void _onFocusChange() {
    debugPrint('Focus: ${_emailFocus.hasFocus.toString()}');
  }

  @override
  void dispose() {
    super.dispose();

    _emailFocus
      ..removeListener(_onFocusChange)
      ..dispose();
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
          bottom: 45,
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
          ],
        ),
      ),
    );
  }
}
