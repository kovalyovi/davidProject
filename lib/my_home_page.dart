import 'package:flutter/material.dart';

import 'my_home_page1.dart';

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    // return Text("LOL");
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Text("LOL1"),
            Image.asset('assets/images/background_intro_0.png'),
            Text("LOL1"),
            Text("LOL1"),
            Row(
              children: <Widget>[
                GestureDetector(
                  onTap: () => _navigateToSecondPage(context),
                  child: Image.asset(
                    'assets/images/background_intro_0.png',
                    width: 100,
                  ),
                ),
                GestureDetector(
                  child: Image.asset(
                    'assets/images/background_intro_0.png',
                    width: 100,
                  ),
                ),
                Text("LOL2"),
              ],
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Decrement',
        child: Icon(Icons.settings),
        backgroundColor: Colors.brown,
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }

  _navigateToSecondPage(context) {
    Navigator.of(context).push(
      MaterialPageRoute(
        builder: (_) => MyHomePage1(title: "I AM THE TITLEEEE AGRH"),
      ),
    );
  }
}
