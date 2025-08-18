import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../core/text_styles.dart';

class ColumnTest extends StatefulWidget {
  const ColumnTest({super.key});

  @override
  State<ColumnTest> createState() => _ColumnTestState();
}

class _ColumnTestState extends State<ColumnTest> {
  File? image;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Column Test'), backgroundColor: Colors.blue),
      body: Container(
        width: double.infinity,
        height: double.infinity,
        color: Colors.yellow,
        child: Column(
          // mainAxisSize: MainAxisSize.max,
          crossAxisAlignment: CrossAxisAlignment.center,

          children: [
            // SizedBox(height: 30),
            Text('مرحبا', style: TextStyles.titleBold),
            // SizedBox(height: 30),
            Image.asset(
              'assets/images/logo.png',
              height: 80.h,
              width: 134.w,
              fit: BoxFit.fill,
            ),
            // // ClipRRect(
            // //   borderRadius: BorderRadius.circular(50),
            // //   child: Image.network(
            // //     'https://images.pexels.com/photos/414612/pexels-photo-414612.jpeg?_gl=1*180xlyr*_ga*MTk1OTEyOTk2Mi4xNzU0Mjk5NDI1*_ga_8JE65Q40S6*czE3NTQyOTk0MjQkbzEkZzEkdDE3NTQyOTk0MjkkajU1JGwwJGgw',
            // //     height: 200,
            // //     width: 200,
            // //     fit: BoxFit.fill,
            // //   ),
            // // ),
            // SizedBox(height: 30),

            // if (image != null) Image.file(image!, height: 200, width: 200),

            // TextButton(
            //   onPressed: () async {
            //     final imagePicker = ImagePicker();
            //     final image = await imagePicker.pickImage(
            //       source: ImageSource.camera,
            //     );
            //     if (image != null) {
            //       setState(() {
            //         this.image = File(image.path);
            //       });
            //       log(image.path);
            //     }
            //   },
            //   child: Text('Pick Image', style: TextStyle(fontSize: 25)),
            // ),
            Spacer(),
            Align(
              alignment: Alignment.bottomLeft,
              child: Container(
                height: 100.h,
                width: 200.w,
                decoration: BoxDecoration(
                  color: Colors.red,
                  borderRadius: BorderRadius.circular(20.r),
                ),
              ),
            ),

            // Container(height: 100.h, width: 200.w, color: Colors.blue),
            // Container(height: 100.h, width: 200.w, color: Colors.orange),
            // Container(height: 100.h, width: 200.w, color: Colors.pink),
            // Container(height: 100.h, width: 200.w, color: Colors.brown),
          ],
        ),
      ),
    );
  }
}
