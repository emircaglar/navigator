import 'package:flutter/material.dart';
import 'büchern.dart';

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
              builder: (context) => Buchern(),
            );
            Navigator.push(context, route);  },
            )
          ],
        ),
      ),
    );
  }
}



