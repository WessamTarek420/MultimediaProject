import 'dart:math';

import 'package:audioplayers/audio_cache.dart';
import 'package:flutter/material.dart';

class Quiz extends StatefulWidget {
  @override
  _QuizLayoutState createState() => _QuizLayoutState();
}

class _QuizLayoutState extends State<Quiz> {
  var player = AudioCache();
  Map<String, bool> score = {};
  Map<String, String> choices = {
    '🦁': "أسد",
    '🐘': "فيل",
    '🐴': "حصان",
    '🐈': "قطه",
  };
  int index = 0;
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Image.asset('assets/arrow2.png'),
        ),
        backgroundColor: Colors.deepOrangeAccent,
        elevation: 0.0,
        centerTitle: true,
        title: Text(
          "المستوي الأول",
          style: TextStyle(fontFamily: 'Comic'),
        ),
      ),
      body: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: choices.keys.map((element) {
              return Expanded(
                child: Draggable<String>(
                  data: element,
                  child: Movable(score[element] == true ? '✔️' : element),
                  feedback: Movable(element),
                  childWhenDragging: Movable(element),
                ),
              );
            }).toList(),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: choices.keys.map((element) {
              return buildTarget(element);
            }).toList()
              ..shuffle(Random(index)),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.refresh),
        onPressed: () {
          setState(() {
            score.clear();
            index++;
          });
        },
      ),
    );
  }

  Widget buildTarget(element) {
    return DragTarget<String>(
      builder: (context, incoming, rejected) {
        if (score[element] == true) {
          return Container(
            color: Colors.white,
            child: Text('Congratulations !'),
            alignment: Alignment.center,
            height: 100,
            width: 200,
          );
        } else {
          return Container(
            alignment: Alignment.center,
            child: Text(choices[element]),
            height: 150,
            width: 200,
          );
        }
      },
      onWillAccept: (data) => data == element,
      onAccept: (data) {
        setState(() {
          score[element] = true;
          player.play('ggg.mp3');
        });
      },
      onLeave: (data) {},
    );
  }
}

class Movable extends StatelessWidget {
  String emoji;
  Movable(this.emoji);
  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.transparent,
      child: Container(
        alignment: Alignment.center,
        padding: EdgeInsets.all(7),
        height: 100,
        child: Text(
          emoji,
          style: TextStyle(color: Colors.black, fontSize: 60),
        ),
      ),
    );
  }
}
