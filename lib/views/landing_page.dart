import 'package:flutter/material.dart';
import 'dart:math' as math;
import '../components/fatmenu.dart';
import '../containers/intro.dart';
import '../containers/matchmaking.dart';
import '../containers/card_list.dart';
import '../containers/custom_content.dart';
import '../containers/gameboard.dart';
import '../containers/feature_list.dart';
import '../containers/footer.dart';
import '../views/dashboard.dart';

class LandingPageView extends StatefulWidget {
  const LandingPageView({Key? key}) : super(key: key);

  static const routeName = '/landingPage';

  @override
  State<LandingPageView> createState() => _LandingPageView();
}

class _LandingPageView extends State<LandingPageView> {
  bool _isVisible = false;
  double turns = 0.0;
  final ScrollController _scroller = ScrollController();

  void _toggleFatMenu() {
    setState(() {
      _isVisible = !_isVisible;
    });
  }

  void _changeRotation() {
    setState(() => turns += 4 / 8.0);
  }

  void _scrollToTop() {
    if (_scroller.hasClients) {
      _scroller.animateTo(0,
          duration: const Duration(seconds: 1), curve: Curves.easeOut);
    }
  }

  @override
  Widget build(BuildContext context) {
    final ButtonStyle raisedButtonStyle = ElevatedButton.styleFrom(
      primary: Theme.of(context).primaryColor,
      minimumSize: const Size(88, 45),
      padding: const EdgeInsets.symmetric(horizontal: 16),
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.all(Radius.circular(5)),
      ),
    );

    final ButtonStyle buttonStyle =
        TextButton.styleFrom(primary: Theme.of(context).colorScheme.onPrimary);

    return Scaffold(
      appBar: AppBar(
        leadingWidth: 250.0,
        leading: Image.asset('assets/logo.png'),
        title: ButtonBar(
          alignment: MainAxisAlignment.start,
          children: [
            TextButton(
              style: buttonStyle,
              onPressed: () {},
              child: Text('HOME', style: Theme.of(context).textTheme.headline4),
            ),
            TextButton(
              style: buttonStyle,
              onPressed: () {},
              child: Text(
                'QUICK PLAY',
                style: Theme.of(context).textTheme.headline4,
              ),
            ),
            TextButton(
              style: buttonStyle,
              onPressed: () {},
              child: Row(
                children: [
                  Text(
                    'RULES',
                    style: Theme.of(context).textTheme.headline4,
                  ),
                  AnimatedRotation(
                    turns: 0,
                    duration: const Duration(milliseconds: 300),
                    child: Transform.rotate(
                      angle: -90 * math.pi / 180,
                      child: const Icon(
                        Icons.chevron_left,
                        size: 24.0,
                      ),
                    ),
                  )
                ],
              ),
            ),
            TextButton(
              style: buttonStyle,
              onPressed: () {
                _toggleFatMenu();
                _changeRotation();
              },
              child: Row(
                children: [
                  Text(
                    'FEATURES',
                    style: Theme.of(context).textTheme.headline4,
                  ),
                  AnimatedRotation(
                    turns: turns,
                    duration: const Duration(milliseconds: 300),
                    child: Transform.rotate(
                      angle: -90 * math.pi / 180,
                      child: const Icon(
                        Icons.chevron_left,
                        size: 24.0,
                      ),
                    ),
                  )
                ],
              ),
            ),
            TextButton(
              style: buttonStyle,
              onPressed: () {},
              child: Text(
                'GAME EDITOR',
                style: Theme.of(context).textTheme.headline4,
              ),
            ),
            const SizedBox(width: 150.0),
          ],
        ),
        actions: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Row(
                children: [
                  TextButton(
                    style: buttonStyle,
                    onPressed: () {
                      Navigator.pushNamed(context, DashboardView.routeName);
                    },
                    child: Text(
                      'LOG IN',
                      style: Theme.of(context).textTheme.headline4,
                    ),
                  ),
                  TextButton(
                    style: buttonStyle,
                    onPressed: () {},
                    child: Text(
                      'SIGN UP',
                      style: Theme.of(context).textTheme.headline4,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
      body: Center(
        child: Align(
          alignment: Alignment.topRight,
          child: Stack(children: [
            SingleChildScrollView(
              primary: false,
              controller: _scroller,
              child: Column(
                children: [
                  IntroContainer(raisedButtonStyle: raisedButtonStyle),
                  MatchmakingContainer(raisedButtonStyle: raisedButtonStyle),
                  CardListContainer(raisedButtonStyle: raisedButtonStyle),
                  const CustomContentContainer(),
                  GameboardContainer(raisedButtonStyle: raisedButtonStyle),
                  FeatureList(raisedButtonStyle: raisedButtonStyle),
                  const Footer()
                ],
              ),
            ),
            Positioned(
              left: 0.0,
              top: 0.0,
              child: FatMenu(
                isVisible: _isVisible,
              ),
            )
          ]),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          _scrollToTop();
        },
        tooltip: 'To top',
        backgroundColor: Theme.of(context).primaryColor,
        child: const Icon(Icons.arrow_upward_outlined),
      ),
    );
  }
}
