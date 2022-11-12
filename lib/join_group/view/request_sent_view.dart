import 'package:flutter/material.dart';

import '../../common_widgets/buttons/blue_button.dart';
import '../../common_widgets/buttons/small_blue_button.dart';

class RequestSentView extends StatelessWidget {
  const RequestSentView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: MediaQuery.of(context).size.height,
        color: Colors.white,
        alignment: Alignment.center,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Image(
              image: AssetImage(
                'assets/images/request_sent.png',
              ),
            ),
            const Text(
              'Request sent',
              style: TextStyle(
                fontFamily: 'GilroyBold',
                fontSize: 42,
                color: Colors.black87,
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            const Text(
              "We notified group's creator.\nPlease wait until confirmation.",
              style: TextStyle(
                fontFamily: 'Inter',
                fontSize: 18,
                color: Colors.black45,
              ),
              textAlign: TextAlign.center,
            ),
            const SizedBox(
              height: 60,
            ),
            SizedBox(
              width: 190,
              child: SmallBlueButton(
                text: 'Homepage',
                onPressed: () {},
              ),
            ),
          ],
        ),
      ),
    );
  }
}
