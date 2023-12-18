import 'package:charts_flutter/flutter.dart';
import 'package:charts_flutter/flutter.dart';
import 'package:flutter/material.dart';
import 'package:charts_flutter/flutter.dart' as charts;

class MyChart extends StatelessWidget {
  final List<charts.Series<dynamic, String>> data;

  MyChart(this.data);

  @override
  Widget build(BuildContext context) {
    return charts.BarChart(
      data,
      animate: true,
      vertical: false,
    );
  }
}