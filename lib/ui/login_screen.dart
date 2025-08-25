import 'dart:developer';

import 'package:course/ui/main_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../core/validators.dart';
import '../cubit/check_box_cubit.dart';
import '../cubit/login/login_cubit.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
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
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (context) => CheckBoxCubit()),
        BlocProvider(create: (context) => LoginCubit()),
      ],
      child: Loginbody(),
    );
  }
}

class Loginbody extends StatefulWidget {
  const Loginbody({super.key});

  @override
  State<Loginbody> createState() => _LoginbodyState();
}

class _LoginbodyState extends State<Loginbody> {
  final phoneController = TextEditingController();
  final passwordController = TextEditingController();
  final formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Login Screen'),
        centerTitle: true,
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
                controller: phoneController,
                validator: Validators.validatePhone,
                decoration: InputDecoration(
                  labelText: 'Phone number',
                  labelStyle: TextStyle(fontSize: 15),
                  hintText: 'Enter your phone number',
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

              SizedBox(height: 30),
              TextFormField(
                controller: passwordController,

                // validator: Validators.validatePassword,
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
              // BlocBuilder<CheckBoxCubit, bool>(
              //   builder: (context, state) {
              //     return Checkbox(
              //       value: state,
              //       onChanged: (value) {
              //         context.read<CheckBoxCubit>().toggleCheckBox();
              //       },
              //     );
              //   },
              // ),

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
              //     log('slider value: //');
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
              //     log('dropdown value: ');
              //   },
              //   validator: (value) {
              //     if (value == null || value.isEmpty) {
              //       return 'Country is required';
              //     }
              //     return null;
              //   },
              // ),
              SizedBox(height: 30.h),
              BlocListener<LoginCubit, LoginState>(
                listener: (context, state) {
                  if (state is LoginSuccess) {
                    Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(builder: (context) => MainScreen()),
                    );
                  }
                  if (state is LoginFailure) {
                    ScaffoldMessenger.of(
                      context,
                    ).showSnackBar(SnackBar(content: Text('Login Failed')));
                  }
                },
                child: BlocBuilder<LoginCubit, LoginState>(
                  builder: (context, state) {
                    if (state is LoginLoading) {
                      return CircularProgressIndicator();
                    }
                    return ElevatedButton(
                      style: ButtonStyle(
                        foregroundColor: WidgetStateProperty.all(Colors.white),
                        backgroundColor: WidgetStateProperty.all(Colors.blue),
                        shape: WidgetStateProperty.all(
                          RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                        ),
                      ),
                      onPressed: () {
                        if (!formKey.currentState!.validate()) {
                          return;
                        }
                        context.read<LoginCubit>().login(
                          phone: phoneController.text,
                          password: passwordController.text,
                        );
                      },
                      child: Text('Submit'),
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
