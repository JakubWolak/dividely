import 'package:flutter/material.dart';

class StepOnePage extends StatelessWidget {
  const StepOnePage({super.key});

  static const scanQrCodeImage = 'assets/images/scan_qr_code.png';

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: MediaQuery.of(context).size.height,
      color: Colors.white,
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            const Image(
              image: AssetImage(StepOnePage.scanQrCodeImage),
            ),
            const Text(
              'Scan QR code',
              style: TextStyle(
                fontSize: 44,
                fontFamily: 'GilroyBold',
                color: Colors.black87,
              ),
            ),
            Column(
              children: const [
                Text(
                  "It's that simple!",
                  style: TextStyle(
                    fontSize: 18,
                    fontFamily: 'InterRegular',
                    color: Colors.black,
                  ),
                ),
                Text(
                  'Just add it and join the group.',
                  style: TextStyle(
                    fontSize: 18,
                    fontFamily: 'InterRegular',
                    color: Colors.black,
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 60,
            )
          ],
        ),
      ),
    );
  }
}
