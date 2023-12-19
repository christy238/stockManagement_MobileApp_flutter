import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:store_app/chart.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

class MyHomePage extends StatefulWidget {
  MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  var fontcolr = Color.fromARGB(255, 25, 21, 106);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 243, 241, 254),
      appBar: AppBar(
        toolbarHeight: 60,
        backgroundColor: const Color.fromARGB(255, 255, 255, 255),
        title: Row(
          children: [
            Text(
              "Menu",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 18,
                color: fontcolr,
              ),
            ),
            const SizedBox(
              width: 200,
            ),
            const IconButton(
                onPressed: null, icon: FaIcon(FontAwesomeIcons.bell))
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
          child: ListView(
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(
                    height: 0,
                  ),
                  Text(
                    'Welcom back daniel ',
                    textAlign: TextAlign.start,
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: fontcolr,
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Container(
                    height: 200,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        border: Border.all(
                          color: const Color.fromARGB(137, 204, 205, 212),
                        ),
                        borderRadius: BorderRadius.circular(15)),
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
                                    color: Color.fromARGB(88, 161, 204, 253),
                                    borderRadius: BorderRadius.circular(50)),
                                child: const Center(
                                  child: FaIcon(
                                    FontAwesomeIcons.cartShopping,
                                    color: Color.fromARGB(250, 36, 149, 241),
                                    size: 20,
                                  ),
                                ),
                              ),
                              const SizedBox(
                                height: 10,
                              ),
                              Text(
                                '820',
                                style: TextStyle(
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold,
                                    color: fontcolr),
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
                                    color: Color.fromARGB(223, 236, 203, 245),
                                    borderRadius: BorderRadius.circular(50)),
                                child: const Center(
                                    child: FaIcon(
                                  FontAwesomeIcons.hourglassHalf,
                                  size: 20,
                                  color: Color.fromARGB(255, 213, 41, 228),
                                )),
                              ),
                              const SizedBox(
                                height: 10,
                              ),
                              Text(
                                '320',
                                style: TextStyle(
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold,
                                    color: fontcolr),
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
                                    color: Color.fromARGB(225, 201, 250, 236),
                                    borderRadius: BorderRadius.circular(50)),
                                child: const Center(
                                    child: FaIcon(
                                  FontAwesomeIcons.truck,
                                  size: 20,
                                  color: Color.fromARGB(223, 21, 190, 148),
                                )),
                              ),
                              const SizedBox(
                                height: 10,
                              ),
                              Text(
                                '320',
                                style: TextStyle(
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold,
                                    color: fontcolr),
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
                                    color: Color.fromARGB(231, 221, 225, 250),
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
                              Text(
                                '320',
                                style: TextStyle(
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold,
                                    color: fontcolr),
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
                    height: 10,
                  ),
                  Container(
                    height: 360,
                    decoration: BoxDecoration(
                        color: const Color.fromARGB(255, 255, 255, 255),
                        border: Border.all(
                          color: const Color.fromARGB(137, 204, 205, 212),
                        ),
                        borderRadius: BorderRadius.circular(15)),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const SizedBox(
                          height: 15,
                        ),
                        Text(
                          'Purchases & sales overview',
                          style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                              color: fontcolr),
                        ),
                        const SizedBox(
                          height: 10,
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
                                  xValueMapper: (SalesData sales, _) =>
                                      sales.year,
                                  yValueMapper: (SalesData sales, _) =>
                                      sales.sales)
                            ]),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Container(
                    height: 360,
                    width: 360,
                    decoration: BoxDecoration(
                        color: const Color.fromARGB(255, 255, 255, 255),
                        border: Border.all(
                          color: const Color.fromARGB(137, 204, 205, 212),
                        ),
                        borderRadius: BorderRadius.circular(15)),
                    child: Column(
                      children: [
                        const SizedBox(
                          height: 15,
                        ),
                        Text(
                          'Top 5 selling products',
                          style: TextStyle(
                            color: fontcolr,
                            fontWeight: FontWeight.bold,
                            fontSize: 18,
                          ),
                        ),
                        const SizedBox(
                          height: 15,
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
