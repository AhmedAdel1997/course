import 'package:flutter/material.dart';

class StackTest extends StatelessWidget {
  const StackTest({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Stack Test'), backgroundColor: Colors.blue),
      body: Stack(
        children: [
          Container(height: 300, width: 300, color: Colors.red),
          Positioned(
            top: 0,
            left: 0,
            child: Container(height: 200, width: 200, color: Colors.blue),
          ),
          Positioned(
            top: 0,
            right: 0,
            child: Container(height: 100, width: 100, color: Colors.green),
          ),
        ],
      ),
    );
  }
}
