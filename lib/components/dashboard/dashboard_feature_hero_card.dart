import 'package:flutter/material.dart';
import 'package:gloomhaven/hero_class.dart';

class FeatureHeroCard extends StatelessWidget {
  const FeatureHeroCard(
      {Key? key,
      required this.actionButtonStyle,
      required this.textButtonStyle,
      required this.heroClass})
      : super(key: key);

  final HeroClass heroClass;
  final ButtonStyle actionButtonStyle;
  final TextStyle textButtonStyle;

  @override
  Widget build(BuildContext context) {
    return Card(
        elevation: 0.0,
        color: const Color(0xffF4E9E8),
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(8)),
        ),
        child: SizedBox(
            width: 356.0,
            height: 230.0,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: 100.0,
                      width: 356.0,
                      child: ClipRRect(
                          borderRadius: const BorderRadius.only(
                              topRight: Radius.circular(8),
                              topLeft: Radius.circular(8)),
                          child: heroClass.getHeroImage()),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          vertical: 15.0, horizontal: 20.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(heroClass.title,
                                  style: Theme.of(context).textTheme.headline3),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  const Text("Level "),
                                  Text("${heroClass.level}",
                                      style: const TextStyle(
                                          fontWeight: FontWeight.bold)),
                                  const Text(" | Kills "),
                                  Text("${heroClass.kills}",
                                      style: const TextStyle(
                                          fontWeight: FontWeight.bold)),
                                  const Text(" | Gold "),
                                  Text("${heroClass.gold}",
                                      style: const TextStyle(
                                          fontWeight: FontWeight.bold)),
                                ],
                              ),
                              const SizedBox(height: 25.0),
                              ButtonBar(
                                buttonPadding: const EdgeInsets.all(0),
                                alignment: MainAxisAlignment.start,
                                children: [
                                  ElevatedButton(
                                    onPressed: () {},
                                    style: actionButtonStyle,
                                    child: const Text("PLAY"),
                                  ),
                                  TextButton(
                                    onPressed: () {},
                                    child:
                                        Text("DETAILS", style: textButtonStyle),
                                  ),
                                ],
                              )
                            ],
                          ),
                          Container(
                            alignment: Alignment.center,
                            width: 50.0,
                            height: 50.0,
                            decoration: BoxDecoration(
                                color: Theme.of(context).colorScheme.secondary,
                                border: Border.all(
                                  color:
                                      Theme.of(context).colorScheme.secondary,
                                ),
                                borderRadius: const BorderRadius.all(
                                    Radius.circular(100))),
                            child: Text(
                                "${heroClass.calculateWinPercentage()}%",
                                style: const TextStyle(
                                    fontSize: 20.0, color: Colors.white)),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ],
            )));
  }
}
