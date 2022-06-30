import 'package:flutter/material.dart';
import '/components/featurecard.dart';

class IntroContainer extends StatelessWidget {
  const IntroContainer({
    Key? key,
    required this.raisedButtonStyle,
  }) : super(key: key);

  final ButtonStyle raisedButtonStyle;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: AssetImage("assets/gloomhaven_bg_1.jpg"),
          fit: BoxFit.cover,
        ),
      ),
      child: Center(
          child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 0.0, vertical: 52.0),
        child: Column(
          children: [
            Text(
              "Dive into the world of Gloomhaven",
              style: Theme.of(context).textTheme.headline2,
            ),
            Text(
              "and familiarize yourself with the game",
              style: Theme.of(context).textTheme.headline2,
            ),
            const SizedBox(height: 50.0),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                FeatureCard(
                  title: 'CHEAT SHEET',
                  subheader: 'A quick overview of the rules',
                ),
                SizedBox(width: 10.0),
                FeatureCard(
                  title: 'RULES MANUAL',
                  subheader: 'All the rules in detail',
                ),
              ],
            ),
            const SizedBox(height: 10.0),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                FeatureCard(
                  title: 'VIDEOS',
                  subheader: 'Quality gameplay videos',
                ),
                SizedBox(width: 10.0),
                FeatureCard(
                  title: 'TUTORIALS',
                  subheader: 'The best place to start for beginners',
                ),
              ],
            ),
          ],
        ),
      )),
    );
  }
}
