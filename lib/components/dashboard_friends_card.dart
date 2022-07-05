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
        color: const Color(0xffF4E9E8),
        elevation: 2.0,
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
                      Row(
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
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 5.0, vertical: 0.0),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: const [
                                    Text("Willow | Brute level 2 | Campaign"),
                                    Text("Crypt of the Damned",
                                        style: TextStyle(
                                            fontWeight: FontWeight.w700))
                                  ],
                                ),
                              ))
                        ],
                      ),
                      const SizedBox(height: 3.0),
                      Row(
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
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 5.0, vertical: 0.0),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: const [
                                    Text(
                                        "JohnSnow | Spellweaver level 7 | Scenario"),
                                    Text("Black Barrow",
                                        style: TextStyle(
                                            fontWeight: FontWeight.w700))
                                  ],
                                ),
                              ))
                        ],
                      ),
                      const SizedBox(height: 3.0),
                      Row(
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
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 5.0, vertical: 0.0),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: const [
                                    Text(
                                        "Moghedien | Tinkerer level 4 | Scenario"),
                                    Text("Necromancer's Sanctum",
                                        style: TextStyle(
                                            fontWeight: FontWeight.w700))
                                  ],
                                ),
                              ))
                        ],
                      ),
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
