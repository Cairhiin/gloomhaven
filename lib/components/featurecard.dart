import 'package:flutter/material.dart';

class FeatureCard extends StatelessWidget {
  final String title;
  final String subheader;
  const FeatureCard({
    Key? key,
    required this.title,
    required this.subheader,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(
        side: BorderSide(
          color: Theme.of(context).colorScheme.outline,
        ),
        borderRadius: const BorderRadius.all(Radius.circular(5)),
      ),
      child: SizedBox(
        width: 335,
        child: Row(
          children: <Widget>[
            Expanded(
              flex: 3,
              child: ListTile(
                title: Text(
                  title,
                  style: Theme.of(context).textTheme.headline3,
                ),
                subtitle: Text(subheader,
                    style: Theme.of(context).textTheme.bodyText2),
              ),
            ),
            Expanded(
              flex: 1,
              child: IconButton(
                onPressed: () {},
                icon: const Icon(Icons.arrow_forward),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
