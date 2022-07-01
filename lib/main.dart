import 'package:flutter/material.dart';
import 'package:gloomhaven/views/dashboard.dart';
import 'views/landing_page.dart';

void main() {
  runApp(const MyApp());
}

class ScreenArguments {
  final bool isVisible;
  final ButtonStyle raisedButtonStyle;
  final ScrollController scroller;

  ScreenArguments(this.isVisible, this.raisedButtonStyle, this.scroller);
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Gloomhaven',
      initialRoute: '/',
      routes: {
        LandingPageView.routeName: ((context) => const LandingPageView()),
        DashboardView.routeName: ((context) => const DashboardView()),
      },
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
                fontWeight: FontWeight.w600,
                color: Colors.black),
            headline4: TextStyle(
                fontSize: 18.0,
                fontWeight: FontWeight.w500,
                color: Colors.white),
            headline6: TextStyle(
                fontSize: 14.0,
                fontWeight: FontWeight.w700,
                color: Color(0xff534340)),
            subtitle1: TextStyle(fontSize: 14.0, color: Color(0xff534340)),
            subtitle2: TextStyle(
                fontSize: 16.0,
                color: Colors.white,
                fontWeight: FontWeight.w700),
            bodyText1: TextStyle(fontSize: 16.0, height: 1.5),
            bodyText2: TextStyle(fontSize: 15.0),
            labelMedium:
                TextStyle(fontSize: 15.0, color: Colors.white, height: 1.5)),
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

    final ButtonStyle buttonStyle =
        TextButton.styleFrom(primary: Theme.of(context).colorScheme.onPrimary);

    return Scaffold(
      appBar: AppBar(
        leadingWidth: 350.0,
        leading: Image.asset('assets/logo.png'),
        title: Row(
          children: [
            const SizedBox(width: 100.0),
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
                    onPressed: () {
                      Navigator.pushNamed(
                        context,
                        DashboardView.routeName,
                        arguments:
                            ScreenArguments(_isVisible, buttonStyle, _scroller),
                      );
                    },
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
      body: LandingPageViewPass(
          scroller: _scroller,
          raisedButtonStyle: raisedButtonStyle,
          isVisible: _isVisible),
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
