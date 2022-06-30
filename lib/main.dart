import 'package:flutter/material.dart';
import 'fatmenu.dart';
import 'featurecard.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Gloomhaven',
      theme: ThemeData(
        primaryColor: const Color(0xffB22A16),
        colorScheme: ColorScheme.fromSwatch()
            .copyWith(secondary: const Color(0xff775650)),
        fontFamily: "RobotoCondensed",
        appBarTheme: const AppBarTheme(
          color: Color(0xffB22A16),
        ),
        textTheme: const TextTheme(
          headline1: TextStyle(
              fontFamily: "Merriweather",
              fontSize: 24.0,
              fontWeight: FontWeight.bold,
              color: Colors.black),
          headline2: TextStyle(
              fontFamily: "Merriweather",
              fontSize: 24.0,
              fontWeight: FontWeight.bold,
              color: Colors.white,
              shadows: [
                Shadow(
                  offset: Offset(0.0, 3.0),
                  blurRadius: 2.0,
                  color: Color.fromARGB(255, 0, 0, 0),
                )
              ]),
          headline3: TextStyle(
              fontSize: 20.0,
              fontWeight: FontWeight.w500,
              color: Color(0xff534340)),
          headline4: TextStyle(
              fontSize: 18.0, fontWeight: FontWeight.w500, color: Colors.white),
          headline6: TextStyle(
              fontSize: 14.0,
              fontWeight: FontWeight.w700,
              color: Color(0xff534340)),
          subtitle1: TextStyle(fontSize: 14.0, color: Color(0xff534340)),
          bodyText1: TextStyle(fontSize: 16.0, height: 1.5),
          bodyText2: TextStyle(fontSize: 13.0),
        ),
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  bool _isVisible = false;

  void _toggleFatMenu() {
    setState(() {
      _isVisible = !_isVisible;
    });
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

    final ButtonStyle buttonStyle =
        TextButton.styleFrom(primary: Theme.of(context).colorScheme.onPrimary);

    return Scaffold(
      appBar: AppBar(
        leadingWidth: 250.0,
        leading: Image.asset('assets/logo.png'),
        title: Row(
          children: [
            TextButton(
              style: buttonStyle,
              onPressed: () {},
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
        child: Stack(children: [
          ListView(
            children: [
              Container(
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage("assets/gloomhaven_bg_1.jpg"),
                    fit: BoxFit.cover,
                  ),
                ),
                child: Center(
                    child: Padding(
                  padding: const EdgeInsets.symmetric(
                      horizontal: 0.0, vertical: 32.0),
                  child: Column(
                    children: [
                      Text(
                        "Dive into the world of Gloomhaven",
                        style: Theme.of(context).textTheme.headline2,
                      ),
                      Text(
                        "and familiarize yourself with the game",
                        style: Theme.of(context).textTheme.headline2,
                      ),
                      const SizedBox(height: 32.0),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: const [
                          FeatureCard(
                            title: 'CHEAT SHEET',
                            subheader: 'A quick overview of the rules',
                          ),
                          SizedBox(width: 10.0),
                          FeatureCard(
                            title: 'RULES MANUAL',
                            subheader: 'All the rules in detail',
                          ),
                        ],
                      ),
                      const SizedBox(height: 10.0),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: const [
                          FeatureCard(
                            title: 'VIDEOS',
                            subheader: 'Quality gameplay videos',
                          ),
                          SizedBox(width: 10.0),
                          FeatureCard(
                            title: 'TUTORIALS',
                            subheader: 'The best place to start for beginners',
                          ),
                        ],
                      ),
                      const SizedBox(height: 32.0),
                      Center(
                          child: ElevatedButton(
                              style: raisedButtonStyle,
                              onPressed: () {},
                              child: const Text('Create trial account'))),
                    ],
                  ),
                )),
              ),
              Container(
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage("assets/gloomhaven_bg_2.png"),
                    fit: BoxFit.cover,
                    opacity: 0.12,
                  ),
                ),
                child: Center(
                    child: Padding(
                  padding: const EdgeInsets.symmetric(
                      horizontal: 0.0, vertical: 32.0),
                  child: Column(
                    children: [
                      Text(
                        "We organize the game and manage the rules,",
                        style: Theme.of(context).textTheme.headline1,
                      ),
                      Text(
                        "you play and have fun!",
                        style: Theme.of(context).textTheme.headline1,
                      ),
                      const SizedBox(height: 32.0),
                      Center(
                        child: Column(
                          children: [
                            Text(
                                "Using our powerful matchmaking tools and lobbies you can effortlessly join games or create your own. You can ",
                                style: Theme.of(context).textTheme.bodyText1),
                            Text(
                                "now enjoy Gloomhaven without having to worry about many of the complicated rules or waste time ",
                                style: Theme.of(context).textTheme.bodyText1),
                            Text(" finding all the right board pieces.",
                                style: Theme.of(context).textTheme.bodyText1),
                            const SizedBox(height: 32.0),
                            Center(
                                child: ElevatedButton(
                                    style: raisedButtonStyle,
                                    onPressed: () {},
                                    child: const Text('Create trial account'))),
                          ],
                        ),
                      ),
                    ],
                  ),
                )),
              ),
            ],
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
      floatingActionButton: FloatingActionButton(
        onPressed: null,
        tooltip: 'To top',
        backgroundColor: Theme.of(context).colorScheme.secondary,
        child: const Icon(Icons.arrow_upward_outlined),
      ),
    );
  }
}
