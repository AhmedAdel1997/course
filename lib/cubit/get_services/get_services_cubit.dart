import 'dart:developer';

import 'package:course/model/service_response.dart';
import 'package:dio/dio.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'get_services_state.dart';

class GetServicesCubit extends Cubit<GetServicesState> {
  GetServicesCubit() : super(GetServicesInitial());

  final dio = Dio(BaseOptions(baseUrl: 'https://dragon-lines.com'));

  Future<void> getServices() async {
    // loading state
    emit(GetServicesLoading());
    try {
      final response = await dio.get(
        '/api/services',
        options: Options(
          headers: {
            'Accept-Language': 'en',
            'Content-Type': 'application/json',
          },
        ),
      );

      final serviceResponse = ServiceResponse.fromJson(response.data);
      // success state
      emit(GetServicesSuccess(services: serviceResponse.servicesList.data));
    } catch (error) {
      log(error.toString());
      // fail / error state
      emit(GetServicesFailure(errorMessage: error.toString()));
    }
  }
}
    // log(response.data['data']['data'][0]['name'].toString());
    // log(response.data['data']['data'][0]['title'].toString());
    // log(response.data['data']['data'][0]['price'].toString());
    // log(response.data['data']['data'][0]['cover'].toString());
    // log(response.data['data']['data'][1]['name'].toString());
    // log(response.data['data']['data'][1]['title'].toString());
    // log(response.data['data']['data'][1]['price'].toString());
    // log(response.data['data']['data'][1]['cover'].toString());
    // log(response.data['data']['data'][2]['name'].toString());
    // log(response.data['data']['data'][2]['title'].toString());
    // log(response.data['data']['data'][2]['price'].toString());
    // log(response.data['data']['data'][2]['cover'].toString());