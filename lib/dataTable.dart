import 'package:flutter/material.dart';

class MyTable extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DataTable(columns: const <DataColumn>[
      DataColumn(label: Text(''))
    ], rows: const <DataRow>[
      DataRow(cells: <DataCell>[
        DataCell(
          Text('hi'),
        ),
      ])
    ]);
  }
}
