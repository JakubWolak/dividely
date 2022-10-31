import 'package:flutter/material.dart';

class StepTwoPage extends StatelessWidget {
  const StepTwoPage({super.key});

  static const makePaymentImage = 'assets/images/make_payment.png';

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: MediaQuery.of(context).size.height,
      color: Colors.white,
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 40, vertical: 0),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              const Image(
                image: AssetImage(StepTwoPage.makePaymentImage),
              ),
              const Text(
                'Make payment',
                style: TextStyle(
                  fontSize: 44,
                  fontFamily: 'GilroyBold',
                  color: Colors.black87,
                ),
              ),
              Column(
                children: const [
                  Text(
                    'We’ve got wide variety of payment methods.',
                    style: TextStyle(
                      fontSize: 18,
                      fontFamily: 'InterRegular',
                      color: Colors.black,
                    ),
                    textAlign: TextAlign.center,
                  ),
                  SizedBox(height: 20,),
                  Text(
                    'Over 20 methods to meet your expectations.',
                    style: TextStyle(
                      fontSize: 14,
                      fontFamily: 'InterRegular',
                      color: Colors.black,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ],
              ),
              const SizedBox(
                height: 60,
              )
            ],
          ),
        ),
      ),
    );
  }
}
