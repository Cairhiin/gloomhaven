import 'package:flutter/material.dart';

class FriendsCard extends StatelessWidget {
  const FriendsCard({
    Key? key,
    required this.actionButtonStyle,
  }) : super(key: key);

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
                height: 215.0,
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text("FRIENDS PLAYING",
                          style: Theme.of(context).textTheme.headline3),
                      const SizedBox(height: 10.0),
                      const FriendsDetailsCard(
                          title: "Willow", subtitle: " | level 2 | Campaign"),
                      const SizedBox(height: 3.0),
                      const FriendsDetailsCard(
                          title: "JohnSnow",
                          subtitle: " | Spellweaver level 7 | Scenario"),
                      const SizedBox(height: 3.0),
                      const FriendsDetailsCard(
                          title: "Moghedien",
                          subtitle: " | Tinkerer level 4 | Scenario"),
                      const SizedBox(height: 10.0),
                      Align(
                        alignment: Alignment.centerRight,
                        child: ElevatedButton(
                          onPressed: () {},
                          style: actionButtonStyle,
                          child: const Text("Friend list"),
                        ),
                      )
                    ]))));
  }
}

class FriendsDetailsCard extends StatelessWidget {
  const FriendsDetailsCard({
    Key? key,
    required this.title,
    required this.subtitle,
  }) : super(key: key);

  final String title;
  final String subtitle;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          width: 5.0,
          height: 40.0,
          color: Theme.of(context).primaryColor,
        ),
        Container(
            width: 310.0,
            height: 40.0,
            decoration: const BoxDecoration(
              borderRadius: BorderRadius.only(
                  topRight: Radius.circular(5),
                  bottomRight: Radius.circular(5)),
              color: Colors.white,
            ),
            child: Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 5.0, vertical: 0.0),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(title,
                      style: const TextStyle(fontWeight: FontWeight.w700)),
                  Text(subtitle)
                ],
              ),
            ))
      ],
    );
  }
}
