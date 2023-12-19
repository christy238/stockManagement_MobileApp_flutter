import 'package:flutter/material.dart';

TextStyle MyTextStyle({
  Color color = const Color.fromARGB(255, 25, 21, 106),
  //double fontSize = 20.0,
  FontWeight fontWeight = FontWeight.normal,
  FontStyle fontStyle = FontStyle.normal,
}) {
  return TextStyle(
    color: color,
    // fontSize: fontSize,
    fontWeight: fontWeight,
    fontStyle: fontStyle,
    // You can add more properties as needed
  );
}

// TextStyle TitelStyle({
//   Color color = const Color.fromARGB(255, 25, 21, 106),
//   double fontSize = 16.0,
//   FontWeight fontWeight = FontWeight.normal,
//   FontStyle fontStyle = FontStyle.normal,
// }) {
//   return TStyle(
//     color: color,
//     fontSize: fontSize,
//     fontWeight: fontWeight,
//     fontStyle: fontStyle,
//     // You can add more properties as needed
//   );
// }
