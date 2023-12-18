import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:fluentui_system_icons/fluentui_system_icons.dart';
import 'package:syncfusion_flutter_charts/charts.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:store_app/loginPage.dart';
import 'package:store_app/signupPage.dart';

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
        '/signup': (context) => signupPage(),
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
        toolbarHeight: 60,
        backgroundColor: const Color.fromARGB(255, 255, 255, 255),
        title: const Row(
          children: [
            Text(
              "Menu",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 18,
                color: Color.fromARGB(255, 12, 12, 49),
              ),
            ),
            SizedBox(
              width: 200,
            ),
            IconButton(onPressed: null, icon: FaIcon(FontAwesomeIcons.bell))
          ],
        ),
        leading: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const SizedBox(
              width: 10,
            ),
            Container(
              height: 40,
              width: 40,
              decoration: BoxDecoration(
                  color: const Color.fromARGB(255, 11, 238, 140),
                  borderRadius: BorderRadius.circular(4)),
              child: Builder(
                builder: (BuildContext context) {
                  return IconButton(
                    icon: const Icon(
                      Icons.menu,
                      color: Color.fromARGB(255, 12, 12, 49),
                    ),
                    onPressed: () {
                      Scaffold.of(context).openDrawer(); // Opens the drawer
                    },
                  );
                },
              ),
            ),
          ],
        ),
      ),
      drawer: Drawer(
        backgroundColor: Color.fromARGB(255, 11, 238, 140),
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
                    color: Color.fromARGB(255, 11, 238, 140),
                  ),
                  // Icon(FluentIcons.),
                  title: const Text(
                    "Home",
                    style: TextStyle(
                      color: Color.fromARGB(255, 11, 238, 140),
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
                  onTap: () {
                    Navigator.pushNamed(context, '/');
                  },
                ),
              ],
            ),
          ),
        ),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(18),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(
                height: 20,
              ),
              const Text(
                'Welcom back daniel ',
                textAlign: TextAlign.start,
                style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: Color.fromARGB(255, 60, 60, 79)),
              ),
              const SizedBox(
                height: 20,
              ),
              Container(
                height: 200,
                decoration: BoxDecoration(
                    color: Colors.white,
                    border: Border.all(
                      color: const Color.fromARGB(137, 204, 205, 212),
                    ),
                    borderRadius: BorderRadius.circular(4)),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Expanded(
                      flex: 1,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            height: 50,
                            width: 50,
                            decoration: BoxDecoration(
                                color: const Color.fromARGB(236, 174, 236, 226),
                                borderRadius: BorderRadius.circular(50)),
                            child: const Center(
                              child: FaIcon(
                                FontAwesomeIcons.cartShopping,
                                color: Color.fromARGB(251, 43, 97, 88),
                                size: 20,
                              ),
                            ),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          const Text(
                            '820',
                            style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                                color: Color.fromARGB(255, 26, 26, 35)),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          const Text(
                            'New\norder',
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Color.fromARGB(255, 117, 117, 150)),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      width: 2, // Width of the vertical line
                      height: 90,
                      color: const Color.fromARGB(
                          25, 5, 9, 35), // Color of the vertical line
                    ),
                    Expanded(
                      flex: 1,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            height: 50,
                            width: 50,
                            decoration: BoxDecoration(
                                color: const Color.fromARGB(223, 246, 200, 188),
                                borderRadius: BorderRadius.circular(50)),
                            child: const Center(
                                child: FaIcon(
                              FontAwesomeIcons.hourglassHalf,
                              size: 20,
                              color: Color.fromARGB(255, 199, 119, 100),
                            )),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          const Text(
                            '320',
                            style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                                color: Color.fromARGB(255, 26, 26, 35)),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          const Text(
                            'Pending \n  order',
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Color.fromARGB(255, 117, 117, 150)),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      width: 2, // Width of the vertical line
                      height: 90,
                      color: const Color.fromARGB(
                          25, 5, 9, 35), // Color of the vertical line
                    ),
                    Expanded(
                      flex: 1,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            height: 50,
                            width: 50,
                            decoration: BoxDecoration(
                                color: const Color.fromARGB(226, 217, 250, 201),
                                borderRadius: BorderRadius.circular(50)),
                            child: const Center(
                                child: FaIcon(
                              FontAwesomeIcons.truck,
                              size: 20,
                              color: Color.fromARGB(223, 128, 194, 98),
                            )),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          const Text(
                            '320',
                            style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                                color: Color.fromARGB(255, 26, 26, 35)),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          const Text(
                            'Delivered \n   order',
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Color.fromARGB(255, 117, 117, 150)),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      width: 2, // Width of the vertical line
                      height: 90,
                      color: const Color.fromARGB(
                          25, 5, 9, 35), // Color of the vertical line
                    ),
                    Expanded(
                      flex: 1,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            height: 50,
                            width: 50,
                            decoration: BoxDecoration(
                                color: const Color.fromARGB(231, 212, 217, 247),
                                borderRadius: BorderRadius.circular(50)),
                            child: const Center(
                                child: FaIcon(
                              FontAwesomeIcons.rotateLeft,
                              size: 20,
                              color: Color.fromARGB(231, 86, 101, 163),
                            )),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          const Text(
                            '320',
                            style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                                color: Color.fromARGB(255, 26, 26, 35)),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          const Text(
                            'Return \n order',
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Color.fromARGB(255, 117, 117, 150)),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Container(
                height: 380,
                decoration: BoxDecoration(
                    color: Color.fromARGB(255, 255, 255, 255),
                    border: Border.all(
                      color: const Color.fromARGB(137, 204, 205, 212),
                    ),
                    borderRadius: BorderRadius.circular(4)),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const SizedBox(
                      height: 20,
                    ),
                    const Text(
                      'Purchases & sales overview',
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    SfCartesianChart(
                        primaryXAxis: CategoryAxis(),
                        series: <LineSeries<SalesData, String>>[
                          LineSeries<SalesData, String>(
                              // Bind data source
                              dataSource: <SalesData>[
                                SalesData('Jan', 10010),
                                SalesData('Feb', 50000),
                                SalesData('Mar', 34000),
                                SalesData('Apr', 10500),
                                SalesData('May', 40000)
                              ],
                              xValueMapper: (SalesData sales, _) => sales.year,
                              yValueMapper: (SalesData sales, _) => sales.sales)
                        ]),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

class SalesData {
  SalesData(this.year, this.sales);
  final String year;
  final double sales;
}
