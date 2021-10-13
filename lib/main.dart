import 'package:flutter/material.dart';

void main() {
  runApp(Navigator1());
}

class Navigator1 extends StatelessWidget {
  const Navigator1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Home(),
    );
  }
}

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          children: [Text('Navigator')],
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Wir testen navigator function'),
            OutlinedButton(
              child: Text('gehen sie bitte Books'),
              onLongPress: () {

              }, onPressed: () {Route route = MaterialPageRoute(
              builder: (context) => Books(),
            );
            Navigator.push(context, route);  },
            )
          ],
        ),
      ),
    );
  }
}

class Books extends StatelessWidget {
  const Books({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.cyan,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text('Die erste Seite'),
          OutlinedButton(
            child: Text('Gehen sie bitte Personen'),
            onLongPress: () {

            }, onPressed: () { Route route = MaterialPageRoute(
            builder: (context) => Personen(),
          );
          Navigator.push(context, route); },
          )
        ],
      ),
    );
  }
}

class Personen extends StatelessWidget {
  const Personen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column( mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text('Die zweite Seite'),
          OutlinedButton(
            child: Text('Gehen sie bitte Schulern'),
            onLongPress: () {

            }, onPressed: () {  Route route = MaterialPageRoute(
            builder: (context) => Schulern(),
          );
          Navigator.push(context, route); },
          )
        ],
      ),
    );
  }
}

class Schulern extends StatelessWidget {
  const Schulern({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column( mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text('Die dritte Seite'),
          OutlinedButton(
            child: Text('Gehen sie bitte Personen'),
            onLongPress: () {

            }, onPressed: () { Route route = MaterialPageRoute(
            builder: (context) => Personen(),
          );
          Navigator.push(context, route); },
          )
        ],
      ),
    );
  }
}
