import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../cubit/logout/logout_cubit.dart';
import 'login_screen.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => LogoutCubit(),
      child: ProfileBody(),
    );
  }
}

class ProfileBody extends StatelessWidget {
  const ProfileBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Profile')),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(child: Text('Profile', style: TextStyle(fontSize: 20.sp))),

          SizedBox(height: 100.h),
          BlocListener<LogoutCubit, LogoutState>(
            listener: (context, state) async {
              if (state is LogoutFailure) {
                ScaffoldMessenger.of(
                  context,
                ).showSnackBar(SnackBar(content: Text('Logout failed')));
              }
              if (state is LogoutSuccess) {
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(builder: (context) => const LoginScreen()),
                );
                final prefs = await SharedPreferences.getInstance();
                prefs.remove('token');
              }
            },
            child: BlocBuilder<LogoutCubit, LogoutState>(
              builder: (context, state) {
                if (state is LogoutLoading) {
                  return CircularProgressIndicator();
                }
                return TextButton(
                  onPressed: () {
                    context.read<LogoutCubit>().logout();
                  },
                  child: Text('Logout', style: TextStyle(fontSize: 25)),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
