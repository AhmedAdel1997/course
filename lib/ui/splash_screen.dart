import 'package:course/ui/main_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../cubit/check_login/check_login_cubit.dart';
import 'login_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Future.delayed(const Duration(seconds: 3), () {
      // ignore: use_build_context_synchronously
      context.read<CheckLoginCubit>().checkLogin();
    });
  }

  @override
  Widget build(BuildContext context) {
    return BlocListener<CheckLoginCubit, CheckLoginState>(
      listener: (context, state) {
        if (state is UserLoggedIn) {
          Navigator.pushReplacement(
            context,
            MaterialPageRoute(builder: (context) => const MainScreen()),
          );
        }
        if (state is UserNotLoggedIn) {
          Navigator.pushReplacement(
            context,
            MaterialPageRoute(builder: (context) => const LoginScreen()),
          );
        }
      },
      child: const Scaffold(body: Center(child: FlutterLogo(size: 200))),
    );
  }
}
