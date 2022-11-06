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
          physics: const BouncingScrollPhysics(),
          shrinkWrap: true,
          reverse: true,
          padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 60),
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                ShadowIconButton(
                  icon: Icons.menu,
                  onPressed: () {},
                ),
                ShadowIconButton(
                  icon: Icons.remove_sharp,
                  onPressed: () {},
                ),
              ],
            ),
            Container(
              margin: const EdgeInsets.only(top: 30),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: const Color.fromRGBO(245, 246, 250, 1),
              ),
              child: Column(
                children: [
                  Align(
                    alignment: Alignment.topCenter,
                    child: SizedBox(
                      width: 100,
                      height: 10,
                      child: OverflowBox(
                        maxHeight: 68,
                        maxWidth: 68,
                        minHeight: 68,
                        minWidth: 68,
                        child: DecoratedBox(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: const Image(
                            image:
                                AssetImage('assets/images/temporary/rudy.png'),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.only(top: 50, bottom: 20),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Text(
                          'John Doe',
                          style:
                              TextStyle(fontSize: 26, fontFamily: 'GilroyBold'),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: const [
                            Icon(Icons.account_circle_outlined),
                            SizedBox(width: 6),
                            Text(
                              'creator',
                              style:
                                  TextStyle(fontSize: 16, fontFamily: 'Inter'),
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 25,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                        shape: const CircleBorder(),
                        backgroundColor: const Color.fromRGBO(244, 245, 246, 1),
                        foregroundColor: Colors.black87,
                        padding: EdgeInsets.zero,
                        elevation: 0,
                        shadowColor: Colors.black38,
                        minimumSize: const Size.square(53),
                      ),
                      child: const Icon(
                        Icons.sync_alt,
                        size: 22,
                      ),
                    ),
                    const SizedBox(
                      height: 6,
                    ),
                    const Text(
                      'Transfer',
                      style: TextStyle(
                        fontSize: 12,
                        fontFamily: 'Inter',
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ],
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                        shape: const CircleBorder(),
                        backgroundColor:
                            const Color.fromRGBO(255, 137, 126, 0.3),
                        foregroundColor: Colors.black87,
                        padding: EdgeInsets.zero,
                        elevation: 0,
                        shadowColor: Colors.black38,
                        minimumSize: const Size.square(53),
                      ),
                      child: const Icon(
                        Icons.person_add_outlined,
                        size: 22,
                      ),
                    ),
                    const SizedBox(
                      height: 6,
                    ),
                    const Text(
                      'Join group',
                      style: TextStyle(
                        fontSize: 12,
                        fontFamily: 'Inter',
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ],
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                        shape: const CircleBorder(),
                        backgroundColor: const Color.fromRGBO(244, 245, 246, 1),
                        foregroundColor: Colors.black87,
                        padding: EdgeInsets.zero,
                        elevation: 0,
                        shadowColor: Colors.black38,
                        minimumSize: const Size.square(53),
                      ),
                      child: const Icon(
                        Icons.shopping_bag_outlined,
                        size: 22,
                      ),
                    ),
                    const SizedBox(
                      height: 6,
                    ),
                    const Text(
                      'Add group',
                      style: TextStyle(
                        fontSize: 12,
                        fontFamily: 'Inter',
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ],
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                        shape: const CircleBorder(),
                        backgroundColor: const Color.fromRGBO(244, 245, 246, 1),
                        foregroundColor: Colors.black87,
                        padding: EdgeInsets.zero,
                        elevation: 0,
                        shadowColor: Colors.black38,
                        minimumSize: const Size.square(53),
                      ),
                      child: const Icon(
                        Icons.history_outlined,
                        size: 22,
                      ),
                    ),
                    const SizedBox(
                      height: 6,
                    ),
                    const Text(
                      'History',
                      style: TextStyle(
                        fontSize: 12,
                        fontFamily: 'Inter',
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ],
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                        shape: const CircleBorder(),
                        backgroundColor: const Color.fromRGBO(244, 245, 246, 1),
                        foregroundColor: Colors.black87,
                        padding: EdgeInsets.zero,
                        elevation: 0,
                        shadowColor: Colors.black38,
                        minimumSize: const Size.square(53),
                      ),
                      child: const Icon(
                        Icons.fact_check_outlined,
                        size: 22,
                      ),
                    ),
                    const SizedBox(
                      height: 6,
                    ),
                    const Text(
                      'Pending\nrequests',
                      style: TextStyle(
                        fontSize: 12,
                        fontFamily: 'Inter',
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ],
                ),
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            Row(
              children: [
                Expanded(
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      color: const Color.fromRGBO(255, 137, 126, 1),
                      boxShadow: const [
                        BoxShadow(
                          color: Color.fromRGBO(255, 137, 126, 0.28),
                          offset: Offset(0, 10),
                          blurRadius: 25,
                          spreadRadius: 2,
                        ),
                      ],
                    ),
                    padding: const EdgeInsets.symmetric(vertical: 10),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: const [
                        Text(
                          'Balance',
                          style: TextStyle(
                            fontSize: 14,
                            color: Colors.white,
                          ),
                        ),
                        Text(
                          r'$255,000',
                          style: TextStyle(
                            fontSize: 24,
                            fontFamily: 'NotoSerif',
                            color: Colors.white,
                            fontWeight: FontWeight.w600,
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                const SizedBox(
                  width: 10,
                ),
                Expanded(
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      color: const Color.fromRGBO(49, 75, 206, 1),
                      boxShadow: const [
                        BoxShadow(
                          color: Color.fromRGBO(49, 75, 206, 0.3),
                          offset: Offset(0, 10),
                          blurRadius: 25,
                          spreadRadius: 2,
                        ),
                      ],
                    ),
                    padding: const EdgeInsets.symmetric(vertical: 10),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: const [
                        Text(
                          'Balance',
                          style: TextStyle(
                            fontSize: 14,
                            color: Colors.white,
                          ),
                        ),
                        Text(
                          r'$255,000',
                          style: TextStyle(
                            fontSize: 24,
                            fontFamily: 'NotoSerif',
                            color: Colors.white,
                            fontWeight: FontWeight.w600,
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 500,
            ),
          ].reversed.toList(),
        ),
      ),
    );
  }
}
