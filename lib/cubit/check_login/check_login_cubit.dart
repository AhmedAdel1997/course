import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shared_preferences/shared_preferences.dart';

part 'check_login_state.dart';

class CheckLoginCubit extends Cubit<CheckLoginState> {
  CheckLoginCubit() : super(CheckLoginInitial());

  Future<void> checkLogin() async {
    final perfs = await SharedPreferences.getInstance();
    final token = perfs.getString('token');
    if (token != null) {
      emit(UserLoggedIn());
    } else {
      emit(UserNotLoggedIn());
    }
  }
}
