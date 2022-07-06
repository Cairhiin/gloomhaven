import 'package:flutter/material.dart';

class HeroCard extends StatelessWidget {
  const HeroCard(
      {Key? key,
      required this.actionButtonStyle,
      required this.title,
      required this.level,
      required this.kills,
      required this.gold,
      required this.winPerc})
      : super(key: key);

  final String title;
  final int level;
  final int kills;
  final int gold;
  final int winPerc;
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
            padding:
                const EdgeInsets.symmetric(vertical: 15.0, horizontal: 20.0),
            child: SizedBox(
                width: 315.0,
                height: 100.0,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(title,
                            style: const TextStyle(
                                fontSize: 20.0, fontWeight: FontWeight.bold)),
                        Row(
                          children: [
                            const Text("Level"),
                            Text(" $level",
                                style: const TextStyle(
                                    fontWeight: FontWeight.bold)),
                            const Text(" | Kills"),
                            Text(" $kills",
                                style: const TextStyle(
                                    fontWeight: FontWeight.bold)),
                            const Text(" | Gold"),
                            Text(" $gold",
                                style: const TextStyle(
                                    fontWeight: FontWeight.bold)),
                          ],
                        ),
                        const SizedBox(height: 25.0),
                        Align(
                          alignment: Alignment.centerRight,
                          child: ElevatedButton(
                            onPressed: () {},
                            style: actionButtonStyle,
                            child: const Text("Details"),
                          ),
                        )
                      ],
                    ),
                    Container(
                      alignment: Alignment.center,
                      width: 90.0,
                      height: 90.0,
                      decoration: BoxDecoration(
                          color: Theme.of(context).colorScheme.secondary,
                          border: Border.all(
                            color: Theme.of(context).colorScheme.secondary,
                          ),
                          borderRadius:
                              const BorderRadius.all(Radius.circular(100))),
                      child: Text("$winPerc%",
                          style: const TextStyle(
                              fontSize: 28.0, color: Colors.white)),
                    ),
                  ],
                ))));
  }
}
