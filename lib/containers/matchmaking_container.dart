import 'package:flutter/material.dart';

class MatchmakingContainer extends StatelessWidget {
  const MatchmakingContainer({
    Key? key,
    required this.raisedButtonStyle,
  }) : super(key: key);

  final ButtonStyle raisedButtonStyle;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: AssetImage("assets/gloomhaven_bg_2.png"),
          fit: BoxFit.cover,
          opacity: 0.12,
        ),
      ),
      child: Center(
          child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 0.0, vertical: 32.0),
        child: Column(
          children: [
            Text(
              "We organize the game and manage the rules,",
              style: Theme.of(context).textTheme.headline1,
            ),
            Text(
              "you play and have fun!",
              style: Theme.of(context).textTheme.headline1,
            ),
            const SizedBox(height: 32.0),
            Center(
              child: Column(
                children: [
                  Text(
                      "Using our powerful matchmaking tools and lobbies you can effortlessly join games or create your own. You can ",
                      style: Theme.of(context).textTheme.bodyText1),
                  Text(
                      "now enjoy Gloomhaven without having to worry about many of the complicated rules or waste time ",
                      style: Theme.of(context).textTheme.bodyText1),
                  Text(" finding all the right board pieces.",
                      style: Theme.of(context).textTheme.bodyText1),
                  const SizedBox(height: 32.0),
                  Center(
                      child: ElevatedButton(
                          style: raisedButtonStyle,
                          onPressed: () {},
                          child: const Text('Create trial account'))),
                ],
              ),
            ),
          ],
        ),
      )),
    );
  }
}
