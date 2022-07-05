import 'package:flutter/material.dart';
import 'dashboard_level_card.dart';
import 'dashboard_friends_card.dart';

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
                        child:
                            const Text('STATISTICS', style: buttonTextStyle)),
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
                        child:
                            const Text('ACHIEVEMENTS', style: buttonTextStyle)),
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
                        child: const Text('BADGES', style: buttonTextStyle)),
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
                        child: const Text('TITLES', style: buttonTextStyle)),
                  ),
                ),
              ],
            ),
          ),
        ),
        const SizedBox(height: 32.0),
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            const MyLevelCard(),
            const SizedBox(width: 22.0),
            FriendsCard(actionButtonStyle: actionButtonStyle),
          ],
        ),
        const SizedBox(height: 16.0),
        const Text("MY HEROES",
            style: TextStyle(
                fontSize: 36.0,
                fontWeight: FontWeight.bold,
                color: Color(0xff534340))),
        const SizedBox(height: 16.0),
        const Card(
            elevation: 2.0,
            color: const Color(0xffF4E9E8),
            shape: RoundedRectangleBorder(
              borderRadius: const BorderRadius.all(Radius.circular(12)),
            ),
            child: Padding(
              padding:
                  const EdgeInsets.symmetric(vertical: 15.0, horizontal: 20.0),
              child: SizedBox(
                width: 315.0,
                height: 215.0,
              ),
            ))
      ],
    );
  }
}
