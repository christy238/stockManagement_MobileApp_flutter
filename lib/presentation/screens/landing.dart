import 'package:flutter/material.dart';

class LandingPage extends StatelessWidget {
  const LandingPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // Perform navigation to MyHomePage when this widget is built
    Future.delayed(const Duration(seconds: 3), () {
      Navigator.pushReplacementNamed(
          context, '/signup'); // Replace with '/secondPage' if needed
    });

    return Scaffold(
      backgroundColor: Color.fromARGB(255, 110, 251, 206),
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              Color.fromARGB(255, 80, 255, 249),
              Color.fromARGB(255, 0, 249, 141),
            ],
          ),
        ),
        child: const Center(
          child: Image(
            image: AssetImage("assets/images/en-stock.png"),
            width: 100,
            height: 100,
          ),
        ),
      ),
    );
  }
}
