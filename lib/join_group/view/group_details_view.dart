import 'package:flutter/material.dart';

import '../../common_widgets/buttons/shadow_icon_button.dart';

class GroupDetailsView extends StatefulWidget {
  const GroupDetailsView({super.key});

  @override
  State<GroupDetailsView> createState() => _GroupDetailsState();
}

class _GroupDetailsState extends State<GroupDetailsView> {
  @override
  Widget build(BuildContext context) {
    final paddingTop = MediaQuery.of(context).viewPadding.top;
    final paddingBottom = MediaQuery.of(context).viewPadding.bottom;

    return Scaffold(
      body: Container(
        width: double.infinity,
        height: MediaQuery.of(context).size.height,
        color: Colors.white,
        padding: EdgeInsets.only(
          top: paddingTop + 20,
          left: 20,
          right: 20,
          bottom: paddingBottom + 55,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              width: double.infinity,
              height: 180,
              decoration: BoxDecoration(
                image: const DecorationImage(
                  image: AssetImage('assets/images/temporary/netflix.png'),
                  fit: BoxFit.cover,
                  opacity: 0.45,
                ),
                borderRadius: BorderRadius.circular(25),
              ),
              child: Align(
                alignment: Alignment.topCenter,
                child: SizedBox(
                  width: double.infinity,
                  height: 140,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          const SizedBox(
                            width: 20,
                          ),
                          ShadowIconButton(
                            icon: Icons.arrow_back,
                            onPressed: () {},
                          ),
                        ],
                      ),
                      Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          ShadowIconButton(
                            icon: Icons.more_horiz,
                            onPressed: () {},
                          ),
                          const SizedBox(
                            width: 20,
                          )
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 40,
            ),
            const Text(
              'Details',
              style: TextStyle(
                fontSize: 36,
                fontFamily: 'GilroyBold',
                color: Colors.black87,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
