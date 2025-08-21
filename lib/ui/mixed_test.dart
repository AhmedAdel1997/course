import 'package:flutter/material.dart';

class MixedTest extends StatelessWidget {
  const MixedTest({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Mixed Test'), backgroundColor: Colors.blue),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Text(
              'categories',
              style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 100,
              child: ListView.builder(
                itemCount: 10,
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
                  return Container(
                    height: 100,
                    width: 100,
                    color: index.isEven ? Colors.red : Colors.blue,
                  );
                },
              ),
            ),
            SizedBox(height: 10),
            Text(
              'offers',
              style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
            ),
            ListView.builder(
              itemCount: 10,
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              itemBuilder: (context, index) {
                return Container(
                  height: 100,
                  width: 100,
                  color: index.isEven ? Colors.red : Colors.blue,
                );
              },
            ),
            SizedBox(height: 10),
            Text(
              'orders',
              style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 300),
          ],
        ),
      ),
    );
  }
}
