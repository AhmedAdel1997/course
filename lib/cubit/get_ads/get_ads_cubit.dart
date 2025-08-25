import 'dart:developer';

import 'package:dio/dio.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../model/ads_response.dart';

part 'get_ads_state.dart';

class GetAdsCubit extends Cubit<GetAdsState> {
  GetAdsCubit() : super(GetAdsInitial());

  final dio = Dio(BaseOptions(baseUrl: 'https://dragon-lines.com'));

  Future<void> getAds() async {
    // loading state
    emit(GetAdsLoading());
    try {
      final response = await dio.get('/api/advertisements');

      final adsResponse = AdsResponse.fromJson(response.data);
      // success state
      emit(GetAdsSuccess(ads: adsResponse.adsList));
    } catch (error) {
      log(error.toString());
      // fail / error state
      emit(GetAdsFailure(errorMessage: error.toString()));
    }
  }
}
