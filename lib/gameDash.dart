import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:games/constants.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:games/Games/2048/main.dart';
import 'package:games/Games/Hangman/main.dart';
import 'package:games/Games/Memory/main.dart';
import 'package:games/Games/TicTacToe/main.dart';



class GameDashboard extends StatefulWidget {
  @override
  _GameDashboardState createState() => _GameDashboardState();
}

class _GameDashboardState extends State<GameDashboard>{
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
        appBar: AppBar(
          elevation:0.0,
          iconTheme: new IconThemeData(color: Colors.black),
          centerTitle: true,
          title: Text("GAMES",
              style: GoogleFonts.pacifico(
                  textStyle: TextStyle(
                      fontSize: 22.0,
                      color: appBarTextColor,
                      fontWeight: FontWeight.bold,
                      letterSpacing: 2))),
          backgroundColor: appBarColor,
        ),

        body: GameDashboard1()

    );
  }
}

class GameDashboard1 extends StatefulWidget {
  @override
  _GameDashboard1State createState() => _GameDashboard1State();
}

class _GameDashboard1State extends State<GameDashboard1> {
  Color cardColor= Colors.deepPurple[400];
  Items item1 = new Items(
    title: "2048",
    img: "assets/icon/games/block.png",
  );

  Items item2 = new Items(
    title: "TicTacToe",
    img: "assets/icon/games/tictactoe.png",
  );

  Items item3 = new Items(
    title: "Memory",
    img: "assets/icon/games/memory.png",
  );

  Items item4 = new Items(
    title: "Hangman",
    img: "assets/icon/games/hangman.png",
  );

  @override
  Widget build(BuildContext context) {
    return

        SafeArea(
            child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.03,
                  ),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 8.0,vertical: 8.0),
                      child: Container(
                        width: MediaQuery.of(context).size.width * 0.90,

                          child: Text("| What would you like to play??",
                              style: TextStyle(
                                  fontFamily: "Blackcherry",
                                  color: Colors.deepPurple,
                                  fontSize: 40,
                                  fontWeight: FontWeight.w600,
                                  letterSpacing: 2.5)),
                      ),
                    ),

                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.03,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      GestureDetector(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => Two()),
                          );
                        },
                        child: Container(
                          width: MediaQuery.of(context).size.width * 0.40,
                          height:
                          MediaQuery.of(context).size.height * 0.20,
                          decoration: BoxDecoration(
                              color: cardColor,
                              borderRadius: BorderRadius.circular(10)),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              Image.asset(
                                item1.img,
                                width: 42,
                              ),
                              SizedBox(
                                height: 14,
                              ),
                              Center(
                                child: Text(
                                  item1.title,
                                  style: GoogleFonts.openSans(
                                      textStyle: TextStyle(
                                          color: Colors.white,
                                          fontSize: 25,
                                          fontWeight: FontWeight.w600)),
                                ),
                              ),
                              SizedBox(
                                height: 8,
                              ),
                            ],
                          ),
                        ),
                      ),
                      GestureDetector(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => TicTac()),
                          );
                        },
                        child: Container(
                          width: MediaQuery.of(context).size.width * 0.40,
                          height:
                          MediaQuery.of(context).size.height * 0.20,
                          decoration: BoxDecoration(
                              color: cardColor,
                              borderRadius: BorderRadius.circular(10)),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              Image.asset(
                                item2.img,
                                width: 42,
                              ),
                              SizedBox(
                                height: 14,
                              ),
                              Center(
                                child: Text(
                                  item2.title,
                                  style: GoogleFonts.openSans(
                                      textStyle: TextStyle(
                                          color: Colors.white,
                                          fontSize: 25,
                                          fontWeight: FontWeight.w600)),
                                ),
                              ),
                              SizedBox(
                                height: 8,
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 20),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      GestureDetector(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => Memory()),
                          );
                        },
                        child: Container(
                          width: MediaQuery.of(context).size.width * 0.40,
                          height:
                          MediaQuery.of(context).size.height * 0.20,
                          decoration: BoxDecoration(
                              color: cardColor,
                              borderRadius: BorderRadius.circular(10)),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              Image.asset(
                                item3.img,
                                width: 42,
                              ),
                              SizedBox(
                                height: 14,
                              ),
                              Center(
                                child: Text(
                                  item3.title,
                                  style: GoogleFonts.openSans(
                                      textStyle: TextStyle(
                                          color: Colors.white,
                                          fontSize: 25,
                                          fontWeight: FontWeight.w600)),
                                ),
                              ),
                              SizedBox(
                                height: 8,
                              ),
                            ],
                          ),
                        ),
                      ),
                      GestureDetector(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => Hangman()),
                          );
                        },
                        child: Container(
                          width: MediaQuery.of(context).size.width * 0.40,
                          height:
                          MediaQuery.of(context).size.height * 0.20,
                          decoration: BoxDecoration(
                              color: cardColor,
                              borderRadius: BorderRadius.circular(10)),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              Image.asset(
                                item4.img,
                                width: 42,
                              ),
                              SizedBox(
                                height: 14,
                              ),
                              Center(
                                child: Text(
                                  item4.title,
                                  style: GoogleFonts.openSans(
                                      textStyle: TextStyle(
                                          color: Colors.white,
                                          fontSize: 25,
                                          fontWeight: FontWeight.w600)),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  )
                ])
      );
  }
}

class Items {
  String title;
  String img;
  Items({this.title,this.img,});
}
