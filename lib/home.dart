import 'package:flutter/material.dart';
import 'screen/word.dart';
import 'package:audioplayers/audioplayers.dart';
import 'package:audioplayers/audio_cache.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

AudioPlayer audioPlayer = AudioPlayer(mode: PlayerMode.LOW_LATENCY);

//https://www.soundhelix.com/examples/mp3/SoundHelix-Song-1.mp3

class _HomeState extends State<Home> with SingleTickerProviderStateMixin{
  AudioPlayer advancePlayer;
  AudioCache audioCache;
  AnimationController animationController;
  Animation animation;

  //initiate the Playing

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    animationController = AnimationController(
        vsync: this,
      duration: Duration(seconds: 2)
    );

    animation = Tween(begin: -1.0, end: 0.0).animate(CurvedAnimation(
        parent: animationController, curve: Curves.fastOutSlowIn));
    animationController.forward();
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

/*
    return  FadeTransition(
      opacity: animation,*/
      child: GestureDetector(
          onTap: () {
            audioCache.play('click.mp3');
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => WordLayout()),
            );
          },
          child: Container(

              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/background.png'),
                  fit: BoxFit.cover,
                ),
              ),
              child: Center(
                  child: Padding(
                    padding: EdgeInsets.all(23.0),
                    child: Container(
                      width: 120.0,
                      height: 130.0,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: <Widget>[
                          Padding(
                            padding: EdgeInsets.symmetric(vertical: 8.0),
                            child: Text(
                              "الحروف ",
                              style: TextStyle(
                                  fontSize: 23.0,
                                  fontFamily: 'Comic',
                                  fontWeight: FontWeight.w600,
                                  color: Colors.brown),
                            ),
                          ),
                          Container(
                            height: 60.0,
                            width: 80.0,
                            child: Image.asset('assets/h.png'),
                          ),
                        ],
                      ),
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(30.0),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black26,
                              offset: Offset(4, 1),
                              blurRadius: 10.0,
                            ),
                          ]),
                    ),
                  )
              )
          ),
        );

  }
}
