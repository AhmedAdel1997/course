import 'dart:developer';

import 'package:flutter/material.dart';

class ButtonsText extends StatelessWidget {
  const ButtonsText({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Buttons and Text')),
      body: Column(
        children: [
          TextButton(onPressed: () {}, child: Text('Text Button')),
          ElevatedButton(
            onPressed: () {},
            style: ButtonStyle(
              backgroundColor: WidgetStateProperty.all(Colors.white),
            ),
            child: Text(
              'Elevated Button',
              style: TextStyle(color: Colors.purple),
            ),
          ),
          OutlinedButton(
            onPressed: () {},
            style: OutlinedButton.styleFrom(backgroundColor: Colors.blue),
            child: Text('Outlined Button'),
          ),
          IconButton(onPressed: () {}, icon: Icon(Icons.shopping_cart)),

          Padding(
            padding: const EdgeInsets.all(100),
            child: InkWell(
              highlightColor: Colors.grey,

              borderRadius: BorderRadius.circular(10),
              onTap: () {
                log('inner container is pressed');
              },
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: Container(width: 100, height: 100, color: Colors.blue),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
