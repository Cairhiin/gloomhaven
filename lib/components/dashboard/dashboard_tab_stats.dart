import 'package:flutter/material.dart';
import 'dashboard_friends_card.dart';
import 'dashboard_feature_hero_card.dart';
import 'dashboard_hero_card.dart';
import 'dashboard_level_card.dart';

class StatisticTab extends StatelessWidget {
  const StatisticTab({
    Key? key,
    required this.actionButtonStyle,
  }) : super(key: key);

  final ButtonStyle actionButtonStyle;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        Container(
          decoration: const BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(8)),
          ),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const MyLevelCard(),
                  const SizedBox(width: 22.0),
                  FriendsCard(actionButtonStyle: actionButtonStyle),
                ],
              ),
              const SizedBox(height: 16.0),
              const Text("MY HEROES",
                  style: TextStyle(
                      fontSize: 36.0,
                      fontWeight: FontWeight.bold,
                      color: Color(0xff534340))),
              const SizedBox(height: 16.0),
              Row(
                children: [
                  FeatureHeroCard(
                      actionButtonStyle: actionButtonStyle,
                      title: "ORCHID SPELLWEAVER",
                      subtitle: "Level 7 - 349 XP",
                      kills: 37,
                      gold: 246,
                      wins: 23,
                      losses: 17,
                      favoriteCard: "Fireorbs"),
                  const SizedBox(width: 22.0),
                  FeatureHeroCard(
                      actionButtonStyle: actionButtonStyle,
                      title: "INOX BRUTE",
                      subtitle: "Level 5 - 226 XP",
                      kills: 21,
                      gold: 134,
                      wins: 17,
                      losses: 12,
                      favoriteCard: "Eye for an eye"),
                ],
              ),
              const SizedBox(height: 22.0),
              Row(
                children: [
                  HeroCard(
                      actionButtonStyle: actionButtonStyle,
                      title: "HUMAN SCOUNDREL",
                      level: 4,
                      gold: 157,
                      kills: 21,
                      winPerc: 56),
                  const SizedBox(width: 22.0),
                  HeroCard(
                      actionButtonStyle: actionButtonStyle,
                      title: "VERMINGLING TIEFLING",
                      level: 3,
                      gold: 57,
                      kills: 11,
                      winPerc: 36),
                ],
              ),
              const SizedBox(height: 22.0),
              Row(
                children: [
                  HeroCard(
                      actionButtonStyle: actionButtonStyle,
                      title: "Savvas Cragheart",
                      level: 4,
                      gold: 115,
                      kills: 15,
                      winPerc: 46),
                  const SizedBox(width: 22.0),
                  HeroCard(
                      actionButtonStyle: actionButtonStyle,
                      title: "QUARYL TINKERER",
                      level: 1,
                      gold: 32,
                      kills: 2,
                      winPerc: 100),
                ],
              ),
              const SizedBox(height: 22.0),
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 20.0),
                width: 744.0,
                height: 80,
                decoration: BoxDecoration(
                    color: const Color(0xffB22A16).withOpacity(0.05),
                    border: Border.all(
                      color: const Color(0xffB22A16).withOpacity(0.00),
                    ),
                    borderRadius: const BorderRadius.all(Radius.circular(8))),
                child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                          width: 125.0,
                          height: 35.0,
                          decoration: BoxDecoration(
                              color: Colors.white,
                              border: Border(
                                  right: BorderSide(
                                      width: 5.0,
                                      color: Theme.of(context).primaryColor))),
                          child: Align(
                            alignment: Alignment.center,
                            child: Text("69 WINS",
                                style: Theme.of(context).textTheme.headline3),
                          )),
                      Container(
                          width: 125.0,
                          height: 35.0,
                          decoration: BoxDecoration(
                              color: Colors.white,
                              border: Border(
                                  right: BorderSide(
                                      width: 5.0,
                                      color: Theme.of(context).primaryColor))),
                          child: Align(
                            alignment: Alignment.center,
                            child: Text("54 LOSSES",
                                style: Theme.of(context).textTheme.headline3),
                          )),
                      Container(
                          width: 125.0,
                          height: 35.0,
                          decoration: BoxDecoration(
                              color: Colors.white,
                              border: Border(
                                  right: BorderSide(
                                      width: 5.0,
                                      color: Theme.of(context).primaryColor))),
                          child: Align(
                            alignment: Alignment.center,
                            child: Text("97 KILLS",
                                style: Theme.of(context).textTheme.headline3),
                          )),
                      Container(
                          width: 125.0,
                          height: 35.0,
                          decoration: BoxDecoration(
                              color: Colors.white,
                              border: Border(
                                  right: BorderSide(
                                      width: 5.0,
                                      color: Theme.of(context).primaryColor))),
                          child: Align(
                            alignment: Alignment.center,
                            child: Text("607 GOLD",
                                style: Theme.of(context).textTheme.headline3),
                          )),
                    ]),
              ),
              const SizedBox(height: 16.0),
            ],
          ),
        ),
        TextButton(
            onPressed: () {},
            style: ButtonStyle(
                overlayColor:
                    MaterialStateProperty.all<Color>(const Color(0xfffafafa))),
            child: Row(
              children: const [
                Text("Check out your other heroes",
                    style: TextStyle(color: Color(0xff534340))),
                SizedBox(width: 5.0),
                Icon(Icons.arrow_forward, color: Color(0xff534340))
              ],
            ))
      ],
    );
  }
}
