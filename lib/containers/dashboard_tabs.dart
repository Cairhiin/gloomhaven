import 'package:flutter/material.dart';
import 'package:gloomhaven/components/dashboard/dashboard_tab_stats.dart';
import 'package:gloomhaven/components/dashboard/dashboard_tab_achievements.dart';

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
        foregroundColor: MaterialStateProperty.all(const Color(0xff534340)));

    final ButtonStyle menuSelectedButtonStyle = ButtonStyle(
        backgroundColor:
            MaterialStateProperty.all(Theme.of(context).colorScheme.secondary),
        foregroundColor: MaterialStateProperty.all(Colors.white));

    const TextStyle buttonTextStyle = TextStyle(fontWeight: FontWeight.bold);

    final ButtonStyle actionButtonStyle = ButtonStyle(
        backgroundColor:
            MaterialStateProperty.all(Theme.of(context).primaryColor));

    final tabs = [
      StatisticTab(actionButtonStyle: actionButtonStyle),
      AchievementTab(actionButtonStyle: actionButtonStyle),
    ];

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
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 28.0),
                  child: TextButton(
                      style: _currentPageIndex == 0
                          ? menuSelectedButtonStyle
                          : menuButtonStyle,
                      onPressed: () {
                        _setSelectedTab(0);
                      },
                      child: const Text('STATISTICS', style: buttonTextStyle)),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 28.0),
                  child: TextButton(
                      style: _currentPageIndex == 1
                          ? menuSelectedButtonStyle
                          : menuButtonStyle,
                      onPressed: () {
                        _setSelectedTab(1);
                      },
                      child:
                          const Text('ACHIEVEMENTS', style: buttonTextStyle)),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 28.0),
                  child: TextButton(
                      style: _currentPageIndex == 2
                          ? menuSelectedButtonStyle
                          : menuButtonStyle,
                      onPressed: null,
                      child: const Text('BADGES', style: buttonTextStyle)),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 28.0),
                  child: TextButton(
                      style: _currentPageIndex == 3
                          ? menuSelectedButtonStyle
                          : menuButtonStyle,
                      onPressed: null,
                      child: const Text('TITLES', style: buttonTextStyle)),
                ),
              ],
            ),
          ),
        ),
        const SizedBox(height: 32.0),
        tabs[_currentPageIndex]
      ],
    );
  }
}
