import 'package:flutter/material.dart';
import 'package:gloomhaven/components/featurecard.dart';

class CustomContentContainer extends StatelessWidget {
  const CustomContentContainer({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: AssetImage("assets/gloomhaven_bg_3.jpg"),
          fit: BoxFit.cover,
        ),
      ),
      child: Center(
          child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 0.0, vertical: 32.0),
        child: Column(
          children: [
            Text(
              "Create your own scenarios, dungeons and even campaigns",
              style: Theme.of(context).textTheme.headline2,
            ),
            Text(
              "or play content made by other players",
              style: Theme.of(context).textTheme.headline2,
            ),
            const SizedBox(height: 50.0),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                FeatureCard(
                  title: 'GAME EDITOR',
                  subheader: 'Create your own content',
                ),
                SizedBox(width: 10.0),
                FeatureCard(
                  title: 'STATE MANAGER',
                  subheader: 'Manage the state of an offline game',
                ),
              ],
            ),
            const SizedBox(height: 10.0),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                FeatureCard(
                  title: 'CUSTOM CONTENT',
                  subheader: 'Browse a list of player made content',
                ),
                SizedBox(width: 10.0),
                FeatureCard(
                  title: 'OFFLINE',
                  subheader: 'Take your game offline',
                ),
              ],
            ),
          ],
        ),
      )),
    );
  }
}
