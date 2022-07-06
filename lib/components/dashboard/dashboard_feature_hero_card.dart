import 'package:flutter/material.dart';

class FeatureHeroCard extends StatelessWidget {
  const FeatureHeroCard({
    Key? key,
    required this.actionButtonStyle,
    required this.title,
    required this.subtitle,
    required this.gold,
    required this.kills,
    required this.wins,
    required this.losses,
    required this.favoriteCard,
  }) : super(key: key);

  final String title;
  final String subtitle;
  final int gold;
  final int kills;
  final int wins;
  final int losses;
  final String favoriteCard;
  final ButtonStyle actionButtonStyle;

  @override
  Widget build(BuildContext context) {
    return Card(
        elevation: 0.0,
        color: const Color(0xffF4E9E8),
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(8)),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 15.0, horizontal: 20.0),
          child: SizedBox(
              width: 315.0,
              height: 215.0,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(title, style: Theme.of(context).textTheme.headline3),
                  Text(subtitle),
                  const SizedBox(height: 25.0),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        children: [
                          const Text("KILLS"),
                          Text("$kills",
                              style:
                                  const TextStyle(fontWeight: FontWeight.bold))
                        ],
                      ),
                      Column(
                        children: [
                          const Text("GOLD"),
                          Text("$gold",
                              style:
                                  const TextStyle(fontWeight: FontWeight.bold))
                        ],
                      ),
                      Column(
                        children: [
                          const Text("WINS"),
                          Text("$wins",
                              style:
                                  const TextStyle(fontWeight: FontWeight.bold))
                        ],
                      ),
                      Column(
                        children: [
                          const Text("LOSSES"),
                          Text("$losses",
                              style:
                                  const TextStyle(fontWeight: FontWeight.bold))
                        ],
                      ),
                    ],
                  ),
                  const SizedBox(height: 25.0),
                  const Text("MOST USED CARD"),
                  Text(favoriteCard,
                      style: const TextStyle(fontWeight: FontWeight.bold)),
                  const SizedBox(height: 10.0),
                  Align(
                    alignment: Alignment.centerRight,
                    child: ElevatedButton(
                      onPressed: () {},
                      style: actionButtonStyle,
                      child: const Text("Details"),
                    ),
                  )
                ],
              )),
        ));
  }
}
