import 'package:course/core/text_styles.dart';
import 'package:course/ui/login_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

// Future
// Stream

Future<void> main() async {
  //entry point for dart
  runApp(const MyApp()); //entry point for flutter

  // final userModel = UserModel(
  //   name: 'Ahmed',
  //   email: 'ahmed@gmail.com',
  //   phone: '01010101010',
  // );
  // log(userModel.email);
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(430, 932),
      minTextAdapt: true,
      splitScreenMode: true,
      //bloc provider
      //bloc builder
      //bloc listener
      //bloc consumer
      child: MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          fontFamily: fontFamily,
        ),
        debugShowCheckedModeBanner: false,
        home: const LoginScreen(),
      ),
    );
  }
}
