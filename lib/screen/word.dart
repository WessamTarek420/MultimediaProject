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
    'خ',
    'د',
    'ذ',
    'ر',
    'ز',
    'س',
    'ش',
    'ص',
    'ض',
    'ط',
    'ظ',
    'ع',
    'غ',
    'ف',
    'ق',
    'ك',
    'م',
    'ن',
    'ه',
    'و',
    'ي'
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

  //String localFilePath;

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
                autoPlayAnimationDuration: Duration(milliseconds: 2500),
                autoPlayInterval: Duration(milliseconds: 4500),
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
                  if (word[index] == 'خ') {
                    if (audioCache.play('خروف.mp3') ==
                        audioCache.play('خروف.mp3')) {
                      audioCache.play('خروف.mp3');
                    } else {
                      advancePlayer.stop();
                    }
                  }
                  if (word[index] == 'د') {
                    if (audioCache.play('ديك.mp3') ==
                        audioCache.play('ديك.mp3')) {
                      audioCache.play('ديك.mp3');
                    } else {
                      advancePlayer.stop();
                    }
                  }
                  if (word[index] == 'ذ') {
                    if (audioCache.play('ذئب.mp3') ==
                        audioCache.play('ذئب.mp3')) {
                      audioCache.play('ذئب.mp3');
                    } else {
                      advancePlayer.stop();
                    }
                  }
                  if (word[index] == 'ر') {
                    if (audioCache.play('رقون.mp3') ==
                        audioCache.play('رقون.mp3')) {
                      audioCache.play('رقون.mp3');
                    } else {
                      advancePlayer.stop();
                    }
                  }
                  if (word[index] == 'ز') {
                    if (audioCache.play('زرافة.mp3') ==
                        audioCache.play('زرافة.mp3')) {
                      audioCache.play('زرافة.mp3');
                    } else {
                      advancePlayer.stop();
                    }
                  }
                  if (word[index] == 'س') {
                    if (audioCache.play('سنجاب.mp3') ==
                        audioCache.play('سنجاب.mp3')) {
                      audioCache.play('سنجاب.mp3');
                    } else {
                      advancePlayer.stop();
                    }
                  }
                  if (word[index] == 'ش') {
                    if (audioCache.play('شبل.mp3') ==
                        audioCache.play('شبل.mp3')) {
                      audioCache.play('شبل.mp3');
                    } else {
                      advancePlayer.stop();
                    }
                  }
                  if (word[index] == 'ص') {
                    if (audioCache.play('صقر.mp3') ==
                        audioCache.play('صقر.mp3')) {
                      audioCache.play('صقر.mp3');
                    } else {
                      advancePlayer.stop();
                    }
                  }
                  if (word[index] == 'ض') {
                    if (audioCache.play('ضفدع.mp3') ==
                        audioCache.play('ضفدع.mp3')) {
                      audioCache.play('ضفدع.mp3');
                    } else {
                      advancePlayer.stop();
                    }
                  }
                  if (word[index] == 'ط') {
                    if (audioCache.play('طاووس.mp3') ==
                        audioCache.play('طاووس.mp3')) {
                      audioCache.play('طاووس.mp3');
                    } else {
                      advancePlayer.stop();
                    }
                  }
                  if (word[index] == 'ظ') {
                    if (audioCache.play('ظبي.mp3') ==
                        audioCache.play('ظبي.mp3')) {
                      audioCache.play('ظبي.mp3');
                    } else {
                      advancePlayer.stop();
                    }
                  }
                  if (word[index] == 'ع') {
                    if (audioCache.play('عصفور.mp3') ==
                        audioCache.play('عصفور.mp3')) {
                      audioCache.play('عصفور.mp3');
                    } else {
                      advancePlayer.stop();
                    }
                  }
                  if (word[index] == 'غ') {
                    if (audioCache.play('غزال.mp3') ==
                        audioCache.play('غزال.mp3')) {
                      audioCache.play('غزال.mp3');
                    } else {
                      advancePlayer.stop();
                    }
                  }
                  if (word[index] == 'ف') {
                    if (audioCache.play('فيل.mp3') ==
                        audioCache.play('فيل.mp3')) {
                      audioCache.play('فيل.mp3');
                    } else {
                      advancePlayer.stop();
                    }
                  }
                  if (word[index] == 'ق') {
                    if (audioCache.play('قطة.mp3') ==
                        audioCache.play('قطة.mp3')) {
                      audioCache.play('قطة.mp3');
                    } else {
                      advancePlayer.stop();
                    }
                  }
                  if (word[index] == 'ك') {
                    if (audioCache.play('كلب.mp3') ==
                        audioCache.play('كلب.mp3')) {
                      audioCache.play('كلب.mp3');
                    } else {
                      advancePlayer.stop();
                    }
                  }

                  if (word[index] == 'م') {
                    if (audioCache.play('ماعز.mp3') ==
                        audioCache.play('ماعز.mp3')) {
                      audioCache.play('ماعز.mp3');
                    } else {
                      advancePlayer.stop();
                    }
                  }
                  if (word[index] == 'ن') {
                    if (audioCache.play('نمر.mp3') ==
                        audioCache.play('نمر.mp3')) {
                      audioCache.play('نمر.mp3');
                    } else {
                      advancePlayer.stop();
                    }
                  }
                  if (word[index] == 'ه') {
                    if (audioCache.play('هدهد.mp3') ==
                        audioCache.play('هدهد.mp3')) {
                      audioCache.play('هدهد.mp3');
                    } else {
                      advancePlayer.stop();
                    }
                  }
                  if (word[index] == 'و') {
                    if (audioCache.play('وحيد.mp3') ==
                        audioCache.play('وحيد.mp3')) {
                      audioCache.play('وحيد.mp3');
                    } else {
                      advancePlayer.stop();
                    }
                  }
                  if (word[index] == 'ي') {
                    if (audioCache.play('يمامة.mp3') ==
                        audioCache.play('يمامة.mp3')) {
                      audioCache.play('يمامة.mp3');
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
                            child: Image.asset('assets/lion.png'),
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
                            child: Image.asset('assets/giraffe.png'),
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
                            child: Image.asset('assets/pic/خروف.png'),
                          ),
                          Text(
                            "خ",
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
                            child: Image.asset('assets/pic/ديك.png'),
                          ),
                          Text(
                            "د",
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
                            child: Image.asset('assets/pic/ذئب.png'),
                          ),
                          Text(
                            "ذ",
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
                            child: Image.asset('assets/pic/رقون.png'),
                          ),
                          Text(
                            "ر",
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
                            child: Image.asset('assets/pic/زرافة.png'),
                          ),
                          Text(
                            "ز",
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
                            child: Image.asset('assets/pic/سنجاب.png'),
                          ),
                          Text(
                            "س",
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
                            child: Image.asset('assets/pic/شبل.png'),
                          ),
                          Text(
                            "ش",
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
                            child: Image.asset('assets/pic/صقر.png'),
                          ),
                          Text(
                            "ص",
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
                            child: Image.asset('assets/pic/ضفدع.png'),
                          ),
                          Text(
                            "ض",
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
                            child: Image.asset('assets/pic/طاووس.png'),
                          ),
                          Text(
                            "ط",
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
                            child: Image.asset('assets/pic/ظبي.png'),
                          ),
                          Text(
                            "ظ",
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
                            child: Image.asset('assets/pic/عصفور.png'),
                          ),
                          Text(
                            "ع",
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
                            child: Image.asset('assets/pic/غزال.png'),
                          ),
                          Text(
                            "غ",
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
                            child: Image.asset('assets/pic/فيل.png'),
                          ),
                          Text(
                            "ف",
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
                            child: Image.asset('assets/pic/قطة.png'),
                          ),
                          Text(
                            "ق",
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
                            child: Image.asset('assets/pic/كلب.png'),
                          ),
                          Text(
                            "ك",
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
                            child: Image.asset('assets/pic/ماعز.png'),
                          ),
                          Text(
                            "م",
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
                            child: Image.asset('assets/pic/نمر.png'),
                          ),
                          Text(
                            "ن",
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
                            child: Image.asset('assets/pic/هدهد.png'),
                          ),
                          Text(
                            "ه",
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
                            child: Image.asset('assets/pic/وحيد.png'),
                          ),
                          Text(
                            "و",
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
                            child: Image.asset('assets/pic/يمامة.png'),
                          ),
                          Text(
                            "ي",
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

  @override
  void dispose() {
    advancePlayer.stop();
    super.dispose();
  }
}
