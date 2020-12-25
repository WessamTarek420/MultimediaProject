import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:audioplayers/audioplayers.dart';
import 'package:audioplayers/audio_cache.dart';

class WordLayout extends StatefulWidget {
  @override
  _WordLayoutState createState() => _WordLayoutState();
}

class _WordLayoutState extends State<WordLayout> {
  List<String> word = [
    'الحروف',
    'أ',
    'ب',
    'ت',
    'ث',
    'ج',
    'ح',
  ];

  AudioPlayer advancePlayer;
  AudioCache audioCache;

  @override
  void initState() {
    super.initState();
    initPlayer();
  }

  void initPlayer() {
    advancePlayer = AudioPlayer();
    audioCache = AudioCache(fixedPlayer: advancePlayer);

    advancePlayer.durationHandler = (d) => setState(() {});
  }

  String localFilePath;

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
          "الحروف",
          style: TextStyle(fontFamily: 'Comic'),
        ),
      ),
      body: Container(
        decoration: BoxDecoration(
            image: DecorationImage(
          image: AssetImage('assets/background.png'),
          fit: BoxFit.cover,
        )),
        child: Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              CarouselSlider(
                height: 400.0,
                initialPage: 0,
                enlargeCenterPage: true,
                autoPlay: true,
                autoPlayAnimationDuration: Duration(milliseconds: 2000),
                scrollDirection: Axis.horizontal,
                onPageChanged: (index) {
                  if (word[index] == 'الحروف') {}
                  if (word[index] == 'أ') {
                    if (audioCache.play('aa.mp3') ==
                        audioCache.play('aa.mp3')) {
                      audioCache.play('aa.mp3');
                    } else {
                      advancePlayer.stop();
                    }
                  }
                  if (word[index] == 'ب') {
                    if (audioCache.play('bb.mp3') ==
                        audioCache.play('bb.mp3')) {
                      audioCache.play('bb.mp3');
                    } else {
                      advancePlayer.stop();
                    }
                  }
                  if (word[index] == 'ت') {
                    if (audioCache.play('tt.mp3') ==
                        audioCache.play('tt.mp3')) {
                      audioCache.play('tt.mp3');
                    } else {
                      advancePlayer.stop();
                    }
                  }
                  if (word[index] == 'ث') {
                    if (audioCache.play('ss.mp3') ==
                        audioCache.play('ss.mp3')) {
                      audioCache.play('ss.mp3');
                    } else {
                      advancePlayer.stop();
                    }
                  }
                  if (word[index] == 'ج') {
                    if (audioCache.play('gg.mp3') ==
                        audioCache.play('gg.mp3')) {
                      audioCache.play('gg.mp3');
                    } else {
                      advancePlayer.stop();
                    }
                  }
                  if (word[index] == 'ح') {
                    if (audioCache.play('hh.mp3') ==
                        audioCache.play('hh.mp3')) {
                      audioCache.play('hh.mp3');
                    } else {
                      advancePlayer.stop();
                    }
                  }
                },
                items: <Widget>[
                  Padding(
                    padding: EdgeInsets.all(10.0),
                    child: Container(
                      width: double.infinity,
                      height: double.infinity,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10.0),
                          color: Colors.white,
                          boxShadow: [
                            BoxShadow(
                                color: Colors.black26,
                                offset: Offset(2, 1),
                                blurRadius: 15.0)
                          ]),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: <Widget>[
                          Container(
                            height: 200.0,
                            width: 200.0,
                            child: Image.asset('assets/h.png'),
                          ),
                          Text(
                            "الحروف",
                            style: TextStyle(
                                fontSize: 25.0,
                                fontFamily: 'Comic',
                                fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.all(10.0),
                    child: Container(
                      width: double.infinity,
                      height: double.infinity,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10.0),
                          color: Colors.white,
                          boxShadow: [
                            BoxShadow(
                                color: Colors.black26,
                                offset: Offset(2, 1),
                                blurRadius: 15.0)
                          ]),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: <Widget>[
                          Container(
                            height: 200.0,
                            width: 200.0,
                            child: Image.asset('assets/new-animal/lion.png'),
                          ),
                          Text(
                            "أ",
                            style: TextStyle(
                                fontSize: 25.0,
                                fontFamily: 'Comic',
                                fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.all(10.0),
                    child: Container(
                      width: double.infinity,
                      height: double.infinity,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10.0),
                          color: Colors.white,
                          boxShadow: [
                            BoxShadow(
                                color: Colors.black26,
                                offset: Offset(4, 1),
                                blurRadius: 12.0)
                          ]),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: <Widget>[
                          Container(
                            height: 200.0,
                            width: 200.0,
                            child: Image.asset('assets/duck.png'),
                          ),
                          Text(
                            "ب",
                            style: TextStyle(
                                fontSize: 25.0,
                                fontFamily: 'Comic',
                                fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.all(10.0),
                    child: Container(
                      width: double.infinity,
                      height: double.infinity,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10.0),
                          color: Colors.white,
                          boxShadow: [
                            BoxShadow(
                                color: Colors.black26,
                                offset: Offset(4, 1),
                                blurRadius: 12.0)
                          ]),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: <Widget>[
                          Container(
                            height: 200.0,
                            width: 200.0,
                            child: Image.asset('assets/croco.png'),
                          ),
                          Text(
                            "ت",
                            style: TextStyle(
                                fontSize: 25.0,
                                fontFamily: 'Comic',
                                fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.all(10.0),
                    child: Container(
                      width: double.infinity,
                      height: double.infinity,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10.0),
                          color: Colors.white,
                          boxShadow: [
                            BoxShadow(
                                color: Colors.black26,
                                offset: Offset(2, 1),
                                blurRadius: 12.0)
                          ]),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: <Widget>[
                          Container(
                            height: 200.0,
                            width: 200.0,
                            child: Image.asset('assets/fox.png'),
                          ),
                          Text(
                            "ث",
                            style: TextStyle(
                                fontSize: 25.0,
                                fontFamily: 'Comic',
                                fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.all(10.0),
                    child: Container(
                      width: double.infinity,
                      height: double.infinity,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10.0),
                          color: Colors.white,
                          boxShadow: [
                            BoxShadow(
                                color: Colors.black26,
                                offset: Offset(2, 1),
                                blurRadius: 12.0)
                          ]),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: <Widget>[
                          Container(
                            height: 200.0,
                            width: 200.0,
                            child: Image.asset('assets/new-animal/giraffe.png'),
                          ),
                          Text(
                            "ج",
                            style: TextStyle(
                                fontSize: 25.0,
                                fontFamily: 'Comic',
                                fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.all(10.0),
                    child: Container(
                      width: double.infinity,
                      height: double.infinity,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10.0),
                          color: Colors.white,
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black26,
                              offset: Offset(2, 1),
                              blurRadius: 12.0,
                            )
                          ]),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: <Widget>[
                          Container(
                            height: 200.0,
                            width: 200.0,
                            child: Image.asset('assets/zebra.png'),
                          ),
                          Text(
                            "ح",
                            style: TextStyle(
                                fontSize: 25.0,
                                fontFamily: 'Comic',
                                fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
