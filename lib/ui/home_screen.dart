import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../cubit/counter_cubit.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(create: (context) => CounterCubit(), child: HomeBody());
  }
}

class HomeBody extends StatelessWidget {
  const HomeBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Home')),
      body: Center(
        child: TextButton(
          onPressed: () {
            context.read<CounterCubit>().increaseCounter(); //listen false
          },
          child: BlocConsumer<CounterCubit, int>(
            listener: (context, state) {
              if (state == 10) {
                log('Limit Exceeded !!');
              }
            },
            builder: (context, counter) {
              log('build');
              return Text('Home $counter', style: TextStyle(fontSize: 30));
            },
          ),
        ),
      ),
    );
  }
}
