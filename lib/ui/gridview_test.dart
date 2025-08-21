import 'package:flutter/material.dart';

class GridviewTest extends StatelessWidget {
  const GridviewTest({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('GridView Test'),
        backgroundColor: Colors.blue,
      ),
      // body: GridView(
      //   gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
      //     crossAxisCount: 2,
      //     mainAxisSpacing: 10,
      //     crossAxisSpacing: 10,
      //     childAspectRatio: 1,
      //   ),
      //   children: [
      //     Container(height: 100, width: 100, color: Colors.red),
      //     Container(height: 100, width: 100, color: Colors.black),
      //     Container(height: 100, width: 100, color: Colors.green),
      //     Container(height: 100, width: 100, color: Colors.yellow),
      //     Container(height: 100, width: 100, color: Colors.purple),
      //     Container(height: 100, width: 100, color: Colors.orange),
      //     Container(height: 100, width: 100, color: Colors.pink),
      //     Container(height: 100, width: 100, color: Colors.brown),
      //     Container(height: 100, width: 100, color: Colors.grey),
      //   ],
      // ),
      body: GridView.builder(
        itemCount: 200,

        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          mainAxisSpacing: 10,
          crossAxisSpacing: 10,
          childAspectRatio: 1,
        ),
        itemBuilder: (context, index) {
          return Container(
            height: 100,
            width: 100,
            color: index.isEven ? Colors.red : Colors.black,
          );
        },
      ),
    );
  }
}
