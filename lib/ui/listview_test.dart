import 'package:flutter/material.dart';

class ListViewTest extends StatelessWidget {
  const ListViewTest({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('ListView Test'),
        backgroundColor: Colors.blue,
      ),

      // body: ListView(
      //   children: [
      //     Container(height: 200, width: 200, color: Colors.red),
      //     Container(height: 200, width: 200, color: Colors.blue),
      //     Container(height: 200, width: 200, color: Colors.green),
      //     Container(height: 200, width: 200, color: Colors.yellow),
      //     Container(height: 200, width: 200, color: Colors.purple),
      //     Container(height: 200, width: 200, color: Colors.orange),
      //     Container(height: 200, width: 200, color: Colors.pink),
      //     Container(height: 200, width: 200, color: Colors.brown),
      //     Container(height: 200, width: 200, color: Colors.grey),
      //     Container(height: 200, width: 200, color: Colors.black),
      //     Container(height: 200, width: 200, color: Colors.white),
      //     Container(height: 200, width: 200, color: Colors.red),
      //     Container(height: 200, width: 200, color: Colors.blue),
      //     Container(height: 200, width: 200, color: Colors.green),
      //     Container(height: 200, width: 200, color: Colors.yellow),
      //     Container(height: 200, width: 200, color: Colors.purple),
      //     Container(height: 200, width: 200, color: Colors.orange),
      //     Container(height: 200, width: 200, color: Colors.pink),
      //     Container(height: 200, width: 200, color: Colors.brown),
      //     Container(height: 200, width: 200, color: Colors.grey),
      //     Container(height: 200, width: 200, color: Colors.black),
      //     Container(height: 200, width: 200, color: Colors.white),
      //   ],
      // ),
      // body: ListView.builder(
      //   itemCount: 100,
      //   itemBuilder: (context, index) {
      //     return Container(
      //       height: 200,
      //       width: 200,
      //       color: index.isEven ? Colors.red : Colors.blue,
      //     );
      //   },
      body: ListView.builder(
        itemCount: 100,
        scrollDirection: Axis.vertical,
        // physics: NeverScrollableScrollPhysics(),
        itemBuilder: (context, index) {
          return Container(
            height: 100,
            width: 100,
            color: index.isEven ? Colors.red : Colors.blue,
          );
        },
        // separatorBuilder: (context, index) {
        //   return SizedBox(height: 10);
        // },
      ),
    );
  }
}
