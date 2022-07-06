import 'package:flutter/material.dart';
import 'dashboard_achievement_card.dart';

class AchievementTab extends StatelessWidget {
  const AchievementTab({
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
            padding:
                const EdgeInsets.symmetric(vertical: 15.0, horizontal: 20.0),
            decoration: const BoxDecoration(
              /* image: DecorationImage(
                  image: AssetImage("assets/dashboard_stats_bg.webp"),
                  fit: BoxFit.cover,
                  opacity: 0.11), */
              color: Color(0xffF4E9E8),
              borderRadius: BorderRadius.all(Radius.circular(8)),
            ),
            child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: const [
                  Text("ACCOUNT",
                      style: TextStyle(
                          fontSize: 36.0,
                          fontWeight: FontWeight.bold,
                          color: Color(0xff534340))),
                  SizedBox(height: 15.0),
                  AchievementCard(
                      title: "BEGINNER",
                      subtitle: "You got your feet wet and reached level 5",
                      imageFile: "assets/beginner.jpg"),
                  AchievementCard(
                      title: "FEAR YE NONE",
                      subtitle: "You killed 200 monsters across all game modes",
                      imageFile: "assets/fear.jpg"),
                  AchievementCard(
                      title: "LEADER",
                      subtitle: "You lead a party to success",
                      imageFile: "assets/leader.jpg"),
                  AchievementCard(
                      title: "UNTIMELY DEMISE",
                      subtitle: "You lost a quick dungeon run",
                      imageFile: "assets/demise.jpg"),
                  SizedBox(height: 15.0),
                  Text("CAMPAIGN",
                      style: TextStyle(
                          fontSize: 36.0,
                          fontWeight: FontWeight.bold,
                          color: Color(0xff534340))),
                  SizedBox(height: 15.0),
                  AchievementCard(
                      title: "DOWN THE HATCH",
                      subtitle: "You defeated the Dark Horor in the Campaign",
                      imageFile: "assets/hatch.jpg"),
                  AchievementCard(
                      title: "I HAVE BECOME DEATH",
                      subtitle: "You killed 200 monsters in the Campaign",
                      imageFile: "assets/death.jpg"),
                  AchievementCard(
                      title: "THE CEPHALOPHORE",
                      subtitle:
                          "You defeated the Dark Outrider in the Campaign",
                      imageFile: "assets/cephalophore.jpg"),
                  AchievementCard(
                      title: "CULLING THE CULTISTS",
                      subtitle:
                          "You defeated the Merciless Overseer in the Campaign",
                      imageFile: "assets/demise.jpg"),
                  SizedBox(height: 15.0),
                  Text("QUICKPLAY",
                      style: TextStyle(
                          fontSize: 36.0,
                          fontWeight: FontWeight.bold,
                          color: Color(0xff534340))),
                  SizedBox(height: 15.0),
                  AchievementCard(
                      title: "NOVICE WEAVER",
                      subtitle:
                          "You played a game with the Spellweaver in quickplay",
                      imageFile: "assets/weaver.jpg"),
                  AchievementCard(
                      title: "DEATH BECOMES YOU",
                      subtitle: "You killed 200 monsters in Quickplay",
                      imageFile: "assets/death.jpg"),
                  AchievementCard(
                      title: "THE CEPHALOPHORE",
                      subtitle: "You defeated the Dark Outrider in Quickplay",
                      imageFile: "assets/cephalophore.jpg"),
                  AchievementCard(
                      title: "NOVICE TINKERER",
                      subtitle:
                          "You played a game with the Tinkerer in quickplay",
                      imageFile: "assets/tinkerer.jpg"),
                  SizedBox(height: 15.0)
                ])),
        const SizedBox(height: 16.0),
        TextButton(
            onPressed: () {},
            style: ButtonStyle(
                overlayColor:
                    MaterialStateProperty.all<Color>(const Color(0xfffafafa))),
            child: Row(
              children: const [
                Text("Check out your other achievements",
                    style: TextStyle(color: Color(0xff534340))),
                SizedBox(width: 5.0),
                Icon(Icons.arrow_forward, color: Color(0xff534340))
              ],
            ))
      ],
    );
  }
}
