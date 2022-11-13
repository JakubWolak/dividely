import 'package:auto_route/auto_route.dart';
import 'package:dividely/common_widgets/buttons/shadow_icon_button.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class MemberDashboardView extends StatefulWidget {
  const MemberDashboardView({super.key});

  @override
  State<MemberDashboardView> createState() => _MemberDashboardState();
}

class _MemberDashboardState extends State<MemberDashboardView> {
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
          padding: const EdgeInsets.symmetric(vertical: 60),
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 40),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
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
                                  image: AssetImage(
                                    'assets/images/temporary/rudy.png',
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                        Container(
                          padding: const EdgeInsets.only(top: 50, bottom: 10),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              const Text(
                                'John Doe',
                                style: TextStyle(
                                  fontSize: 26,
                                  fontFamily: 'GilroyBold',
                                ),
                              ),
                              const SizedBox(
                                height: 5,
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: const [
                                      Icon(Icons.account_circle_outlined),
                                      SizedBox(width: 6),
                                      Text(
                                        'member',
                                        style: TextStyle(
                                            fontSize: 16, fontFamily: 'Inter'),
                                      ),
                                    ],
                                  ),
                                  const SizedBox(
                                    width: 40,
                                  ),
                                  TextButton(
                                    onPressed: () async {
                                      final prefs =
                                          await SharedPreferences.getInstance();
                                      await prefs.setBool('isCreator', true);

                                      await context.router
                                          .pushNamed('/creator-dashboard-view');
                                    },
                                    style: TextButton.styleFrom(),
                                    child: const Text('Become creator'),
                                  ),
                                ],
                              ),
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
                              backgroundColor:
                                  const Color.fromRGBO(244, 245, 246, 1),
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
                            onPressed: () =>
                                context.router.pushNamed('/join-group-view'),
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
                              backgroundColor:
                                  const Color.fromRGBO(244, 245, 246, 1),
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
                              backgroundColor:
                                  const Color.fromRGBO(244, 245, 246, 1),
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
                    height: 35,
                  ),
                  const Text(
                    'My groups',
                    style: TextStyle(
                      fontSize: 26,
                      fontFamily: 'GilroyBold',
                    ),
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 40),
              child: SizedBox(
                height: 160,
                child: ListView.separated(
                  physics: const BouncingScrollPhysics(),
                  scrollDirection: Axis.horizontal,
                  shrinkWrap: true,
                  itemCount: 10,
                  itemBuilder: (context, i) {
                    return Container(
                      width: 140,
                      height: 160,
                      padding: const EdgeInsets.symmetric(
                        horizontal: 20,
                        vertical: 10,
                      ),
                      alignment: Alignment.bottomLeft,
                      decoration: BoxDecoration(
                        image: const DecorationImage(
                          image:
                              AssetImage('assets/images/temporary/netflix.png'),
                          fit: BoxFit.cover,
                          opacity: 0.45,
                        ),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: const Text(
                        'Netflix',
                        style: TextStyle(
                          fontFamily: 'GilroyBold',
                          fontSize: 20,
                          color: Colors.white,
                        ),
                      ),
                    );
                  },
                  separatorBuilder: (_, __) {
                    return const SizedBox(
                      width: 22,
                    );
                  },
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 40),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(
                    height: 35,
                  ),
                  const Text(
                    'Soon payments',
                    style: TextStyle(
                      fontSize: 26,
                      fontFamily: 'GilroyBold',
                    ),
                  ),
                  ListView.separated(
                    shrinkWrap: true,
                    itemCount: 4,
                    physics: const NeverScrollableScrollPhysics(),
                    itemBuilder: (context, _) {
                      return Row(
                        children: [
                          Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              boxShadow: const [
                                BoxShadow(
                                  offset: Offset(0, 4),
                                  blurRadius: 12,
                                  color: Color.fromRGBO(49, 75, 206, 0.3),
                                ),
                              ],
                              color: Colors.white,
                            ),
                            height: 54,
                            width: 54,
                            child: const Image(
                              image: AssetImage(
                                'assets/images/temporary/spotify.png',
                              ),
                              opacity: AlwaysStoppedAnimation<double>(0.8),
                            ),
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: const [
                                Text(
                                  'Spotify Premium',
                                  style: TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.w500,
                                    fontFamily: 'Inter',
                                    color: Colors.black87,
                                  ),
                                ),
                                SizedBox(
                                  height: 6,
                                ),
                                Text(
                                  '23rd march 2022',
                                  style: TextStyle(
                                    fontSize: 12,
                                    fontFamily: 'Inter',
                                    color: Colors.black54,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          const Text(
                            r'12.5$',
                            style: TextStyle(
                              fontSize: 14,
                              fontFamily: 'Inter',
                              fontWeight: FontWeight.w700,
                              color: Colors.black87,
                            ),
                          ),
                        ],
                      );
                    },
                    separatorBuilder: (context, _) {
                      return const SizedBox(
                        height: 24,
                      );
                    },
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
