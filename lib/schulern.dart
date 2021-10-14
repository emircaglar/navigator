import 'package:flutter/material.dart';


class Schulern extends StatelessWidget {
  const Schulern({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[700],
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.black),
      ),
      body: Center(
        child: Column( mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Text('Die dritte Seite'),
            SizedBox(),
            Text("Schülern"),
            OutlinedButton(
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
