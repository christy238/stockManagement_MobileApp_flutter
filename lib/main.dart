import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/',
      routes: {
        '/': (context) => const LandingPage(),
        '//': (context) => const MyHomePage(
              title: '',
            ),

        // Add other routes if needed, like '/secondPage': (context) => SecondPage(),
      },
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSwatch(primarySwatch: Colors.deepPurple),
        // useMaterial3: true, // This property might not be needed based on your Flutter version
      ),
      // home: const LandingPage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class LandingPage extends StatelessWidget {
  const LandingPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // Perform navigation to MyHomePage when this widget is built
    Future.delayed(const Duration(seconds: 13), () {
      Navigator.pushReplacementNamed(
          context, '//'); // Replace with '/secondPage' if needed
    });

    return const Scaffold(
      backgroundColor: Colors.amber,
      body: Center(
        child: Image(
          image: AssetImage("assets/images/en-stock(1).png"),
          width: 100,
          height: 200,
        ),
      ),
    );
  }
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text(widget.title),
      ),
      body: const Center(),
      // bottomNavigationBar: BottomNavigationBar(items: [
      //   BottomNavigationBarItem(
      //   icon:
      //   label: ),
      // ]),
    );
  }
}
