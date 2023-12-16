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
          height: 180,
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
          backgroundColor: Colors.amber,
          title: const Text(
            "Menu",
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 18,
            ),
          )),
      drawer: Drawer(
        backgroundColor: Color.fromARGB(242, 10, 8, 18),
        child: ListView(
          children: [
            const DrawerHeader(
              // decoration:
              //     BoxDecoration(color: Color.fromARGB(255, 242, 239, 232)),
              child: Text(
                "Menu",
                style: TextStyle(
                  color: Color.fromARGB(255, 134, 131, 131),
                  fontSize: 24,
                ),
              ),
            ),
            ListTile(
              leading: Icon(Icons.home),
              title: const Text(
                "page1",
                style: TextStyle(
                  color: Color.fromARGB(255, 123, 121, 121),
                  fontSize: 18,
                ),
              ),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: const Text(
                "page2",
                style: TextStyle(
                  color: Color.fromARGB(255, 123, 121, 121),
                  fontSize: 18,
                ),
              ),
              onTap: () {},
            ),
            ListTile(
              title: const Text(
                "page2",
                style: TextStyle(
                  color: Color.fromARGB(255, 123, 121, 121),
                  fontSize: 18,
                ),
              ),
              onTap: () {},
            ),
            ListTile(
              title: const Text(
                "page2",
                style: TextStyle(
                  color: Color.fromARGB(255, 123, 121, 121),
                  fontSize: 18,
                ),
              ),
              onTap: () {},
            ),
            ListTile(
              title: const Text(
                "page2",
                style: TextStyle(
                  color: Color.fromARGB(255, 123, 121, 121),
                  fontSize: 18,
                ),
              ),
              onTap: () {},
            ),
          ],
        ),
      ),
      body: Center(),
    );
  }
}
