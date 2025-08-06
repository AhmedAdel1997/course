import 'dart:developer';

import 'package:flutter/material.dart';

class TextFiledTest extends StatefulWidget {
  const TextFiledTest({super.key});

  @override
  State<TextFiledTest> createState() => _TextFiledTestState();
}

class _TextFiledTestState extends State<TextFiledTest> {
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  final formKey = GlobalKey<FormState>();

  bool _ischecked = false;
  bool _isSwitch = false;

  double _sliderValue = 1001;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'E-mail is required';
                  }
                  //regex email
                  final emailRegex = RegExp(
                    r'^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$',
                  );
                  if (!emailRegex.hasMatch(value)) {
                    return 'Invalid email address';
                  }
                  return null;
                },
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

                validator: (value) {
                  // if (value == null || value.isEmpty) {
                  //   return 'Password is required';
                  // }
                  // if (value.length < 8) {
                  //   return 'Password must be at least 8 characters long';
                  // }
                  // //uppercase lowecase
                  // if (!value.contains(RegExp(r'[A-Z]')) ||
                  //     !value.contains(RegExp(r'[a-z]'))) {
                  //   return 'Password must contain at least one uppercase and one lowercase letter';
                  // }
                  // //number
                  // if (!value.contains(RegExp(r'[0-9]'))) {
                  //   return 'Password must contain at least one number';
                  // }
                  // //special character
                  // if (!value.contains(RegExp(r'[!@#$%^&*(),.?":{}|<>]'))) {
                  //   return 'Password must contain at least one special character';
                  // }

                  //regex for storng password
                  final passwordRegex = RegExp(
                    r'^(?=.*[A-Z])(?=.*[a-z])(?=.*\d)(?=.*[@$!%*?&#])[A-Za-z\d@$!%*?&]{16,}$',
                  );
                  if (!passwordRegex.hasMatch(value!)) {
                    return 'Password must be at least 8 characters long and contain at least one uppercase letter, one lowercase letter, one number and one special character';
                  }
                  return null;
                },
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

              //checkbox
              Checkbox(
                value: _ischecked,
                onChanged: (value) {
                  setState(() {
                    _ischecked = value ?? false;
                  });
                },
              ),

              //switch
              Switch(
                value: _isSwitch,
                onChanged: (value) {
                  setState(() {
                    _isSwitch = value;
                  });
                },
              ),

              //slider
              Slider(
                value: _sliderValue,
                thumbColor: Colors.orange,
                activeColor: Colors.blue,
                min: 1000,
                max: 10000,
                divisions: 1,
                onChanged: (value) {
                  setState(() {
                    _sliderValue = value;
                  });
                  log('slider value: $_sliderValue');
                },
              ),

              //dropdown
              DropdownButtonFormField<String>(
                isExpanded: true,
                items: [
                  DropdownMenuItem(value: 'Egypt', child: Text('Egypt')),
                  DropdownMenuItem(value: 'UAE', child: Text('UAE')),
                  DropdownMenuItem(value: 'KSA', child: Text('KSA')),
                ],
                onChanged: (value) {
                  log('dropdown value: $value');
                },
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Country is required';
                  }
                  return null;
                },
              ),

              TextButton(
                onPressed: () {
                  if (formKey.currentState!.validate()) {
                    log('form is valid');
                  }
                },
                child: Text('Submit'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
