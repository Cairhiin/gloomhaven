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
      initialRoute: 'LandingPageView.routeName',
      routes: {
        LandingPageView.routeName: ((context) => const LandingPageView()),
        DashboardView.routeName: ((context) => const DashboardView()),
      },
      theme: ThemeData(
        primaryColor: const Color(0xffB22A16),
        colorScheme: ColorScheme.fromSwatch().copyWith(
            secondary: const Color(0xff775650),
            outline: const Color(0xff534340)),
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
      home: const LandingPageView(),
    );
  }
}
