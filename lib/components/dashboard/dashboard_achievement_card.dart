import 'package:flutter/material.dart';

class AchievementCard extends StatelessWidget {
  const AchievementCard(
      {Key? key,
      required this.title,
      required this.subtitle,
      required this.imageFile})
      : super(key: key);

  final String title;
  final String subtitle;
  final String imageFile;

  @override
  Widget build(BuildContext context) {
    return Card(
        elevation: 0.0,
        color: const Color(0xffE4D1CF),
        child: ClipPath(
            clipper: const ShapeBorderClipper(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.only(
                        topRight: Radius.circular(8),
                        bottomRight: Radius.circular(8)))),
            child: SizedBox(
              width: 700.0,
              height: 75.0,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(title,
                            style: Theme.of(context).textTheme.headline3),
                        Text(subtitle)
                      ],
                    ),
                  ),
                  Image.asset(imageFile)
                ],
              ),
            )));
  }
}
