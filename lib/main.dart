import 'package:flutter/material.dart';

Widget scene = TestLayout();

void main() => runApp(MaterialApp(
  home: scene,
));

void changeScene(Widget scene){
  runApp(MaterialApp(home: scene));
}


class TestLayout extends StatefulWidget {
  @override
  _TestLayoutState createState() => _TestLayoutState();
}

class _TestLayoutState extends State<TestLayout> {

  int age = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[800],
      appBar: AppBar(
        title: Text(
          'Martin ID card',
          style: TextStyle(
            color: Colors.white,
          ),
        ),
        centerTitle: true,
        backgroundColor: Colors.black,
        elevation: 0.0,
      ),
      body: Column(
        children: <Widget>[
          Expanded(
            child: Row(
              children: <Widget>[
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.fromLTRB(30.0, 15.0, 30.0, 0.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment. start,
                      children: <Widget>[
                        Center(
                          child: CircleAvatar(
                            radius: 50.0,
                            backgroundImage: AssetImage("assets/images/beard.png"),
                            backgroundColor: Colors.black,
                          ),
                        ),
                        Divider(
                          height: 60,
                          color: Colors.black,
                        ),
                        Container(
                          child: Text(
                            'NAME:',
                            style: TextStyle(
                              color: Colors.amber,
                              fontSize: 14,
                              letterSpacing: 1.0,
                            ),
                          ),
                        ),
                        Container(
                          child: Text(
                            'Martin Rose',
                            style: TextStyle(
                              color: Colors.grey[300],
                              fontSize: 28,
                              letterSpacing: 2.0,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Container(
                          child: Text(
                            'AGE',
                            style: TextStyle(
                              color: Colors.amber,
                              fontSize: 14,
                              letterSpacing: 1.0,
                            ),
                          ),
                        ),
                        Container(
                          child: Text(
                            '$age years',
                            style: TextStyle(
                              color: Colors.grey[300],
                              fontSize: 28,
                              letterSpacing: 2.0,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                        Container(
                          child: Row(
                            children: <Widget>[
                              Container(
                                child: Icon(
                                  Icons.email,
                                  color: Colors.amber,
                                ),
                              ), SizedBox(
                                width: 10,
                              ),
                              Container(
                                child: Text(
                                  'Send them emails',
                                  style: TextStyle(
                                    color: Colors.amber,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 16,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  )
                ),
              ],
            )
          ),
          Row(
            children: <Widget>[
              Expanded(
                child: Container(
                  padding: EdgeInsets.fromLTRB(30, 10, 30, 10),
                  color: Colors.deepPurpleAccent,
                  child: Row(
                    children: <Widget>[
                      IconButton(
                        icon: Icon(Icons.add),
                        tooltip: 'Increase le age',
                        onPressed: (){
                          setState(() {
                            age +=1;
                          });
                        },
                      ),
                      IconButton(
                        icon: Icon(Icons.arrow_downward),
                        tooltip: 'Reduce le age',
                        onPressed: (){
                          setState(() {
                            age -=1;
                          });
                        },
                      ),
                      Text(
                        'This is my banner',
                        style: TextStyle(
                          color: Colors.amber,
                          fontSize: 40,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ],
      )
    );
  }
}

class WorkOut extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[700],
      appBar: AppBar(
        title: Text(
          'Testing workout',
          style: TextStyle(
            color: Colors.black,
            fontSize: 18,
            fontWeight: FontWeight.bold,
            letterSpacing: 2.0,
          ),
        ),
      ),
      body: Row(
        children: <Widget>[
          Expanded(
            child: Column(
              children: <Widget>[
                Expanded( //Main screen?
                  child: Column(
                    children: <Widget>[
                      
                    ],
                  ),
                ),
                Container( //bottom menu?
                  color: Colors.red[500],
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}


/*
class WorkoutOverview extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[700],
      appBar: AppBar(
        title: Text(
          'Testing workout',
          style: TextStyle(
            color: Colors.black,
            fontSize: 18,
            fontWeight: FontWeight.bold,
            letterSpacing: 2.0,
          ),
        ),
        elevation: 0.0,
        backgroundColor: Colors.purple,
        centerTitle: true,
      ),
      body: Row(
        children: <Widget>[
          Expanded( //expands all but the bottom bar
            child: Column(
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Expanded( //The main screen

                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container( //Bottom bar
                    color: Colors.red,
                  ),
                ),
              ],
            )
          ),
          ))
        ],
      ),
    );
  }
}
*/

