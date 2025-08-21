import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shared_preferences/shared_preferences.dart';

//child                   //parent

//simple cubit
class CounterCubit extends Cubit<int> {
  CounterCubit() : super(0);

  void increaseCounter() {
    emit(state + 1);
  }

  void decreaseCounter() {
    emit(state - 1);
  }

  Future<void> saveCounter() async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.setInt('COUNTER_DATA', state);
  }

  Future<void> getCounter() async {
    final prefs = await SharedPreferences.getInstance();
    final int? counter = prefs.getInt('COUNTER_DATA');
    if (counter == null) return;
    emit(counter);

    // if (counter == null) {
    //   return;
    // } else {
    //   emit(counter);
    // }
  }

  Future<void> deleteCounter() async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.remove('COUNTER_DATA');
    emit(0);
  }
}
