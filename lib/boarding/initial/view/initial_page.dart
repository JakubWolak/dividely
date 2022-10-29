import 'package:dividely/common_widgets/buttons/blue_button.dart';
import 'package:flutter/material.dart';

class InitialPage extends StatelessWidget {
  const InitialPage({super.key});

  static const walletLogo = 'assets/images/wallet.png';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromRGBO(255, 137, 126, 1),
      body: Container(
        padding: const EdgeInsets.all(50),
        width: double.infinity,
        height: MediaQuery.of(context).size.height,
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Image(image: AssetImage(InitialPage.walletLogo)),
              const SizedBox(
                height: 30,
              ),
              const Text(
                'Dividely',
                style: TextStyle(
                  fontSize: 65,
                  fontFamily: 'GilroyBold',
                  color: Colors.white,
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              const Text(
                'Share your subscriptions.',
                style: TextStyle(
                  fontSize: 18,
                  fontFamily: 'InterRegular',
                  color: Colors.white,
                ),
              ),
              const Text(
                'Easily.',
                style: TextStyle(
                  fontSize: 18,
                  fontFamily: 'InterRegular',
                  color: Colors.white,
                ),
              ),
              const SizedBox(
                height: 50,
              ),
              BlueButton(
                text: 'Get started now!',
                onPressed: () {
                  print('eeee no elo elo');
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
