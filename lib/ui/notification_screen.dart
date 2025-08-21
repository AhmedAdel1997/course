import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../cubit/counter_cubit.dart';

class NotificationScreen extends StatefulWidget {
  const NotificationScreen({super.key});

  @override
  State<NotificationScreen> createState() => _NotificationScreenState();
}

class _NotificationScreenState extends State<NotificationScreen> {
  int counter = 0;

  @override
  void initState() {
    super.initState();
    log('initState');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Home')),
      body: Center(
        child: TextButton(
          onPressed: () {
            context.read<CounterCubit>().decreaseCounter(); //listen false
          },
          child: BlocBuilder<CounterCubit, int>(
            builder: (context, counter) {
              log('build');
              return Text('Cart $counter', style: TextStyle(fontSize: 30));
            },
          ),
        ),
      ),
    );
  }
}
