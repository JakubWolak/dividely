import 'package:flutter/material.dart';
import 'package:mobile_scanner/mobile_scanner.dart';

import '../../common_widgets/buttons/shadow_icon_button.dart';

class ScanQrCodeView extends StatefulWidget {
  const ScanQrCodeView({super.key});

  @override
  State<ScanQrCodeView> createState() => _ScanQrCodeState();
}

class _ScanQrCodeState extends State<ScanQrCodeView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: MediaQuery.of(context).size.height,
        color: Colors.white,
        padding: const EdgeInsets.only(
          top: 60,
          left: 40,
          right: 40,
          bottom: 65,
        ),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                ShadowIconButton(
                  icon: Icons.arrow_back,
                  onPressed: () {},
                ),
              ],
            ),
            const SizedBox(
              height: 25,
            ),
            const Text(
              'Join a group',
              style: TextStyle(
                fontSize: 18,
                fontFamily: 'Inter',
                fontWeight: FontWeight.w500,
                color: Colors.black54,
              ),
            ),
            const SizedBox(
              height: 14,
            ),
            const Text(
              'Scan QR code',
              style: TextStyle(
                fontSize: 44,
                fontFamily: 'GilroyBold',
                color: Colors.black87,
              ),
            ),
            const SizedBox(
              height: 60,
            ),
            AspectRatio(
              aspectRatio: 1,
              child: DecoratedBox(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                ),
                child: MobileScanner(
                  fit: BoxFit.fitWidth,
                  allowDuplicates: false,
                  controller: MobileScannerController(
                    formats: [BarcodeFormat.qrCode]
                  ),
                  onDetect: (barcode, args) {
                    if (barcode.rawValue == null) {
                      debugPrint('Failed to scan Barcode');
                    } else {
                      final String code = barcode.rawValue!;
                      debugPrint('Barcode found! $code');
                    }
                  },
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
