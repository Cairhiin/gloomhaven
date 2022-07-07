import 'package:flutter/material.dart';
import '../components/fatmenu.dart';
import '../containers/footer.dart';
import '../views/landing_page.dart';
import '../containers/dashboard_tabs.dart';
import '../components/dashboard/dashboard_result_card.dart';

class DashboardView extends StatefulWidget {
  const DashboardView({super.key});

  static const routeName = '/dashboard';

  @override
  State<DashboardView> createState() => _DashboardViewState();
}

class _DashboardViewState extends State<DashboardView> {
  bool _isVisible = false;
  final ScrollController _scroller = ScrollController();

  void _toggleFatMenu() {
    setState(() {
      _isVisible = !_isVisible;
    });
  }

  void _scrollToTop() {
    if (_scroller.hasClients) {
      _scroller.animateTo(0,
          duration: const Duration(seconds: 1), curve: Curves.easeOut);
    }
  }

  @override
  Widget build(BuildContext context) {
    final ButtonStyle buttonStyle =
        TextButton.styleFrom(primary: Theme.of(context).colorScheme.onPrimary);

    return Scaffold(
      appBar: AppBar(
        leadingWidth: 275.0,
        leading: Image.asset('assets/logo.png'),
        title: Row(
          children: [
            const SizedBox(width: 100.0),
            TextButton(
              style: buttonStyle,
              onPressed: () {
                Navigator.pushNamed(context, LandingPageView.routeName);
              },
              child: Text('HOME', style: Theme.of(context).textTheme.headline4),
            ),
            TextButton(
              style: buttonStyle,
              onPressed: () {},
              child: Text(
                'QUICK PLAY',
                style: Theme.of(context).textTheme.headline4,
              ),
            ),
            TextButton(
              style: buttonStyle,
              onPressed: () {
                _toggleFatMenu();
              },
              child: Text(
                'RULES',
                style: Theme.of(context).textTheme.headline4,
              ),
            ),
            TextButton(
              style: buttonStyle,
              onPressed: () {},
              child: Text(
                'FEATURES',
                style: Theme.of(context).textTheme.headline4,
              ),
            ),
            const SizedBox(width: 250.0),
          ],
        ),
        flexibleSpace: Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.fromLTRB(0.0, 6.0, 16.0, 4.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text("Angela_Morrow",
                          style:
                              TextStyle(fontSize: 14.0, color: Colors.white)),
                      TextButton(
                        onPressed: () {},
                        child: const Text(
                          'Sign Out',
                          style: TextStyle(fontSize: 13.0, color: Colors.white),
                        ),
                      ),
                    ],
                  ),
                ),
                Image.asset("assets/angela.jpg"),
              ],
            ),
          ],
        ),
      ),
      body: Center(
        child: Align(
          alignment: Alignment.topRight,
          child: Stack(children: [
            SingleChildScrollView(
              primary: false,
              controller: _scroller,
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 0.0, vertical: 32.0),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: const [
                        DashboardTabs(),
                        SizedBox(width: 24.0),
                        GamesPlayedSidebar()
                      ],
                    ),
                  ),
                  const Footer()
                ],
              ),
            ),
            Positioned(
              left: 0.0,
              top: 0.0,
              child: FatMenu(
                isVisible: _isVisible,
              ),
            )
          ]),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          _scrollToTop();
        },
        tooltip: 'To top',
        backgroundColor: Theme.of(context).primaryColor,
        child: const Icon(Icons.arrow_upward_outlined),
      ),
    );
  }
}

class GamesPlayedSidebar extends StatelessWidget {
  const GamesPlayedSidebar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        SizedBox(
          width: 360.0,
          child: Container(
            decoration: BoxDecoration(
                color: const Color(0xffB22A16).withOpacity(0.05),
                border: Border.all(
                  color: const Color(0xffB22A16).withOpacity(0.00),
                ),
                borderRadius: const BorderRadius.all(Radius.circular(8))),
            child: Padding(
              padding: const EdgeInsets.all(15.0),
              child: Column(children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("LAST GAMES",
                        style: Theme.of(context).textTheme.headline3),
                    const Text("View all games")
                  ],
                ),
                const SizedBox(height: 16.0),
                const Text("Today"),
                const SizedBox(height: 16.0),
                const ResultCard(
                    title: "SCOUNDREL",
                    subtitle: "Scenario",
                    result: "W",
                    imageName: "assets/scoundrel.jpg"),
                const ResultCard(
                    title: "BRUTE",
                    subtitle: "Campaign",
                    result: "L",
                    imageName: "assets/brute.jpg"),
                const ResultCard(
                    title: "SCOUNDREL",
                    subtitle: "Scenario",
                    result: "L",
                    imageName: "assets/scoundrel.jpg"),
                const ResultCard(
                    title: "TINKERER",
                    subtitle: "Dungeon",
                    result: "W",
                    imageName: "assets/tinkerer.jpg"),
                const ResultCard(
                    title: "BRUTE",
                    subtitle: "Campaign",
                    result: "W",
                    imageName: "assets/brute.jpg"),
                const SizedBox(height: 16.0),
                const Text("Yesterday"),
                const SizedBox(height: 16.0),
                const ResultCard(
                    title: "BRUTE",
                    subtitle: "Campaign",
                    result: "W",
                    imageName: "assets/brute.jpg"),
                const ResultCard(
                    title: "BRUTE",
                    subtitle: "Campaign",
                    result: "W",
                    imageName: "assets/brute.jpg"),
                const SizedBox(height: 16.0),
                const Text("Older"),
                const SizedBox(height: 16.0),
                const ResultCard(
                    title: "BRUTE",
                    subtitle: "Campaign",
                    result: "L",
                    imageName: "assets/brute.jpg"),
              ]),
            ),
          ),
        ),
      ],
    );
  }
}
