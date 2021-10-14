import 'package:flutter/material.dart';
import 'personen.dart';

class Buchern extends StatelessWidget {
  const Buchern({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[400],
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.black),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,

          children: [
            Text('Die erste Seite'),
            SizedBox(),
            Text("Büchern"),
            OutlinedButton(
              child: Text('Gehen sie bitte Personen'),
              onLongPress: () {

              }, onPressed: () { Route route = MaterialPageRoute(
              builder: (context) => Personen(),
            );
            Navigator.push(context, route); },
            ), OutlinedButton(
                child: Text('Gehen sie bitte zurück'),
                onLongPress: () {

                }, onPressed: () {
              Navigator.pop(context);
            }
            )
          ],
        ),
      ),
    );
  }
}