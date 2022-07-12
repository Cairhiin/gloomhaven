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
    return Visibility(
      visible: widget.isVisible,
      child: Container(
        color: const Color(0xffF8F1F0),
        child: Row(children: [
          Column(
            children: const [
              SizedBox(
                width: 250.0,
              )
            ],
          ),
          Column(
            children: [
              Text("GAME MODES", style: Theme.of(context).textTheme.headline6),
              const TextButton(onPressed: null, child: Text("Dungeons")),
              const TextButton(onPressed: null, child: Text("Scenarios")),
              const TextButton(onPressed: null, child: Text("Campaign")),
              Text("PLAY WITH OTHERS",
                  style: Theme.of(context).textTheme.headline6),
              const TextButton(onPressed: null, child: Text("Matchmaking")),
              const TextButton(onPressed: null, child: Text("Private Lobby")),
              const TextButton(onPressed: null, child: Text("Public Lobby")),
            ],
          ),
          Column(
            children: const [],
          ),
          Column(
            children: const [],
          ),
          Column(
            children: const [
              SizedBox(
                width: 250.0,
              )
            ],
          )
        ]),
      ),
    );
  }
}
