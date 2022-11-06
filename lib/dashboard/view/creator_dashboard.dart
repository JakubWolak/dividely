import 'package:dividely/common_widgets/buttons/shadow_icon_button.dart';
import 'package:flutter/material.dart';

class CreatorDashboardView extends StatefulWidget {
  const CreatorDashboardView({super.key});

  @override
  State<CreatorDashboardView> createState() => _CreatorDashboardState();
}

class _CreatorDashboardState extends State<CreatorDashboardView> {
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
          padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 60),
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                ShadowIconButton(icon: Icons.menu, onPressed: () {},),
                ShadowIconButton(icon: Icons.remove_sharp, onPressed: () {},),
              ],
            ),


            SizedBox(height: 1000,),
          ].reversed.toList(),
        ),
      ),
    );
  }
}