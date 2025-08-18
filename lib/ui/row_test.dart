import 'package:flutter/material.dart';

import '../core/colors.dart';

class RowTest extends StatelessWidget {
  const RowTest({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Row Test'), backgroundColor: Colors.blue),

      // body: SingleChildScrollView(
      //   scrollDirection: Axis.horizontal,
      //   child: Row(
      //     mainAxisAlignment: MainAxisAlignment.start,
      //     crossAxisAlignment: CrossAxisAlignment.end,
      //     children: [
      //       Container(height: 100, width: 100, color: Colors.red),
      //       Container(height: 100, width: 100, color: Colors.black),
      //       Container(height: 100, width: 100, color: Colors.green),
      //       Container(height: 100, width: 100, color: Colors.yellow),
      //       Container(height: 100, width: 100, color: Colors.purple),
      //       Container(height: 100, width: 100, color: Colors.orange),
      //       Container(height: 100, width: 100, color: Colors.pink),
      //       Container(height: 100, width: 100, color: Colors.brown),
      //     ],
      //   ),
      // ),
      body: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(height: 100, width: 100, color: AppColors.primary),
          Container(height: 100, width: 100, color: AppColors.primary),
          Container(height: 100, width: 100, color: AppColors.primary),
        ],
      ),
      // body: Wrap(
      //   spacing: 10,
      //   runSpacing: 10,
      //   alignment: WrapAlignment.center,
      //   children: [
      //     Container(height: 100, width: 150, color: Colors.red),
      //     Container(height: 100, width: 150, color: Colors.black),
      //     Container(height: 100, width: 150, color: Colors.green),
      //     Container(height: 100, width: 150, color: Colors.yellow),
      //     Container(height: 100, width: 150, color: Colors.purple),
      //     Container(height: 100, width: 150, color: Colors.orange),
      //     Container(height: 100, width: 150, color: Colors.pink),
      //     Container(height: 100, width: 150, color: Colors.brown),
      //   ],
      // ),
    );
  }
}
