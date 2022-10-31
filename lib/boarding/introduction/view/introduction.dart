import 'package:dividely/boarding/introduction/pages/step_one_page.dart';
import 'package:dividely/boarding/introduction/pages/step_three_page.dart';
import 'package:dividely/boarding/introduction/pages/step_two_page.dart';
import 'package:dividely/common_widgets/buttons/blue_circular_button.dart';
import 'package:flutter/material.dart';

class IntroductionPage extends StatefulWidget {
  const IntroductionPage({super.key});

  @override
  _IntroductionPageState createState() => _IntroductionPageState();
}

class _IntroductionPageState extends State<IntroductionPage>
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
            onPressed: () {},
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
          onPressed: () => _tabController.animateTo(_tabController.index + 1),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.endDocked,
    );
  }
}
