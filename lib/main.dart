import 'package:flutter/material.dart';

void main() {
  runApp(pointsCounter());
}

class pointsCounter extends StatefulWidget {
  @override
  State<pointsCounter> createState() => _pointsCounterState();
}

class _pointsCounterState extends State<pointsCounter> {
  int teamAPoints = 0;
  int teamBPoints = 0;
  void addOnePoint() {
    print("add one Point ");
  }

  void addTwoPoint() {
    print("add Two Point ");
  }

  void addThreePoint() {
    print("add Three Point ");
  }

  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.deepPurple,
            title: Text("points Counter"),
          ),
          body: Column(children: [
            IntrinsicHeight(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Column(
                    children: [
                      Text(
                        "Team A",
                        style: TextStyle(fontSize: 33),
                      ),
                      Text(
                        "$teamAPoints",
                        style: TextStyle(fontSize: 150),
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      ElevatedButton(
                        onPressed: () {
                          setState(() {
                            teamAPoints++;
                          });
                          print(teamAPoints);
                        },
                        child: Text(
                          "Add 1 Point",
                          style: TextStyle(fontSize: 19),
                        ),
                        style: ElevatedButton.styleFrom(
                            primary: Colors.deepPurple),
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      ElevatedButton(
                        onPressed: () {
                          setState(() {
                            teamAPoints += 2;
                          });
                        },
                        child: Text(
                          "Add 2 Point",
                          style: TextStyle(fontSize: 19),
                        ),
                        style: ElevatedButton.styleFrom(
                            primary: Colors.deepPurple),
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      ElevatedButton(
                        onPressed: () {
                          setState(() {
                            teamAPoints += 3;
                          });
                        },
                        child: Text(
                          "Add 3 Point",
                          style: TextStyle(fontSize: 19),
                        ),
                        style: ElevatedButton.styleFrom(
                            primary: Colors.deepPurple),
                      )
                    ],
                  ),
                  VerticalDivider(
                    color: Colors.grey,
                    thickness: 1,
                  ),
                  Column(
                    children: [
                      Text(
                        "Team B",
                        style: TextStyle(fontSize: 33),
                      ),
                      Text(
                        "$teamBPoints",
                        style: TextStyle(fontSize: 150),
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      ElevatedButton(
                        onPressed: () {
                          setState(() {
                            teamBPoints++;
                          });
                        },
                        child: Text(
                          "Add 1 Point",
                          style: TextStyle(fontSize: 19),
                        ),
                        style: ElevatedButton.styleFrom(
                            primary: Colors.deepPurple),
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      ElevatedButton(
                        onPressed: () {
                          setState(() {
                            teamBPoints += 2;
                          });
                        },
                        child: Text(
                          "Add 2 Point",
                          style: TextStyle(fontSize: 19),
                        ),
                        style: ElevatedButton.styleFrom(
                            primary: Colors.deepPurple),
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      ElevatedButton(
                        onPressed: () {
                          setState(() {
                            teamBPoints += 3;
                          });
                        },
                        child: Text(
                          "Add 3 Point",
                          style: TextStyle(fontSize: 19),
                        ),
                        style: ElevatedButton.styleFrom(
                            primary: Colors.deepPurple),
                      )
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 15,
            ),
            ElevatedButton(
              onPressed: () {
                setState(() {
                  teamAPoints = 0;
                  teamBPoints = 0;
                });
              },
              child: Text(
                "Reset",
                style: TextStyle(fontSize: 22),
              ),
              style: ElevatedButton.styleFrom(primary: Colors.deepPurple),
            )
          ]),
        ));
  }
}
