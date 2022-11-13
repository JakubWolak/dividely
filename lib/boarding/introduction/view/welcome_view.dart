import 'package:auto_route/auto_route.dart';
import 'package:dividely/common_widgets/buttons/white_continue_button.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class WelcomeView extends StatelessWidget {
  const WelcomeView({super.key});

  static const welcomeImage = 'assets/images/welcome.png';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: MediaQuery.of(context).size.height,
        color: const Color.fromRGBO(49, 75, 206, 1),
        padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Image(
              image: AssetImage(WelcomeView.welcomeImage),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const [
                Text(
                  'Welcome',
                  style: TextStyle(
                    fontSize: 44,
                    color: Colors.white,
                    fontFamily: 'GilroyBold',
                  ),
                ),
                SizedBox(
                  height: 15,
                ),
                Text(
                  'Stay on top by effortlessly sharing your subscriptions.',
                  style: TextStyle(
                      fontSize: 18, color: Colors.white, fontFamily: 'Inter'),
                ),
              ],
            )
          ],
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: Padding(
        padding: const EdgeInsets.only(bottom: 30),
        child: WhiteContinueButton(
          onPressed: () => SharedPreferences.getInstance()
              .then((pref) => pref.setBool('boardingFinished', true))
              .then(
                (_) => context.router.pushNamed(
                  '/register-view',
                ),
              ),
        ),
      ),
    );
  }
}
