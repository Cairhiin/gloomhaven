import 'package:flutter/material.dart';

class FatMenu extends StatefulWidget {
  final bool isVisible;
  const FatMenu({Key? key, required this.isVisible}) : super(key: key);

  @override
  State<FatMenu> createState() => _FatMenuState();
}

class _FatMenuState extends State<FatMenu> {
  @override
  Widget build(BuildContext context) {
    final buttonStyle = ButtonStyle(
        alignment: Alignment.centerLeft,
        padding: MaterialStateProperty.all(const EdgeInsets.all(0)));

    return Visibility(
      visible: widget.isVisible,
      child: Container(
        color: const Color(0xffF8F1F0),
        child: Material(
          elevation: 5,
          child: Row(crossAxisAlignment: CrossAxisAlignment.start, children: [
            Column(
              children: [
                SizedBox(
                    width: 280.0,
                    height: 318.0,
                    child: Container(
                        decoration: const BoxDecoration(
                            color: Color(0xffF8F1F0),
                            image: DecorationImage(
                              image: AssetImage("assets/OdjzIV4.jpg"),
                              fit: BoxFit.cover,
                              opacity: 0.08,
                            ))))
              ],
            ),
            Container(
              decoration: BoxDecoration(
                  border: Border.symmetric(
                      vertical: BorderSide(
                          width: 1.0,
                          color: const Color(0xff534340).withOpacity(0.15)))),
              child:
                  Row(crossAxisAlignment: CrossAxisAlignment.start, children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20.0),
                  child: SizedBox(
                    width: 125.0,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const SizedBox(height: 20.0),
                        Text("GAME MODES",
                            style: Theme.of(context).textTheme.headline6),
                        TextButton(
                            style: buttonStyle,
                            onPressed: null,
                            child: Text("Dungeons",
                                style: Theme.of(context).textTheme.bodyText1)),
                        TextButton(
                            style: buttonStyle,
                            onPressed: null,
                            child: Text("Scenarios",
                                style: Theme.of(context).textTheme.bodyText1)),
                        TextButton(
                            style: buttonStyle,
                            onPressed: null,
                            child: Text("Campaign",
                                style: Theme.of(context).textTheme.bodyText1)),
                        const SizedBox(height: 20.0),
                        Text("PLAY WITH OTHERS",
                            style: Theme.of(context).textTheme.headline6),
                        TextButton(
                            style: buttonStyle,
                            onPressed: null,
                            child: Text("Matchmaking",
                                style: Theme.of(context).textTheme.bodyText1)),
                        TextButton(
                            style: buttonStyle,
                            onPressed: null,
                            child: Text("Private Lobby",
                                style: Theme.of(context).textTheme.bodyText1)),
                        TextButton(
                            style: buttonStyle,
                            onPressed: null,
                            child: Text("Public Lobby",
                                style: Theme.of(context).textTheme.bodyText1)),
                      ],
                    ),
                  ),
                ),
                Column(
                  children: const [
                    SizedBox(
                      width: 176.0,
                    )
                  ],
                ),
                SizedBox(
                  width: 125.0,
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const SizedBox(height: 20.0),
                        Text("THE CAMPAIGN",
                            style: Theme.of(context).textTheme.headline6),
                        TextButton(
                            style: buttonStyle,
                            onPressed: null,
                            child: Text("Create a lobby",
                                style: Theme.of(context).textTheme.bodyText1)),
                        TextButton(
                            style: buttonStyle,
                            onPressed: null,
                            child: Text("Join a lobby",
                                style: Theme.of(context).textTheme.bodyText1)),
                        TextButton(
                            style: buttonStyle,
                            onPressed: null,
                            child: Text("Persistant world state",
                                style: Theme.of(context).textTheme.bodyText1)),
                        TextButton(
                            style: buttonStyle,
                            onPressed: null,
                            child: Text("Expansions",
                                style: Theme.of(context).textTheme.bodyText1)),
                        TextButton(
                            style: buttonStyle,
                            onPressed: null,
                            child: Text("Resetting the campaign",
                                style: Theme.of(context).textTheme.bodyText1)),
                        TextButton(
                            style: buttonStyle,
                            onPressed: null,
                            child: Text("Leaving a campaign",
                                style: Theme.of(context).textTheme.bodyText1)),
                        TextButton(
                            style: buttonStyle,
                            onPressed: null,
                            child: Text("New game+",
                                style: Theme.of(context).textTheme.bodyText1)),
                      ]),
                ),
                Column(
                  children: const [
                    SizedBox(
                      width: 176.0,
                    )
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20.0),
                  child: SizedBox(
                    width: 200.0,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const SizedBox(height: 20.0),
                        Text("REWARDS",
                            style: Theme.of(context).textTheme.headline6),
                        TextButton(
                            style: buttonStyle,
                            onPressed: null,
                            child: Text("Achievements",
                                style: Theme.of(context).textTheme.bodyText1)),
                        TextButton(
                            style: buttonStyle,
                            onPressed: null,
                            child: Text("Titles",
                                style: Theme.of(context).textTheme.bodyText1)),
                        TextButton(
                            style: buttonStyle,
                            onPressed: null,
                            child: Text("Avatars",
                                style: Theme.of(context).textTheme.bodyText1)),
                        TextButton(
                            style: buttonStyle,
                            onPressed: null,
                            child: Text("Badges",
                                style: Theme.of(context).textTheme.bodyText1)),
                        const SizedBox(height: 20.0),
                        Text("GAME EDITOR",
                            style: Theme.of(context).textTheme.headline6),
                        TextButton(
                            style: buttonStyle,
                            onPressed: null,
                            child: Text("Create",
                                style: Theme.of(context).textTheme.bodyText1)),
                        TextButton(
                            style: buttonStyle,
                            onPressed: null,
                            child: Text("Share",
                                style: Theme.of(context).textTheme.bodyText1)),
                        TextButton(
                            style: buttonStyle,
                            onPressed: null,
                            child: Text("Browse",
                                style: Theme.of(context).textTheme.bodyText1)),
                        TextButton(
                            style: buttonStyle,
                            onPressed: null,
                            child: Text("Play",
                                style: Theme.of(context).textTheme.bodyText1)),
                        const SizedBox(height: 20.0),
                      ],
                    ),
                  ),
                )
              ]),
            ),
            Column(
              children: [
                SizedBox(
                    width: 1500.0,
                    height: 318,
                    child: Container(
                        decoration: const BoxDecoration(
                            color: Color(0xffF8F1F0),
                            image: DecorationImage(
                              image: AssetImage("assets/OdjzIV4.jpg"),
                              fit: BoxFit.contain,
                              alignment: Alignment.centerLeft,
                              opacity: 0.08,
                            ))))
              ],
            )
          ]),
        ),
      ),
    );
  }
}
