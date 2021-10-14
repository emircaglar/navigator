import 'package:flutter/material.dart';
import 'schulern.dart';
class Personen extends StatelessWidget {
  const Personen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.black),
      ),
      body: Center(
        child: Column( mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Text('Die zweite Seite'),
            SizedBox(),
            Text("Personen"),
            OutlinedButton(
              child: Text('Gehen sie bitte Schulern'),
              onLongPress: () {

              }, onPressed: () {  Route route = MaterialPageRoute(
              builder: (context) => Schulern(),
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
