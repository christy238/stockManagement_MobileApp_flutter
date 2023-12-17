// ignore: file_names
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class LoginPage extends StatelessWidget {
  LoginPage({super.key});
  var colr = Color.fromARGB(255, 11, 238, 140);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 3, 2, 18),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const SizedBox(
              height: 80,
            ),
            Container(
              width: 350,
              height: 420,
              decoration: BoxDecoration(
                color: const Color.fromARGB(24, 141, 173, 247),
                borderRadius: BorderRadius.circular(10),
              ),
              child: Padding(
                padding: const EdgeInsets.all(40.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    const Text(
                      "Login",
                      style: TextStyle(
                          color: Color.fromARGB(255, 11, 238, 140),
                          fontSize: 27,
                          fontWeight: FontWeight.w500),
                    ),
                    const SizedBox(
                      height: 40,
                    ),
                    TextFormField(
                      decoration: const InputDecoration(
                        fillColor: Color.fromARGB(255, 11, 238, 140),
                        icon: FaIcon(
                          FontAwesomeIcons.user,
                          size: 18,
                          color: Color.fromARGB(255, 11, 238, 140),
                        ),
                        labelText: 'Username',
                        labelStyle: TextStyle(
                          color: Color.fromARGB(123, 220, 215, 237),
                        ),
                        enabledBorder: UnderlineInputBorder(
                          borderSide: BorderSide(
                              color: Color.fromARGB(56, 220, 215, 237),
                              width: 2.0),
                        ),
                      ),
                    ),
                    const SizedBox(height: 20),
                    TextFormField(
                      obscureText: true,
                      decoration: const InputDecoration(
                        hoverColor: Color.fromARGB(255, 11, 238, 140),
                        icon: FaIcon(
                          FontAwesomeIcons.lock,
                          size: 18,
                          color: Color.fromARGB(255, 11, 238, 140),
                        ),
                        labelText: 'Password',
                        enabledBorder: UnderlineInputBorder(
                          borderSide: BorderSide(
                              color: Color.fromARGB(56, 220, 215, 237),
                              width: 2.0),
                        ),
                        labelStyle: TextStyle(
                          color: Color.fromARGB(123, 220, 215, 237),
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
                              padding:
                                  const EdgeInsets.symmetric(vertical: 16.0),
                              backgroundColor:
                                  colr, // Adjust the vertical padding
                              // Other button styling
                            ),
                            child: const Text(
                              "Login",
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
            const SizedBox(
              height: 80,
            ),
            const Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Dont have an account ? ",
                  style: TextStyle(
                      color: Color.fromARGB(100, 255, 255, 255), fontSize: 18),
                ),
                Text(
                  "Signup",
                  style: TextStyle(
                      color: Color.fromARGB(255, 11, 238, 140), fontSize: 18),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
