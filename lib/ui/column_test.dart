import 'package:flutter/material.dart';

class ColumnTest extends StatelessWidget {
  const ColumnTest({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Column Test'), backgroundColor: Colors.blue),
      body: SizedBox(
        width: double.infinity,
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,

            children: [
              Container(height: 100, width: 200, color: Colors.red),
              Container(height: 100, width: 200, color: Colors.blue),
              Container(height: 100, width: 200, color: Colors.green),
              Container(height: 100, width: 200, color: Colors.yellow),
              Container(height: 100, width: 200, color: Colors.purple),
              Container(height: 100, width: 200, color: Colors.orange),
              Container(height: 100, width: 200, color: Colors.pink),
              Container(height: 100, width: 200, color: Colors.brown),
              Container(height: 100, width: 200, color: Colors.grey),
              Container(height: 100, width: 200, color: Colors.black),
              Container(height: 100, width: 200, color: Colors.white),
              Container(height: 100, width: 200, color: Colors.red),
              Container(height: 100, width: 200, color: Colors.blue),
              Container(height: 100, width: 200, color: Colors.green),
              Container(height: 100, width: 200, color: Colors.yellow),
              Container(height: 100, width: 200, color: Colors.purple),
              Container(height: 100, width: 200, color: Colors.orange),
              Container(height: 100, width: 200, color: Colors.pink),
              Container(height: 100, width: 200, color: Colors.brown),
            ],
          ),
        ),
      ),
    );
  }
}
