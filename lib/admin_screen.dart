import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_demo/Assessment_view.dart';
import 'package:flutter_demo/chart_screen.dart';

class AdminScreen extends StatefulWidget {
  @override
  State<AdminScreen> createState() => _AdminScreenState();
}

class _AdminScreenState extends State<AdminScreen> {

  List<String> response = ["Task", "Assessment", "Training", "Exam"];
  List<String> values  = ["4", "8", "10", "11"];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: SingleChildScrollView(
          child: Column(
            children: [
              Image.asset("assets/desk.jpg"),
              SizedBox(
                height: 16,
              ),
              Center(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        ElevatedButton(
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => const ChartScreen()));
                          },
                          child: Icon(Icons.add_chart),
                          style: ButtonStyle(
                            shape: MaterialStateProperty.all(CircleBorder()),
                            padding:
                                MaterialStateProperty.all(EdgeInsets.all(16)),
                            backgroundColor: MaterialStateProperty.all(
                                Colors.lightGreen), // <-- Button color
                            overlayColor:
                                MaterialStateProperty.resolveWith<Color?>(
                                    (states) {
                              if (states.contains(MaterialState.pressed))
                                return Colors.greenAccent; // <-- Splash color
                            }),
                          ),
                        ),
                        SizedBox(
                          height: 8,
                        ),
                        Text(
                          "Chart",
                          style: TextStyle(
                              color: Colors.green, fontWeight: FontWeight.w300),
                        )
                      ],
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        ElevatedButton(
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => const AssessmentView()));
                          },
                          child: Icon(Icons.access_time_sharp),
                          style: ButtonStyle(
                            shape: MaterialStateProperty.all(CircleBorder()),
                            padding:
                                MaterialStateProperty.all(EdgeInsets.all(16)),
                            backgroundColor: MaterialStateProperty.all(
                                Colors.lightGreen), // <-- Button color
                            overlayColor:
                                MaterialStateProperty.resolveWith<Color?>(
                                    (states) {
                              if (states.contains(MaterialState.pressed))
                                return Colors.greenAccent; // <-- Splash color
                            }),
                          ),
                        ),
                        SizedBox(
                          height: 8,
                        ),
                        Text(
                          "Timesheet",
                          style: TextStyle(
                              color: Colors.green, fontWeight: FontWeight.w300),
                        )
                      ],
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        ElevatedButton(
                          onPressed: () {},
                          child: Icon(Icons.account_tree_sharp),
                          style: ButtonStyle(
                            shape: MaterialStateProperty.all(CircleBorder()),
                            padding:
                                MaterialStateProperty.all(EdgeInsets.all(16)),
                            backgroundColor: MaterialStateProperty.all(
                                Colors.lightGreen), // <-- Button color
                            overlayColor:
                                MaterialStateProperty.resolveWith<Color?>(
                                    (states) {
                              if (states.contains(MaterialState.pressed))
                                return Colors.greenAccent; // <-- Splash color
                            }),
                          ),
                        ),
                        SizedBox(
                          height: 8,
                        ),
                        Text(
                          "Connect",
                          style: TextStyle(
                              color: Colors.green, fontWeight: FontWeight.w300),
                        )
                      ],
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        ElevatedButton(
                          onPressed: () {},
                          child: Icon(Icons.add_call),
                          style: ButtonStyle(
                            shape: MaterialStateProperty.all(CircleBorder()),
                            padding:
                                MaterialStateProperty.all(EdgeInsets.all(16)),
                            backgroundColor: MaterialStateProperty.all(
                                Colors.lightGreen), // <-- Button color
                            overlayColor:
                                MaterialStateProperty.resolveWith<Color?>(
                                    (states) {
                              if (states.contains(MaterialState.pressed))
                                return Colors.greenAccent; // <-- Splash color
                            }),
                          ),
                        ),
                        SizedBox(
                          height: 8,
                        ),
                        Text(
                          "Phone call",
                          style: TextStyle(
                              color: Colors.green, fontWeight: FontWeight.w300),
                        )
                      ],
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 32,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    margin: EdgeInsets.only(left: 32),
                    child: Text(
                      "Progress",
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        color: Colors.black26,
                      ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(right: 32),
                    child: Text(
                      ". . .",
                      style: TextStyle(
                          fontSize: 16,
                          color: Colors.black26,
                          fontWeight: FontWeight.bold),
                    ),
                  )
                ],
              ),
              Container(
                  width: double.infinity,
                  padding: EdgeInsets.all(16),
                  margin: EdgeInsets.all(16),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    boxShadow: [
                      BoxShadow(
                        color: Colors.lightGreen,
                        spreadRadius: 1,
                        blurRadius: 1,
                        offset: Offset(0, 0),
                      ),
                    ],
                    borderRadius: BorderRadius.circular(16),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Task completion",
                        style: TextStyle(
                            color: Colors.green, fontWeight: FontWeight.w300),
                      ),
                      SizedBox(
                        height: 6,
                      ),
                      LinearProgressIndicator(
                        backgroundColor: Colors.lightGreen[200],
                        color: Colors.green[700],
                        value: 0.4,
                      ),
                      SizedBox(
                        height: 16,
                      ),
                      Text(
                        "Assessment",
                        style: TextStyle(
                            color: Colors.green, fontWeight: FontWeight.w300),
                      ),
                      SizedBox(
                        height: 6,
                      ),
                      LinearProgressIndicator(
                        backgroundColor: Colors.lightGreen[200],
                        color: Colors.green[700],
                        value: 0.3,
                      ),
                      SizedBox(
                        height: 16,
                      ),
                      Text(
                        "Training",
                        style: TextStyle(
                            color: Colors.green, fontWeight: FontWeight.w300),
                      ),
                      SizedBox(
                        height: 6,
                      ),
                      LinearProgressIndicator(
                        backgroundColor: Colors.lightGreen[200],
                        color: Colors.green[700],
                        value: 0.7,
                      ),
                      SizedBox(
                        height: 16,
                      ),
                      Text(
                        "Exam",
                        style: TextStyle(
                            color: Colors.green, fontWeight: FontWeight.w300),
                      ),
                      SizedBox(
                        height: 6,
                      ),
                      LinearProgressIndicator(
                        backgroundColor: Colors.lightGreen[200],
                        color: Colors.green[700],
                        value: 0.6,
                      ),
                      SizedBox(
                        height: 16,
                      ),
                    ],
                  )),
              SizedBox(
                height: 8,
              ),
              SizedBox(
                height: 180,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Container(
                      margin: EdgeInsets.only(left: 1, right: 32),
                      width: 365,
                      child: ListView.builder(
                          shrinkWrap: true,
                          physics: AlwaysScrollableScrollPhysics(),
                          itemCount: 4,
                          scrollDirection: Axis.horizontal,
                          itemBuilder: (BuildContext context, int index) {
                            return Container(
                              width: 150,
                              padding: EdgeInsets.all(16),
                              margin: EdgeInsets.only(left: 16, top: 1, bottom: 16),
                              decoration: BoxDecoration(
                                color: Colors.lightGreen[50],
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.lightGreen.withOpacity(0.5),
                                    spreadRadius: 1,
                                    blurRadius: 1,
                                    offset: Offset(0, 0),
                                  ),
                                ],
                                borderRadius: BorderRadius.circular(16),
                              ),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Container(
                                    decoration: BoxDecoration(
                                      color: Colors.white,
                                      boxShadow: [
                                        BoxShadow(
                                          color: Colors.lightGreen.shade100,
                                          spreadRadius: 1,
                                          blurRadius: 1,
                                          offset: Offset(0, 0),
                                        ),
                                      ],
                                      borderRadius: BorderRadius.circular(16),
                                    ),
                                    width: 100,
                                    padding: EdgeInsets.all(8),
                                    child: Center(child: Text(response[index],
                                    style: TextStyle(
                                      color: Colors.green
                                    ),),
                                    )
                                  ),
                                  SizedBox(height: 12,),
                                  Text(values[index],
                                  style: TextStyle(
                                    fontSize: 52,
                                    color: Colors.green.shade400
                                  ),),
                                  Text("left",
                                    style: TextStyle(
                                        fontSize: 11,
                                        color: Colors.green.shade400
                                    ),)
                                ],
                              ),
                            );
                          }),
                    )
                  ],
                )
              )
            ],
          ),
        ));
  }
}
