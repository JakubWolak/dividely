import 'package:dividely/common_widgets/buttons/big_button.dart';
import 'package:dividely/common_widgets/inputs/text_input.dart';
import 'package:flutter/material.dart';

import 'package:dividely/common_widgets/buttons/login_method_button.dart';
import 'package:modal_bottom_sheet/modal_bottom_sheet.dart';

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
        color: Colors.white,
        child: ListView(
          shrinkWrap: true,
          reverse: true,
          padding: const EdgeInsets.only(
            top: 90,
            left: 40,
            right: 40,
            bottom: 30,
          ),
          // crossAxisAlignment: CrossAxisAlignment.start,
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
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  TextSpan(text: 'and '),
                  TextSpan(
                    text: 'location ',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
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
                fontFamily: 'Inter',
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(
              height: 12,
            ),
            GestureDetector(
              onTap: () {
                showMaterialModalBottomSheet(
                  context: context,
                  shape: const RoundedRectangleBorder(
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(25),
                      topRight: Radius.circular(25),
                    ),
                  ),
                  builder: (context) => SingleChildScrollView(
                    controller: ModalScrollController.of(context),
                    child: Container(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 20,
                        vertical: 50,
                      ),
                      child: Row(
                        children: const [
                          Image(
                            image:
                                AssetImage('assets/images/temporary/flag.png'),
                          ),
                          SizedBox(
                            width: 14,
                          ),
                          VerticalDivider(
                            color: Colors.black26,
                          ),
                          SizedBox(
                            width: 8,
                          ),
                          Text(
                            'Poland',
                            style: TextStyle(
                              fontFamily: 'Inter',
                              fontSize: 14,
                              color: Colors.black54,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                );
              },
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  boxShadow: const [
                    BoxShadow(
                      color: Color.fromRGBO(0, 0, 0, 0.1),
                      blurRadius: 15,
                      offset: Offset(0, 6),
                    ),
                  ],
                  borderRadius: BorderRadius.circular(5),
                ),
                height: 53,
                padding:
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: const [
                        Image(
                          image: AssetImage('assets/images/temporary/flag.png'),
                        ),
                        SizedBox(
                          width: 14,
                        ),
                        VerticalDivider(
                          color: Colors.black26,
                        ),
                        SizedBox(
                          width: 8,
                        ),
                        Text(
                          'Poland',
                          style: TextStyle(
                            fontFamily: 'Inter',
                            fontSize: 14,
                            color: Colors.black54,
                          ),
                        ),
                      ],
                    ),
                    const Icon(
                      Icons.keyboard_arrow_down,
                      size: 22,
                    )
                  ],
                ),
              ),
            ),
            const SizedBox(
              height: 12,
            ),
            const SizedBox(
              height: 26,
            ),
            const Text(
              'Enter your location',
              style: TextStyle(
                fontFamily: 'Inter',
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
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
            const SizedBox(
              height: 20,
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
            // const Spacer(),
            const SizedBox(
              height: 40,
            ),
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
                    padding: const EdgeInsets.symmetric(horizontal: 5),
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
          ].reversed.toList(),
        ),
      ),
    );
  }
}
