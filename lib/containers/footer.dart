import 'package:flutter/material.dart';

class Footer extends StatelessWidget {
  const Footer({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Theme.of(context).colorScheme.secondary,
      child: Padding(
        padding: const EdgeInsets.all(32.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("FOLLOW US", style: Theme.of(context).textTheme.subtitle2),
                const SizedBox(height: 15.0),
                Text("Discord", style: Theme.of(context).textTheme.labelMedium),
                Text("Facebook",
                    style: Theme.of(context).textTheme.labelMedium),
                Text("Twitter", style: Theme.of(context).textTheme.labelMedium),
                Text("Instagram",
                    style: Theme.of(context).textTheme.labelMedium),
                Text("YouTube", style: Theme.of(context).textTheme.labelMedium),
                Text("Twitch", style: Theme.of(context).textTheme.labelMedium),
              ],
            ),
            const SizedBox(width: 100.0),
            Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              Text("RESOURCES", style: Theme.of(context).textTheme.subtitle2),
              const SizedBox(height: 15.0),
              Text("Terms of Service",
                  style: Theme.of(context).textTheme.labelMedium),
              Text("Privacy Policy",
                  style: Theme.of(context).textTheme.labelMedium),
              Text("CDPR", style: Theme.of(context).textTheme.labelMedium),
            ]),
            const SizedBox(width: 100.0),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("COMMUNITY", style: Theme.of(context).textTheme.subtitle2),
                const SizedBox(height: 15.0),
                Text("Discussions",
                    style: Theme.of(context).textTheme.labelMedium),
                Text("Find local groups",
                    style: Theme.of(context).textTheme.labelMedium),
                Text("Reddit", style: Theme.of(context).textTheme.labelMedium),
                Text("Players near LFG",
                    style: Theme.of(context).textTheme.labelMedium),
              ],
            ),
            const SizedBox(width: 100.0),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("CONTACT US",
                    style: Theme.of(context).textTheme.subtitle2),
                const SizedBox(height: 15.0),
                Text("gloomhaven@cephalorgames.com",
                    style: Theme.of(context).textTheme.labelMedium),
                Text("1915 Perdue Street",
                    style: Theme.of(context).textTheme.labelMedium),
                Text("Lafayette IN 47905",
                    style: Theme.of(context).textTheme.labelMedium),
                Text("USA", style: Theme.of(context).textTheme.labelMedium),
              ],
            )
          ],
        ),
      ),
    );
  }
}
