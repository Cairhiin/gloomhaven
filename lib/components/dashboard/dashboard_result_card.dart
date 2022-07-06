import 'package:flutter/material.dart';

class ResultCard extends StatelessWidget {
  const ResultCard(
      {Key? key,
      required this.result,
      required this.title,
      required this.subtitle,
      required this.imageName})
      : super(key: key);

  final String result;
  final String title;
  final String subtitle;
  final String imageName;

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 0.0,
      color: Colors.white,
      child: ClipPath(
          clipper: const ShapeBorderClipper(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.only(
                      topRight: Radius.circular(8),
                      bottomRight: Radius.circular(8)))),
          child: Container(
              height: 75,
              decoration: BoxDecoration(
                border: Border(
                    left: BorderSide(
                        color: result == "W" ? Colors.green : Colors.red,
                        width: 5)),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 10.0),
                    child: Row(
                      children: [
                        Container(
                          alignment: Alignment.center,
                          width: 40.0,
                          height: 40.0,
                          decoration: BoxDecoration(
                              color: result == "W" ? Colors.green : Colors.red,
                              border: Border.all(
                                width: 5.0,
                                color:
                                    result == "W" ? Colors.green : Colors.red,
                              ),
                              borderRadius:
                                  const BorderRadius.all(Radius.circular(40))),
                          child: Text(result,
                              style: const TextStyle(
                                  fontSize: 24.0, color: Colors.white)),
                        ),
                        const SizedBox(width: 15.0),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(title,
                                style: Theme.of(context).textTheme.headline3),
                            Text(subtitle),
                          ],
                        ),
                      ],
                    ),
                  ),
                  Image.asset(imageName),
                ],
              ))),
    );
  }
}
