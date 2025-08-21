import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../cubit/bottom_bar/bottom_bar_cubit.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Profile')),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(child: Text('Profile', style: TextStyle(fontSize: 20.sp))),
          TextButton(
            onPressed: () {
              context.read<BottomBarCubit>().changePage(0);
            },
            child: Text('Go to Home'),
          ),
        ],
      ),
    );
  }
}
