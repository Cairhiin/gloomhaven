import 'package:flutter/material.dart';
import '../components/fatmenu.dart';
import '../containers/intro.dart';
import '../containers/matchmaking.dart';
import '../containers/card_list.dart';
import '../containers/custom_content.dart';
import '../containers/gameboard.dart';
import '../containers/feature_list.dart';
import '../containers/footer.dart';
import '../main.dart';

class LandingPageView extends StatelessWidget {
  const LandingPageView({super.key});

  static const routeName = '/landingPage';

  @override
  Widget build(BuildContext context) {
    final args = ModalRoute.of(context)!.settings.arguments as ScreenArguments;
    return Center(
      child: Align(
        alignment: Alignment.topRight,
        child: Stack(children: [
          SingleChildScrollView(
            controller: args.scroller,
            child: Column(
              children: [
                IntroContainer(raisedButtonStyle: args.raisedButtonStyle),
                MatchmakingContainer(raisedButtonStyle: args.raisedButtonStyle),
                CardListContainer(raisedButtonStyle: args.raisedButtonStyle),
                const CustomContentContainer(),
                GameboardContainer(raisedButtonStyle: args.raisedButtonStyle),
                FeatureList(raisedButtonStyle: args.raisedButtonStyle),
                const Footer()
              ],
            ),
          ),
          Positioned(
            left: 0.0,
            top: 0.0,
            child: FatMenu(
              isVisible: args.isVisible,
            ),
          )
        ]),
      ),
    );
  }
}

class LandingPageViewPass extends StatelessWidget {
  const LandingPageViewPass(
      {super.key,
      required this.isVisible,
      required this.raisedButtonStyle,
      required this.scroller});

  final bool isVisible;
  final ButtonStyle raisedButtonStyle;
  final ScrollController scroller;

  @override
  Widget build(BuildContext context) {
    //final args = ModalRoute.of(context)!.settings.arguments as ScreenArguments;
    return Center(
      child: Align(
        alignment: Alignment.topRight,
        child: Stack(children: [
          SingleChildScrollView(
            controller: scroller,
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
              isVisible: isVisible,
            ),
          )
        ]),
      ),
    );
  }
}
