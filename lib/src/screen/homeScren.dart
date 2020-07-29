import 'dart:math';

import 'package:flutter/material.dart';
import 'package:rps/src/other/other.dart';
import 'package:rps/src/widget/board.dart';
import 'package:rps/src/widget/buttonImage.dart';

class HomeScreen extends StatefulWidget {
  static String route = '/home';
  HomeScreen({Key key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

// Color(0xff121231)
class _HomeScreenState extends State<HomeScreen> {
  int humanpts = 0;
  int cpupts = 0;
  String human = 'rock.png';
  String cpu = 'rock.png';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Color(0xff121231),
        height: double.maxFinite,
        child: new Stack(
          children: <Widget>[
            Align(
                alignment: Alignment.topLeft,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    scoreBoard(url: humanEmoji, text: humanpts),
                    scoreBoard(url: cpuEmoji, text: cpupts),
                  ],
                )),
            Align(
              alignment: Alignment.center,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: [
                    Expanded(
                      child: RotationTransition(
                        turns: new AlwaysStoppedAnimation(15 / 360),
                        child: Image.asset(human),
                      ),
                    ),
                    Expanded(
                      child: RotationTransition(
                        turns: new AlwaysStoppedAnimation(-15 / 360),
                        child: Image.asset(cpu),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            new Positioned(
              child: new Align(
                alignment: FractionalOffset.bottomCenter,
                child: Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Container(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        buttonImage(
                          path: 'assets/rock.png',
                          text: 'rock',
                          onTap: () => gameFn(1),
                        ),
                        buttonImage(
                          path: 'assets/paper.png',
                          text: 'paper',
                          onTap: () => gameFn(0),
                        ),
                        buttonImage(
                          path: 'assets/scissors.png',
                          text: 'scissor',
                          onTap: () => gameFn(2),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }

  void gameFn(len) {
    int cpuLen = Random().nextInt(imagePath.length);
    setState(() {
      human = imagePath[len];
      cpu = imagePath[cpuLen];
    });
    gamePlay(human, cpu);
  }

  void gamePlay(String human, String cpu) {
    if (human == cpu) {
    } else if (human == imagePath[0] && cpu == imagePath[1]) {
      setState(() {
        humanpts++;
      });
    } else if (human == imagePath[1] && cpu == imagePath[2]) {
      setState(() {
        humanpts++;
      });
    } else if (human == imagePath[2] && cpu == imagePath[0]) {
      setState(() {
        humanpts++;
      });
    } else {
      setState(() {
        cpupts++;
      });
    }
  }
}
