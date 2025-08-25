import 'dart:developer';

import 'package:dio/dio.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shared_preferences/shared_preferences.dart';

part 'login_state.dart';

class LoginCubit extends Cubit<LoginState> {
  LoginCubit() : super(LoginInitial());

  final dio = Dio(BaseOptions(baseUrl: 'https://dragon-lines.com'));

  Future<void> login({required String phone, required String password}) async {
    emit(LoginLoading());
    try {
      final response = await dio.post(
        '/api/login',
        data: {
          'phone': phone,
          'password': password,
          'test_mode': '1',
          'device_token': 'device_token',
          'preferred_locale': 'ar,',
        },
      );
      log(response.data['data']['token'].toString());
      final prefs = await SharedPreferences.getInstance();
      await prefs.setString('token', response.data['data']['token']);
      emit(LoginSuccess());
    } catch (error) {
      log(error.toString());
      emit(LoginFailure());
    }
  }
}
