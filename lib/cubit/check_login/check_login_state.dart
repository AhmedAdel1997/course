part of 'check_login_cubit.dart';

sealed class CheckLoginState {}

final class CheckLoginInitial extends CheckLoginState {}

final class UserLoggedIn extends CheckLoginState {}

final class UserNotLoggedIn extends CheckLoginState {}
