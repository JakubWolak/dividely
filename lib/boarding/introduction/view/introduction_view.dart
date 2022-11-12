import 'package:auto_route/auto_route.dart';
import 'package:dividely/boarding/introduction/pages/step_one_page.dart';
import 'package:dividely/boarding/introduction/pages/step_three_page.dart';
import 'package:dividely/boarding/introduction/pages/step_two_page.dart';
import 'package:dividely/common_widgets/buttons/blue_circular_button.dart';
import 'package:flutter/material.dart';

class IntroductionView extends StatefulWidget {
  const IntroductionView({super.key});

  @override
  State<IntroductionView> createState() => _IntroductionViewState();
}

class _IntroductionViewState extends State<IntroductionView>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    _tabController = TabController(length: 3, vsync: this);

    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
    _tabController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        actions: [
          TextButton(
            onPressed: () => context.router.pushNamed('/welcome-view'),
            child: const Text(
              'skip',
              style: TextStyle(
                color: Colors.black,
              ),
            ),
          ),
        ],
      ),
      body: TabBarView(
        controller: _tabController,
        children: const [
          StepOnePage(),
          StepTwoPage(),
          StepThreePage(),
        ],
      ),
      floatingActionButton: Padding(
        padding: const EdgeInsets.only(
          bottom: 25,
          right: 10,
        ),
        child: BlueCircularButton(
          text: 'NEXT',
          onPressed: () => _tabController.index == 2
              ? context.router.pushNamed('/welcome-view')
              : _tabController.animateTo(_tabController.index + 1),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.endDocked,
    );
  }
}
