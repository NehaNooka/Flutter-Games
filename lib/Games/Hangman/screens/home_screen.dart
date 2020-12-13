import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:games/gameDash.dart';
import 'package:games/Games/Hangman/components/action_button.dart';
import 'package:games/Games/Hangman/utilities/hangman_words.dart';
import 'package:games/constants.dart';
import 'game_screen.dart';


class HomeScreen extends StatefulWidget {
  final HangmanWords hangmanWords = HangmanWords();

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    widget.hangmanWords.readWords();
    return Scaffold(
      appBar: AppBar(
        elevation:0.0,
        iconTheme: new IconThemeData(color: Colors.black),
        centerTitle: true,
        leading: IconButton(icon: Icon(Icons.arrow_back, color: Colors.black,),
          onPressed: ( () {
            Navigator.pushReplacement(
              context,
              MaterialPageRoute(
                  builder: (context) => GameDashboard()),
            );
          }
          ),
        ),
        title: Text("HANGMAN",
            style: GoogleFonts.pacifico(
                textStyle: TextStyle(
                    fontSize: 22.0,
                    color: appBarTextColor,
                    fontWeight: FontWeight.bold,
                    letterSpacing: 2))),
        backgroundColor: appBarColor,
      ),
      body: SafeArea(
          child: Column(
        children: <Widget>[
          Center(
            child: Container(
              margin: EdgeInsets.fromLTRB(8.0, 28.0, 8.0, 8.0),
              child: Text(
                "LET'S START" ,
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 58.0,
                    fontWeight: FontWeight.w300,
                    letterSpacing: 3.0),
              ),
            ),
          ),
          Center(
            child: Container(
//              padding: EdgeInsets.all(5.0),
              child: Image.asset(
                'assets/icon/memory/gallow.png',
                height: height * 0.49,
              ),
            ),
          ),
          SizedBox(
            height: 15.0,
          ),
          Center(
            child: IntrinsicWidth(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: <Widget>[
                  Container(
                  width: 155,
                    height: 54,
                    child: ActionButton(
                      buttonTitle: 'Start',
                      onPress: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => GameScreen(
                              hangmanObject: widget.hangmanWords,
                            ),
                          ),
                        );
                      },
                    ),
                  ),
                  SizedBox(
                    height: 18.0,
                  ),

                ],
              ),
            ),
          ),
        ],
      )),
    );
  }
}
