import 'package:flutter/material.dart';
import '/components/displaycard.dart';

class CardListContainer extends StatelessWidget {
  const CardListContainer({
    Key? key,
    required this.raisedButtonStyle,
  }) : super(key: key);

  final ButtonStyle raisedButtonStyle;

  @override
  Widget build(BuildContext context) {
    return Center(
        child: Container(
      color: const Color(0xffB22A16).withOpacity(0.11),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 0.0, vertical: 32.0),
        child: Column(
          children: [
            Text(
              "Get started now and invite your friends!",
              style: Theme.of(context).textTheme.headline1,
            ),
            const SizedBox(height: 32.0),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                DisplayCard(
                    header: "CREATE ACCOUNT",
                    subheader:
                        "Create a trial account and start playing right away through our powerful matchmaking tools",
                    icon: Icon(Icons.account_circle_outlined,
                        size: 100, color: Colors.white)),
                SizedBox(width: 16.0),
                DisplayCard(
                    header: "INVITE FRIENDS",
                    subheader:
                        "Share a link, invite your friends and enjoy Gloomhaven together, just like at home",
                    icon: Icon(Icons.group_add_outlined,
                        size: 100, color: Colors.white)),
                SizedBox(width: 16.0),
                DisplayCard(
                    header: "PLAY GAME",
                    subheader:
                        "Set up your game lobby, choose your mode of play, send a link to your friends and start playing",
                    icon: Icon(Icons.games_outlined,
                        size: 100, color: Colors.white)),
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
      ),
    ));
  }
}
