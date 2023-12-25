import 'package:flutter/material.dart';
import 'package:store_app/presentation/widgets/style.dart';

class MyTable extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DataTable(
        // headingRowColor: MaterialStateColor.resolveWith(
        //     (states) => Color.fromARGB(25, 127, 127, 225)),
        //dataRowMinHeight: 50,
        
        columns: const <DataColumn>[
          DataColumn(
            label: Text('Item Name',
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Color.fromARGB(255, 21, 21, 106),
                    fontSize: 16)),
          ),
          DataColumn(
              label: Text('Quantity',
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Color.fromARGB(255, 25, 21, 106),
                      fontSize: 16))),
          DataColumn(
              label: Text(
            'Price',
            style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Color.fromARGB(255, 25, 21, 106),
                fontSize: 16),
          )),
          DataColumn(
              label: Text('Status',
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                      color: Color.fromARGB(255, 25, 21, 106))))
        ],
        columnSpacing: 25,
        rows: <DataRow>[
          for (int i = 1; i < 6; i++)
            DataRow(cells: <DataCell>[
              DataCell(Text('Prod$i', style: MyTextStyle())),
              DataCell(Text('30', style: MyTextStyle())),
              DataCell(Text('500', style: MyTextStyle())),
              DataCell(Text('In stock', style: MyTextStyle())),
            ]),
        ]);
  }
}
