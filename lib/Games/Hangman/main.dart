import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:games/Games/Hangman/screens/home_screen.dart';
import 'package:games/Games/Hangman/utilities/constants.dart';

class Hangman extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setEnabledSystemUIOverlays([]);
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
    ]);
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark().copyWith(
        tooltipTheme: TooltipThemeData(
          decoration: BoxDecoration(
            color: kTooltipColor,
            borderRadius: BorderRadius.circular(5.0),
          ),
          textStyle: TextStyle(
            fontWeight: FontWeight.w900,
            fontSize: 20.0,
            letterSpacing: 1.0,
            color: Colors.white,
          ),
        ),
        scaffoldBackgroundColor: Colors.white,
        textTheme: Theme.of(context).textTheme.apply(fontFamily: 'PatrickHand'),
      ),
      initialRoute: 'homePage',
      routes: {
        'homePage': (context) => HomeScreen(),

      },
    );
  }
}
