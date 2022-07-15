import 'package:flutter/material.dart';

class DisplayCard extends StatelessWidget {
  final String header;
  final String subheader;
  final Icon icon;

  const DisplayCard(
      {Key? key,
      required this.header,
      required this.subheader,
      required this.icon})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      child: Card(
          elevation: 4.0,
          child: Padding(
            padding:
                const EdgeInsets.symmetric(vertical: 20.0, horizontal: 20.0),
            child: SizedBox(
              width: 250.0,
              height: 275.0,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    children: [
                      Text(
                        header,
                        style: Theme.of(context).textTheme.headline3,
                        textAlign: TextAlign.center,
                      ),
                      const SizedBox(height: 16.0),
                      Text(
                        subheader,
                        style: Theme.of(context).textTheme.bodyText2,
                        textAlign: TextAlign.center,
                      ),
                    ],
                  ),
                  Container(
                    width: 150.0,
                    height: 150.0,
                    decoration: BoxDecoration(
                        color: Theme.of(context).colorScheme.secondary,
                        border: Border.all(
                          color: Theme.of(context).colorScheme.secondary,
                        ),
                        borderRadius:
                            const BorderRadius.all(Radius.circular(100))),
                    child: icon,
                  )
                ],
              ),
            ),
          )),
    );
  }
}
