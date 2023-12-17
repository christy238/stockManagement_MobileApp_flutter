import 'package:flutter/material.dart';
import 'package:fluentui_system_icons/fluentui_system_icons.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:store_app/loginPage.dart';

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
        '/login': (context) => LoginPage(),
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
          context, '/login'); // Replace with '/secondPage' if needed
    });

    return const Scaffold(
      backgroundColor: Colors.amber,
      body: Center(
        child: Image(
          image: AssetImage("assets/images/en-stock(1).png"),
          width: 100,
          height: 100,
        ),
      ),
    );
  }
}

class ListTileWithHoverEffect extends StatefulWidget {
  @override
  _ListTileWithHoverEffectState createState() =>
      _ListTileWithHoverEffectState();
}

class _ListTileWithHoverEffectState extends State<ListTileWithHoverEffect> {
  bool _isHovered = false;

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      onEnter: (_) => setState(() => _isHovered = true),
      onExit: (_) => setState(() => _isHovered = false),
      child: Container(
        color: _isHovered ? Colors.grey.withOpacity(0.3) : Colors.transparent,
        child: ListTile(
          title: Text('Hover me!'),
          onTap: () {
            // Add onTap functionality
          },
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
        backgroundColor: Colors.amberAccent,
        child: Container(
          decoration: const BoxDecoration(
            borderRadius: BorderRadius.only(
              topRight: Radius.circular(2.0), // Adjust as needed
              bottomRight: Radius.circular(2.0), // Adjust as needed
            ),
            color: Color.fromARGB(255, 9, 9, 27),
          ),
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: ListView(
              children: [
                const Text(
                  "   { Logo }",
                  style: TextStyle(
                    color: Color.fromARGB(255, 179, 175, 175),
                    fontSize: 27,
                  ),
                ),
                const SizedBox(
                  height: 80,
                ),

                ListTile(
                  leading: const FaIcon(
                    FontAwesomeIcons.home,
                    color: Color.fromARGB(222, 249, 196, 35),
                  ),
                  // Icon(FluentIcons.),
                  title: const Text(
                    "Home",
                    style: TextStyle(
                      color: Color.fromARGB(222, 249, 196, 35),
                      fontSize: 18,
                    ),
                  ),
                  onTap: () {
                    Navigator.pop(context);
                  },
                ),
                const SizedBox(height: 15), // Adding space after Item 1
                ListTile(
                  leading: const FaIcon(
                    FontAwesomeIcons.calculator,
                    color: Color.fromARGB(201, 193, 192, 192),
                  ),
                  title: const Text(
                    " Inventory",
                    style: TextStyle(
                      color: Color.fromARGB(201, 193, 192, 192),
                      fontSize: 18,
                    ),
                  ),
                  onTap: () {},
                ),
                const SizedBox(height: 15),
                ListTile(
                  leading: const FaIcon(
                    FontAwesomeIcons.cubes,
                    color: Color.fromARGB(201, 193, 192, 192),
                  ),
                  title: const Text(
                    "Stock Tracking",
                    style: TextStyle(
                      color: Color.fromARGB(201, 193, 192, 192),
                      fontSize: 18,
                    ),
                  ),
                  onTap: () {},
                ),
                const SizedBox(height: 15),
                ListTile(
                  leading: const FaIcon(
                    FontAwesomeIcons.listCheck,
                    color: Color.fromARGB(201, 193, 192, 192),
                  ),
                  title: const Text(
                    "Order Management",
                    style: TextStyle(
                      color: Color.fromARGB(201, 193, 192, 192),
                      fontSize: 18,
                    ),
                  ),
                  onTap: () {},
                ),
                const SizedBox(height: 15),
                ListTile(
                  leading: const FaIcon(
                    FontAwesomeIcons.chartSimple,
                    color: Color.fromARGB(201, 193, 192, 192),
                  ),
                  title: const Text(
                    "Reports",
                    style: TextStyle(
                      color: Color.fromARGB(201, 193, 192, 192),
                      fontSize: 18,
                    ),
                  ),
                  onTap: () {},
                ),
                const SizedBox(height: 15),
                ListTile(
                  leading: const FaIcon(
                    FontAwesomeIcons.gear,
                    color: Color.fromARGB(201, 193, 192, 192),
                  ),
                  title: const Text(
                    "Settings",
                    style: TextStyle(
                      color: Color.fromARGB(201, 193, 192, 192),
                      fontSize: 18,
                    ),
                  ),
                  onTap: () {},
                ),
                const SizedBox(height: 145),
                ListTile(
                  leading: const FaIcon(
                    FontAwesomeIcons.rightFromBracket,
                    color: Color.fromARGB(201, 193, 192, 192),
                  ),
                  title: const Text(
                    "Logout",
                    style: TextStyle(
                      color: Color.fromARGB(201, 193, 192, 192),
                      fontSize: 18,
                    ),
                  ),
                  onTap: () {},
                ),
              ],
            ),
          ),
        ),
      ),
      body: Center(),
    );
  }
}
