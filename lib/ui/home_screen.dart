import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../cubit/counter_cubit.dart';
import '../cubit/get_services/get_services_cubit.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (context) => GetServicesCubit()),
        BlocProvider(create: (context) => CounterCubit()),
      ],
      child: HomeBody(),
    );
  }
}

class HomeBody extends StatefulWidget {
  const HomeBody({super.key});

  @override
  State<HomeBody> createState() => _HomeBodyState();
}

class _HomeBodyState extends State<HomeBody> {
  @override
  void initState() {
    super.initState();
    context.read<CounterCubit>().getCounter();
    context.read<GetServicesCubit>().getServices();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Home')),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          context.read<CounterCubit>().deleteCounter();
        },
        child: Icon(Icons.delete),
      ),
      body: Center(
        child: TextButton(
          onPressed: () {
            context.read<CounterCubit>().increaseCounter(); //listen false
          },
          child: BlocConsumer<CounterCubit, int>(
            listener: (context, state) {
              if (state > 10) {
                log('Limit Exceeded !!');
                context.read<CounterCubit>().saveCounter();
              }
            },
            builder: (context, counter) {
              return Text('Home $counter', style: TextStyle(fontSize: 30));
            },
          ),
        ),
      ),
    );
  }
}
