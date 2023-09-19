import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

void main() {
  runApp(AppTest());
}

class AppTest extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text(
            "Home App",
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 20),
          ),
        ),
        body: const Center(
          child: Text(
            "Flutter test",
            textAlign: TextAlign.center,
            style: TextStyle(
                backgroundColor: Colors.black,
                fontWeight: FontWeight.bold,
                color: Colors.white,
                fontSize: 20),
          ),
        ),
      ),
    );
  }
}

class LottiesTest extends StatelessWidget {
  const LottiesTest({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Load a Lottie file from your assets
            Lottie.asset('anim/runman.json'),

            // Load a Lottie file from a remote url
            // Lottie.network(
            //     'https://raw.githubusercontent.com/xvrh/lottie-flutter/master/example/assets/Mobilo/A.json'),

            // Load an animation and its images from a zip file
            // Lottie.asset('assets/lottiefiles/angel.zip'),
          ],
        ),
      ),
    );
  }
}


