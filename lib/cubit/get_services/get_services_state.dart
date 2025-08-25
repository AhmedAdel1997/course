part of 'get_services_cubit.dart';

final class GetServicesState {}

final class GetServicesInitial extends GetServicesState {}

final class GetServicesLoading extends GetServicesState {}

final class GetServicesSuccess extends GetServicesState {
  final List<ServiceModel> services;

  GetServicesSuccess({required this.services});
}

final class GetServicesFailure extends GetServicesState {
  final String errorMessage;

  GetServicesFailure({required this.errorMessage});
}
