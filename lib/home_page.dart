import 'dart:math';

import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  ApplicationMode _applicationMode;
  Map<ApplicationMode, String> languageContent = {
    ApplicationMode.chineese: 'ni hao',
    ApplicationMode.french: 'oui oui',
    ApplicationMode.english: 'hello',
    ApplicationMode.spanish: 'ola',
  };

  @override
  void initState() {
    super.initState();
    _applicationMode = ApplicationMode.english;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("I am DAVID!"),
        centerTitle: true,
      ),
      body: Column(
        children: <Widget>[
          Text(_applicationMode.toString()),
          RaisedButton(
            onPressed: () => _changeMode(ApplicationMode.chineese),
            child: Text("Change mode to chineese"),
          ),
          RaisedButton(
            onPressed: () => _changeMode(ApplicationMode.english),
            child: Text("Change mode to english"),
          ),
          RaisedButton(
            onPressed: () => _changeMode(ApplicationMode.french),
            child: Text("Change mode to french"),
          ),
          RaisedButton(
            onPressed: () => _changeMode(ApplicationMode.spanish),
            child: Text("Change mode to spanish"),
          ),
          Text(languageContent[_applicationMode]),
        ],
      ),
    );
  }

  _changeMode(ApplicationMode newMode) {
    setState(() {
      _applicationMode = newMode;
    });
  }
}

enum ApplicationMode { spanish, english, chineese, french }
