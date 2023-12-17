// ignore: file_names
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

// ignore: camel_case_types
class signupPage extends StatelessWidget {
  signupPage({super.key});
  var colr = Color.fromARGB(255, 12, 233, 137);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 255, 255, 255),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.only(top: 25),
          child: Container(
            width: 350,
            height: 530,
            decoration: const BoxDecoration(
              color: Color.fromARGB(255, 253, 254, 255),
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(5), topRight: Radius.circular(5)),
            ),
            child: Padding(
              padding: const EdgeInsets.all(15.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  const Text(
                    "Signup",
                    style: TextStyle(
                        color: Color.fromARGB(255, 11, 238, 140),
                        fontSize: 27,
                        fontWeight: FontWeight.w500),
                  ),
                  const SizedBox(
                    height: 90,
                  ),
                  TextFormField(
                    decoration: const InputDecoration(
                      labelText: 'Name',
                      icon: FaIcon(
                        FontAwesomeIcons.user,
                        color: Color.fromARGB(255, 6, 8, 69),
                        size: 22,
                      ),
                      labelStyle: TextStyle(
                        color: Color.fromARGB(255, 6, 8, 69),
                      ),
                      enabledBorder: UnderlineInputBorder(
                        borderSide: BorderSide(
                            color: Color.fromARGB(139, 13, 8, 37), width: 2.0),
                      ),
                    ),
                  ),
                  const SizedBox(height: 20),
                  TextFormField(
                    decoration: const InputDecoration(
                      icon: FaIcon(
                        FontAwesomeIcons.envelope,
                        color: Color.fromARGB(255, 6, 8, 69),
                        size: 22,
                      ),
                      labelText: 'Email',
                      labelStyle: TextStyle(
                        color: Color.fromARGB(255, 6, 8, 69),
                      ),
                      enabledBorder: UnderlineInputBorder(
                        borderSide: BorderSide(
                            color: Color.fromARGB(140, 42, 41, 44), width: 2.0),
                      ),
                    ),
                  ),
                  const SizedBox(height: 20),
                  TextFormField(
                    obscureText: true,
                    decoration: const InputDecoration(
                      icon: FaIcon(
                        FontAwesomeIcons.userLock,
                        color: Color.fromARGB(255, 6, 8, 69),
                        size: 22,
                      ),
                      labelText: 'password',
                      enabledBorder: UnderlineInputBorder(
                        borderSide: BorderSide(
                            color: Color.fromARGB(65, 24, 3, 88), width: 2.0),
                      ),
                      labelStyle: TextStyle(
                        color: Color.fromARGB(255, 6, 8, 69),
                      ),
                    ),
                  ),
                  const SizedBox(height: 60),
                  Row(
                    children: [
                      Expanded(
                        child: ElevatedButton(
                          onPressed: () {
                            Navigator.pushNamed(context, '/login');
                          },
                          style: ElevatedButton.styleFrom(
                            padding: const EdgeInsets.symmetric(vertical: 16.0),
                            backgroundColor:
                                colr, // Adjust the vertical padding
                            // Other button styling
                          ),
                          child: const Text(
                            "Signup",
                            style: TextStyle(fontSize: 18),
                          ),
                        ),
                      )
                    ],
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
