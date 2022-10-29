import 'package:dividely/common_widgets/buttons/blue_circular_button.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class StepOnePage extends StatelessWidget {
  const StepOnePage({super.key});

  static const scanQrCodeImage = 'assets/images/scan_qr_code.png';

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        actions: [
          // Padding(
          //   padding: EdgeInsets.symmetric(
          //     horizontal: 20,
          //     vertical: 30,
          //   ),
          //   child:
            TextButton(
              onPressed: () {},
              child: const Text('skip', style: TextStyle(color: Colors.black,),),
            ),
          // ),
        ],
      ),
      body: Container(
        width: double.infinity,
        height: MediaQuery.of(context).size.height,
        color: Colors.white,
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Image(
                image: AssetImage(StepOnePage.scanQrCodeImage),
              ),
              // SizedBox(
              //   height: 30,
              // ),
              Text(
                'Scan QR code',
                style: TextStyle(
                  fontSize: 44,
                  fontFamily: 'GilroyBold',
                  color: Colors.black87,
                ),
              ),
              // SizedBox(
              //   height: 40,
              // ),
              Column(
                children: [
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
              SizedBox(
                height: 60,
              )
            ],
          ),
        ),
      ),
      floatingActionButton: Padding(
        padding: const EdgeInsets.only(
          bottom: 25,
          right: 10,
        ),
        child: BlueCircularButton(
          text: 'NEXT',
          onPressed: () {
            print('dalej dalej do nastepnej strony');
          },
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.endDocked,
    );
  }
}
