import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'Quiz.dart';
import 'Quiz2.dart';
import 'package:flutter_one/task-form.dart';

class Tasks extends StatefulWidget {
  @override
  _TasksState createState() => _TasksState();
}

class _TasksState extends State<Tasks> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: MainContainer(),
    );
  }
}

class MainContainer extends StatefulWidget {
  @override
  _MainContainerState createState() => _MainContainerState();
}

class _MainContainerState extends State<MainContainer>
    with SingleTickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    double centerheight = MediaQuery.of(context).size.height / 6;
    double widthCOntainer = MediaQuery.of(context).size.width;
    double containerWidth = MediaQuery.of(context).size.width / 3;
    return Container(
      decoration: BoxDecoration(
          image: DecorationImage(
        image: AssetImage("assets/background.png"),
        fit: BoxFit.fitWidth,
      )),
      child: CustomScrollView(
        slivers: <Widget>[
          SliverList(
            delegate: SliverChildListDelegate([
              Column(
                children: <Widget>[
                  Container(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: <Widget>[
                        GestureDetector(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => Quiz()));
                          },
                          // ignore: non_constant_identifier_names
                          onTapUp: (TapUpDetails) {
                            setState(() {
                              quiz1 = Colors.white;
                            });
                          },
                          // ignore: non_constant_identifier_names
                          onTapDown: (TapDownDetails) {
                            setState(() {
                              quiz1 = Colors.blue[300];
                            });
                          },
                          child: Container(
                            width: widthCOntainer / 2.4,
                            height: 150,
                            margin: EdgeInsets.symmetric(
                                horizontal: 14, vertical: 10),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(12),
                              color: quiz1,
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.black26,
                                  offset: Offset(1, 10),
                                  blurRadius: 9,
                                ),
                              ],
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: <Widget>[
                                Container(
                                  width: containerWidth,
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: <Widget>[
                                      Text(
                                        "المستوي ",
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontFamily: 'Comic',
                                            fontSize: 30,
                                            fontWeight: FontWeight.bold),
                                      ),
                                      Text(
                                        "الأول",
                                        style: TextStyle(
                                            fontFamily: 'comic',
                                            fontSize: 25,
                                            color: Colors.grey[200]),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),

                        //Another COntainer
                        GestureDetector(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => Quiz2()));
                          },
                          // ignore: non_constant_identifier_names
                          onTapUp: (TapUpDetails) {
                            setState(() {
                              quiz2 = Colors.white;
                            });
                          },
                          // ignore: non_constant_identifier_names
                          onTapDown: (TapDownDetails) {
                            setState(() {
                              quiz2 = Colors.blue[300];
                            });
                          },
                          child: Container(
                            width: widthCOntainer / 2.4,
                            height: 150,
                            margin: EdgeInsets.symmetric(
                                horizontal: 14, vertical: 10),
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(12),
                                color: quiz2,
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.black26,
                                    offset: Offset(1, 10),
                                    blurRadius: 9,
                                  ),
                                ]),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: <Widget>[
                                Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: <Widget>[
                                    Text(
                                      "المستوي ",
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontFamily: 'Comic',
                                          fontSize: 30,
                                          fontWeight: FontWeight.bold),
                                    ),
                                    Text(
                                      "الثاني",
                                      style: TextStyle(
                                          fontFamily: 'comic',
                                          color: Colors.grey[200],
                                          fontSize: 25),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ]),
          ),
        ],
      ),
    );
  }
}
