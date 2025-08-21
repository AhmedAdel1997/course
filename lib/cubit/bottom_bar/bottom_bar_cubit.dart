import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../ui/home_screen.dart';
import '../../ui/notification_screen.dart';
import '../../ui/profile_screen.dart';

part 'bottom_bar_state.dart';

class BottomBarCubit extends Cubit<BottomBarState> {
  BottomBarCubit() : super(BottomBarInitial());

  void changePage(int index) {
    emit(BottomBarChangePage(index: index));
  }
}
