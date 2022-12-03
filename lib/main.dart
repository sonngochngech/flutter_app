import 'package:flutter/material.dart';
import 'package:test5/do1.dart';
import 'package:test5/blue.dart';
import 'package:test5/yellow.dart';
import 'package:test5/Red.dart';
import 'package:test5/green.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.yellow,
      ),
      home: const MyHomePage(title: 'Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;
  int currentindex = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: currentindex == 0
          ? Container(
              padding: EdgeInsets.all(30),
              child: GridView(
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  crossAxisSpacing: 25,
                  mainAxisSpacing: 10,
                  mainAxisExtent: 120,
                  childAspectRatio: 10,
                ),
                children: [
                  Container(
                    child: ElevatedButton(
                        onPressed: () {
                          Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) => const TodoApp(),
                          ));
                        },
                        child: Text(
                          textAlign: TextAlign.center,
                          "Monday",
                          style: TextStyle(fontSize: 20),
                        )),
                  ),
                  Container(
                    child: ElevatedButton(
                      onPressed: () {
                        Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => const TodoApp(),
                        ));
                      },
                      child: Text(
                        textAlign: TextAlign.center,
                        "Tuesday",
                        style: TextStyle(fontSize: 20),
                      ),
                    ),
                  ),
                  Container(
                    child: ElevatedButton(
                        onPressed: () {
                          Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) => const TodoApp(),
                          ));
                        },
                        child: Text(
                          textAlign: TextAlign.center,
                          "Wendesday",
                          style: TextStyle(fontSize: 20),
                        )),
                  ),
                  Container(
                    child: ElevatedButton(
                        onPressed: () {
                          Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) => const TodoApp(),
                          ));
                        },
                        child: Text(
                          textAlign: TextAlign.center,
                          "Thusday",
                          style: TextStyle(fontSize: 20),
                        )),
                  ),
                  Container(
                    child: ElevatedButton(
                        onPressed: () {
                          Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) => const TodoApp(),
                          ));
                        },
                        child: Text(
                          textAlign: TextAlign.center,
                          "Friday",
                          style: TextStyle(fontSize: 20),
                        )),
                  ),
                  Container(
                    child: ElevatedButton(
                        onPressed: () {
                          Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) => const TodoApp(),
                          ));
                        },
                        child: Text(
                          textAlign: TextAlign.center,
                          "Saturday",
                          style: TextStyle(fontSize: 20),
                        )),
                  ),
                  Container(
                    child: ElevatedButton(
                        onPressed: () {
                          Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) => const TodoApp(),
                          ));
                        },
                        child: Text(
                          textAlign: TextAlign.center,
                          "Sunday",
                          style: TextStyle(fontSize: 20),
                        )),
                  ),
                ],
              ),
            )
          : Container(
              padding: EdgeInsets.all(30),
              child: GridView(
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  crossAxisSpacing: 25,
                  mainAxisSpacing: 10,
                  mainAxisExtent: 120,
                  childAspectRatio: 10,
                ),
                children: [
                  Container(
                      child: ElevatedButton(
                    onPressed: () {
                      Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => const BlueApp(),
                      ));
                    },
                    child: Text(
                      textAlign: TextAlign.center,
                      "Blue",
                      style: TextStyle(fontSize: 20),
                    ),
                  )),
                  Container(
                      child: ElevatedButton(
                    onPressed: () {
                      Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => const GreenApp(),
                      ));
                    },
                    child: Text(
                      textAlign: TextAlign.center,
                      "Green",
                      style: TextStyle(fontSize: 20),
                    ),
                  )),
                  Container(
                      child: ElevatedButton(
                    onPressed: () {
                      Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => const YellowApp(),
                      ));
                    },
                    child: Text(
                      textAlign: TextAlign.center,
                      "Yellow",
                      style: TextStyle(fontSize: 20),
                    ),
                  )),
                  Container(
                      child: ElevatedButton(
                    onPressed: () {
                      Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => const RedApp(),
                      ));
                    },
                    child: Text(
                      textAlign: TextAlign.center,
                      "Red",
                      style: TextStyle(fontSize: 20),
                    ),
                  ))
                ],
              )),
      bottomNavigationBar: BottomNavigationBar(
        items: [
          // ignore: prefer_const_constructors
          BottomNavigationBarItem(
              label: 'home',
              icon: Icon(Icons.home, color: Color.fromRGBO(30, 233, 105, 1))),
          // ignore: prefer_const_constructors
          BottomNavigationBarItem(
            label: 'My love',
            // ignore: prefer_const_constructors
            icon: Icon(
              Icons.favorite,
              color: Colors.pink,
            ),
          )
        ],
        currentIndex: currentindex,
        onTap: (int index) {
          setState(() {
            currentindex = index;
          });
        },
      ),
    );
  }
}
