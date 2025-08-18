import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../core/validators.dart';
import '../cubit/check_box_cubit.dart';
import 'home_screen.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  final formKey = GlobalKey<FormState>();

  final bool _isSwitch = false;

  final double _sliderValue = 1001;

  @override
  void initState() {
    super.initState();
    log('initState');
  }

  @override
  void dispose() {
    log('dispose');
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    log('build');
    return BlocProvider(
      create: (context) => CheckBoxCubit(),
      child: Scaffold(
        appBar: AppBar(
          title: Text('Text Field Test'),
          backgroundColor: Colors.blue,
        ),
        body: Form(
          key: formKey,
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              children: [
                SizedBox(height: 30),
                TextFormField(
                  controller: emailController,
                  validator: Validators.validateEmail,
                  decoration: InputDecoration(
                    labelText: 'E-mail',
                    labelStyle: TextStyle(fontSize: 15),
                    hintText: 'Enter your e-mail',
                    hintStyle: TextStyle(fontSize: 15),
                  ),
                ),

                SizedBox(height: 30),
                TextFormField(
                  controller: passwordController,

                  validator: Validators.validatePassword,
                  decoration: InputDecoration(
                    errorMaxLines: 2,
                    labelText: 'Password',
                    labelStyle: TextStyle(fontSize: 15),
                    hintText: 'Enter your password',
                    hintStyle: TextStyle(fontSize: 15),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: BorderSide(color: Colors.orange),
                    ),
                    errorBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: BorderSide(color: Colors.red),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: BorderSide(color: Colors.blue),
                    ),
                  ),
                ),

                // //checkbox
                BlocBuilder<CheckBoxCubit, bool>(
                  builder: (context, state) {
                    return Checkbox(
                      value: state,
                      onChanged: (value) {
                        context.read<CheckBoxCubit>().toggleCheckBox();
                      },
                    );
                  },
                ),

                // //switch
                // Switch(
                //   value: _isSwitch,
                //   onChanged: (value) {
                //     setState(() {
                //       _isSwitch = value;
                //     });
                //   },
                // ),

                // //slider
                // Slider(
                //   value: _sliderValue,
                //   thumbColor: Colors.orange,
                //   activeColor: Colors.blue,
                //   min: 1000,
                //   max: 10000,
                //   divisions: 1,
                //   onChanged: (value) {
                //     setState(() {
                //       _sliderValue = value;
                //     });
                //     log('slider value: $_sliderValue');
                //   },
                // ),

                // //dropdown
                // DropdownButtonFormField<String>(
                //   isExpanded: true,
                //   items: [
                //     DropdownMenuItem(value: 'Egypt', child: Text('Egypt')),
                //     DropdownMenuItem(value: 'UAE', child: Text('UAE')),
                //     DropdownMenuItem(value: 'KSA', child: Text('KSA')),
                //   ],
                //   onChanged: (value) {
                //     log('dropdown value: $value');
                //   },
                //   validator: (value) {
                //     if (value == null || value.isEmpty) {
                //       return 'Country is required';
                //     }
                //     return null;
                //   },
                // ),
                SizedBox(height: 30.h),
                TextButton(
                  onPressed: () {
                    // if (formKey.currentState!.validate()) {
                    //   log('form is valid');
                    // }
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) {
                          return HomeScreen(
                            // name: 'Mohmaed',
                            // email: 'Mohmaed@gmail.com',
                            // phone: '2333333333',
                            // avatar: 'https://via.placeholder.com/150',
                            // token: '1234567890',
                            // countryCode: 'EG',
                            // userModel: UserModel(
                            //   name: 'Mohmaed',
                            //   email: 'Mohmaed@gmail.com',
                            //   phone: '2333333333',
                            //   avatar: 'https://via.placeholder.com/150',
                            // ),
                          );
                        },
                      ),
                    );
                  },
                  child: Text('Submit'),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
