import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

main() {
  runApp(InvisibleTest());
}

class InvisibleTest extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text("Test Invisible")),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              width: 300,
              height: 60,
              color: Colors.green,
            ),
            Container(
              width: 100,
              height: 50,
              color: Colors.red,
              child: const Text(
                "COba aja",
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 15,
                ),
              ),
            ),
            Container(
              width: 230,
              height: 80,
              color: Colors.yellow,
            ),
          ],
        ),
      ),
    );
  }
}
