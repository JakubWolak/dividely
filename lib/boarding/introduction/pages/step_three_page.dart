import 'package:flutter/material.dart';

class StepThreePage extends StatelessWidget {
  const StepThreePage({super.key});

  static const getAccessImage = 'assets/images/get_access.png';

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: MediaQuery.of(context).size.height,
      color: Colors.white,
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: const [
            Image(
              image: AssetImage(StepThreePage.getAccessImage),
            ),
            Text(
              'Get access to credentials',
              style: TextStyle(
                fontSize: 44,
                fontFamily: 'GilroyBold',
                color: Colors.black87,
              ),
            ),
            Text(
              'Now you can enjoy sharing your service!',
              style: TextStyle(
                fontSize: 18,
                fontFamily: 'InterRegular',
                color: Colors.black,
              ),
            ),
            SizedBox(
              height: 60,
            )
          ],
        ),
      ),
    );
  }
}
