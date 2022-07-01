import 'package:flutter/material.dart';
import '/components/featurecard.dart';

class FeatureList extends StatelessWidget {
  const FeatureList({
    Key? key,
    required this.raisedButtonStyle,
  }) : super(key: key);

  final ButtonStyle raisedButtonStyle;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: AssetImage("assets/gloomhaven_bg_5.jpg"),
          fit: BoxFit.cover,
        ),
      ),
      child: Center(
          child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 0.0, vertical: 32.0),
        child: Column(
          children: [
            Text(
              "Subscribe and play Gloomhaven without limits",
              style: Theme.of(context).textTheme.headline2,
            ),
            Text(
              "with access to all current and future Gloomhaven ",
              style: Theme.of(context).textTheme.headline2,
            ),
            Text(
              "expansions at no further cost",
              style: Theme.of(context).textTheme.headline2,
            ),
            const SizedBox(height: 50.0),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                FeatureCard(
                  title: 'EXPANSIONS',
                  subheader: 'Frosthaven and all future expansions',
                ),
                SizedBox(width: 10.0),
                FeatureCard(
                  title: 'SOCIAL TOOLS',
                  subheader: 'Private lobbies and video chat',
                ),
              ],
            ),
            const SizedBox(height: 10.0),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                FeatureCard(
                  title: 'REWARDS',
                  subheader: 'Earn achievements, and cosmetics',
                ),
                SizedBox(width: 10.0),
                FeatureCard(
                  title: 'THREE GAME MODES',
                  subheader: 'Play campaign, scenarios or dungeons',
                ),
              ],
            ),
            const SizedBox(height: 32.0),
            Center(
                child: ElevatedButton(
                    style: raisedButtonStyle,
                    onPressed: () {},
                    child: const Text('Create trial account'))),
          ],
        ),
      )),
    );
  }
}
