import 'package:flutter/material.dart';

class FirstApp extends StatelessWidget {
  const FirstApp({super.key});

  @override
  Widget build(BuildContext context) {
    String price = '100';
    String oldPrice = '200';
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,

        title: Text('First App'),
        leading: Container(color: Colors.red),
        centerTitle: true,
        leadingWidth: 100,

        actions: [Text('action 1'), SizedBox(width: 10), Text('action 2')],
      ),

      // body: Center(
      //   child: Text(
      //     oldPrice,
      //     style: TextStyle(
      //       fontSize: 30,
      //       fontWeight: FontWeight.bold,
      //       color: Colors.blue,
      //       decoration: TextDecoration.lineThrough,
      //     ),
      //   ),
      // ),
      body: Center(
        child: Container(
          height: 200,
          width: 200,
          decoration: BoxDecoration(
            color: Colors.blue,
            // borderRadius: BorderRadius.circular(20),
            border: Border.all(color: Colors.black, width: 5),
            boxShadow: [
              BoxShadow(
                color: Colors.black,
                blurRadius: 20,
                offset: Offset(10, 10),
              ),
            ],
            shape: BoxShape.rectangle,

            // gradient: RadialGradient(
            //   colors: [Colors.red, Colors.blue, Colors.orange, Colors.green],
            //   center: Alignment.center,
            //   radius: 0.6,
            // ),
            // gradient: LinearGradient(
            //   colors: [Colors.red, Colors.blue, Colors.orange],
            //   begin: Alignment.topCenter,
            //   end: Alignment.bottomCenter,
            // ),
          ),
          // padding: EdgeInsets.all(10), // inside the container
          // margin: EdgeInsets.all(10), // outside the container
          alignment: Alignment.centerLeft,

          child: Text(
            'Hello',
            style: TextStyle(
              color: Colors.black,
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
    );
  }
}
