import 'package:flutter/material.dart';

class DashboardTabs extends StatefulWidget {
  const DashboardTabs({Key? key}) : super(key: key);

  @override
  State<DashboardTabs> createState() => _DashboardTabsState();
}

class _DashboardTabsState extends State<DashboardTabs> {
  int _currentPageIndex = 0;

  void _setSelectedTab(int number) {
    setState(() {
      _currentPageIndex = number;
    });
  }

  @override
  Widget build(BuildContext context) {
    final ButtonStyle menuButtonStyle = ButtonStyle(
        backgroundColor: MaterialStateProperty.all(const Color(0xffFFDAD2)),
        foregroundColor: MaterialStateProperty.all(const Color(0xff534340)));

    final ButtonStyle menuSelectedButtonStyle = ButtonStyle(
        backgroundColor:
            MaterialStateProperty.all(Theme.of(context).colorScheme.secondary),
        foregroundColor: MaterialStateProperty.all(Colors.white));

    return Column(
      children: [
        SizedBox(
          width: 744.0,
          height: 80,
          child: Container(
            decoration: BoxDecoration(
                color: const Color(0xffB22A16).withOpacity(0.05),
                border: Border.all(
                  color: const Color(0xffB22A16).withOpacity(0.00),
                ),
                borderRadius: const BorderRadius.all(Radius.circular(8))),
            child: Row(
              children: [
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 28.0),
                    child: TextButton(
                        style: menuSelectedButtonStyle,
                        onPressed: () {
                          _setSelectedTab(0);
                        },
                        child: const Text('Statistics')),
                  ),
                ),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 28.0),
                    child: TextButton(
                        style: menuButtonStyle,
                        onPressed: () {
                          _setSelectedTab(1);
                        },
                        child: const Text('Achievements')),
                  ),
                ),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 28.0),
                    child: TextButton(
                        style: menuButtonStyle,
                        onPressed: () {
                          _setSelectedTab(2);
                        },
                        child: const Text('Badges')),
                  ),
                ),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 28.0),
                    child: TextButton(
                        style: menuButtonStyle,
                        onPressed: () {
                          _setSelectedTab(3);
                        },
                        child: const Text('Titles')),
                  ),
                ),
              ],
            ),
          ),
        ),
        const SizedBox(height: 32.0),
        Container(
            decoration: BoxDecoration(
                color: const Color(0xffB22A16).withOpacity(0.05),
                border: Border.all(
                  color: const Color(0xffB22A16).withOpacity(0.00),
                ),
                borderRadius: const BorderRadius.all(Radius.circular(8))),
            child: Row(
              children: [
                Card(
                    elevation: 4.0,
                    child: Padding(
                        padding: const EdgeInsets.symmetric(
                            vertical: 20.0, horizontal: 20.0),
                        child: SizedBox(
                            width: 250.0, height: 275.0, child: Column())))
              ],
            )),
      ],
    );
  }
}
