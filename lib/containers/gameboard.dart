import 'package:flutter/material.dart';

class GameboardContainer extends StatelessWidget {
  const GameboardContainer({
    Key? key,
    required this.raisedButtonStyle,
  }) : super(key: key);

  final ButtonStyle raisedButtonStyle;

  @override
  Widget build(BuildContext context) {
    return Center(
        child: Container(
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: AssetImage("assets/gloomhaven_bg_4.jpg"),
          fit: BoxFit.cover,
          opacity: 0.08,
        ),
      ),
      child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 0.0, vertical: 32.0),
          child: Column(
            children: [
              Text(
                "Enjoy Gloomhaven while we set up the board and the pieces",
                style: Theme.of(context).textTheme.headline1,
              ),
              const SizedBox(height: 32.0),
              Text(
                  "Use our powerful video chat tools to communicate with friends and strangers alike. Hack and slash your way ",
                  style: Theme.of(context).textTheme.bodyText1),
              Text(
                  "through hordes of monsters with powerful allies by your side. Subscribe now for 6 months and enjoy the first",
                  style: Theme.of(context).textTheme.bodyText1),
              Text("month free, and cancel anytime you want.",
                  style: Theme.of(context).textTheme.bodyText1),
              const SizedBox(height: 32.0),
              Text("Monthly fee after the first free month is 6,99€.",
                  style: Theme.of(context).textTheme.bodyText1),
              const SizedBox(height: 32.0),
              Image.asset(
                "assets/gloomhaven_board.png",
                width: 950.0,
              ),
              const SizedBox(height: 32.0),
              Center(
                  child: ElevatedButton(
                      style: raisedButtonStyle,
                      onPressed: () {},
                      child: const Text('Create trial account'))),
            ],
          )),
    ));
  }
}
