import 'package:course/core/text_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'ui/column_test.dart';

Future<void> main() async {
  //entry point for dart
  runApp(const MyApp()); //entry point for flutter

  //synchronous function
  // Future<void> logX() async {
  //   await Future.delayed(Duration(seconds: 4), () {
  //     log('x');
  //   });
  // }

  // //asynchronous function
  // Future<void> logY() async {
  //   Future.delayed(Duration(seconds: 4), () {
  //     log('y');
  //   });
  // }

  // await logX();
  // logY();
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
      child: MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          fontFamily: fontFamily,
        ),
        debugShowCheckedModeBanner: false,
        home: const ColumnTest(),
      ),
    );
  }
}
