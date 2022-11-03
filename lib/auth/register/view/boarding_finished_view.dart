import 'package:dividely/common_widgets/buttons/white_button.dart';
import 'package:flutter/material.dart';

class BoardingFinishedView extends StatelessWidget {
  const BoardingFinishedView({super.key});

  static const boardingSuccessfulImage =
      'assets/images/boarding_successful.png';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromRGBO(49, 75, 206, 1),
      body: Container(
        width: double.infinity,
        height: MediaQuery.of(context).size.height,
        padding: const EdgeInsets.symmetric(
          horizontal: 42,
          vertical: 100,
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Image(
              image: AssetImage(BoardingFinishedView.boardingSuccessfulImage),
            ),
            const Text(
              'Welcome Michael!',
              style: TextStyle(
                  fontFamily: 'GilroyBold', fontSize: 36, color: Colors.white),
            ),
            const SizedBox(
              height: 22,
            ),
            const Text(
              'It seems everything went well and your\napp is ready to work with you',
              style: TextStyle(
                fontFamily: 'Inter',
                fontSize: 17,
                color: Colors.white,
              ),
              textAlign: TextAlign.center,
            ),
            const SizedBox(
              height: 40,
            ),
            SizedBox(
              width: 185,
              child: WhiteButton(
                text: 'Get Started',
                onPressed: () {},
              ),
            )
          ],
        ),
      ),
    );
  }
}
