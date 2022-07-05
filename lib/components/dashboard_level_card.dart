import 'package:flutter/material.dart';

class MyLevelCard extends StatelessWidget {
  const MyLevelCard({
    Key? key,
  }) : super(key: key);

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
                    Text("MY LEVEL",
                        style: Theme.of(context).textTheme.headline3),
                    Container(
                      alignment: Alignment.center,
                      width: 100.0,
                      height: 100.0,
                      decoration: BoxDecoration(
                          color: Theme.of(context).colorScheme.secondary,
                          border: Border.all(
                            color: Theme.of(context).colorScheme.secondary,
                          ),
                          borderRadius:
                              const BorderRadius.all(Radius.circular(100))),
                      child: Text("17",
                          style: Theme.of(context).textTheme.headline5),
                    ),
                    Column(
                      children: [
                        Stack(children: [
                          Container(
                              width: 290.0,
                              height: 7.0,
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  border: Border.all(color: Colors.white),
                                  borderRadius: const BorderRadius.all(
                                      Radius.circular(8)))),
                          Container(
                            width: 290.0 * 0.81,
                            height: 7.0,
                            decoration: BoxDecoration(
                                color: Theme.of(context).primaryColor,
                                border: Border.all(
                                    color: Theme.of(context).primaryColor),
                                borderRadius:
                                    const BorderRadius.all(Radius.circular(8))),
                          ),
                        ]),
                        Padding(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 10.0, vertical: 5.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: const [
                              Text(
                                "157 XP to next level",
                                style: TextStyle(fontSize: 12.0),
                              ),
                              Text("81%", style: TextStyle(fontSize: 12.0)),
                            ],
                          ),
                        )
                      ],
                    ),
                  ],
                ))));
  }
}
