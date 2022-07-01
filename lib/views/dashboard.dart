import 'package:flutter/material.dart';
import '../components/fatmenu.dart';
import '../containers/footer.dart';
import '../views/landing_page.dart';

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
    final ButtonStyle raisedButtonStyle = ElevatedButton.styleFrom(
      primary: Theme.of(context).primaryColor,
      minimumSize: const Size(88, 45),
      padding: const EdgeInsets.symmetric(horizontal: 16),
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.all(Radius.circular(5)),
      ),
    );

    final ButtonStyle menuButtonStyle = ButtonStyle(
        backgroundColor: MaterialStateProperty.all(const Color(0xffFFDAD2)),
        foregroundColor: MaterialStateProperty.all(const Color(0xff534340)));

    final ButtonStyle menuSelectedButtonStyle = ButtonStyle(
        backgroundColor:
            MaterialStateProperty.all(Theme.of(context).colorScheme.secondary),
        foregroundColor: MaterialStateProperty.all(Colors.white));

    final ButtonStyle buttonStyle =
        TextButton.styleFrom(primary: Theme.of(context).colorScheme.onPrimary);

    int currentPageIndex = 0;

    return Scaffold(
      appBar: AppBar(
        leadingWidth: 350.0,
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
        actions: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Row(
                children: [
                  TextButton(
                    style: buttonStyle,
                    onPressed: () {},
                    child: Text(
                      'LOG IN',
                      style: Theme.of(context).textTheme.headline4,
                    ),
                  ),
                  TextButton(
                    style: buttonStyle,
                    onPressed: () {},
                    child: Text(
                      'SIGN UP',
                      style: Theme.of(context).textTheme.headline4,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ],
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
                    padding: const EdgeInsets.all(32.0),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Column(
                          children: [
                            SizedBox(
                              width: 744.0,
                              height: 80,
                              child: Container(
                                decoration: BoxDecoration(
                                    color: const Color(0xffB22A16)
                                        .withOpacity(0.05),
                                    border: Border.all(
                                      color: const Color(0xffB22A16)
                                          .withOpacity(0.00),
                                    ),
                                    borderRadius: const BorderRadius.all(
                                        Radius.circular(8))),
                                child: Row(
                                  children: [
                                    Expanded(
                                      child: Padding(
                                        padding: const EdgeInsets.symmetric(
                                            horizontal: 28.0),
                                        child: TextButton(
                                            style: menuSelectedButtonStyle,
                                            onPressed: () {},
                                            child: const Text('Statistics')),
                                      ),
                                    ),
                                    Expanded(
                                      child: Padding(
                                        padding: const EdgeInsets.symmetric(
                                            horizontal: 28.0),
                                        child: TextButton(
                                            style: menuButtonStyle,
                                            onPressed: () {},
                                            child: const Text('Achievements')),
                                      ),
                                    ),
                                    Expanded(
                                      child: Padding(
                                        padding: const EdgeInsets.symmetric(
                                            horizontal: 28.0),
                                        child: TextButton(
                                            style: menuButtonStyle,
                                            onPressed: () {},
                                            child: const Text('Badges')),
                                      ),
                                    ),
                                    Expanded(
                                      child: Padding(
                                        padding: const EdgeInsets.symmetric(
                                            horizontal: 28.0),
                                        child: TextButton(
                                            style: menuButtonStyle,
                                            onPressed: () {},
                                            child: const Text('Titles')),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(width: 24.0),
                        Column(
                          children: [
                            SizedBox(
                              width: 360.0,
                              height: 940.0,
                              child: Container(
                                color:
                                    const Color(0xffB22A16).withOpacity(0.05),
                                child: Row(children: const []),
                              ),
                            ),
                          ],
                        )
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
