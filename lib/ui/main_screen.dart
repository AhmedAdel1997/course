import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../cubit/bottom_bar/bottom_bar_cubit.dart';

// Bottom Navigation bar

// create state  // first call
// initState  //second call if exist
// build  //third call
// dispose  // call if exist
// setState

class MainScreen extends StatelessWidget {
  const MainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<BottomBarCubit, BottomBarState>(
      builder: (context, state) {
        return PopScope(
          canPop: state.currentIndex == 0 ? true : false,
          onPopInvokedWithResult: (didPop, result) {
            context.read<BottomBarCubit>().changePage(0);
          },
          child: Scaffold(
            bottomNavigationBar: BottomNavigationBar(
              currentIndex: state.currentIndex,
              selectedLabelStyle: TextStyle(color: Colors.blue),
              unselectedLabelStyle: TextStyle(color: Colors.grey),
              onTap: (value) {
                context.read<BottomBarCubit>().changePage(value);
              },
              items: [
                BottomNavigationBarItem(
                  icon: Icon(
                    Icons.home,
                    color: state.currentIndex == 0 ? Colors.blue : Colors.grey,
                  ),
                  label: 'Home',
                  // tooltip: 'Home',
                ),
                BottomNavigationBarItem(
                  icon: Icon(
                    Icons.notifications,
                    color: state.currentIndex == 1 ? Colors.blue : Colors.grey,
                  ),
                  label: 'Notification',
                ),
                BottomNavigationBarItem(
                  icon: Icon(
                    Icons.person,
                    color: state.currentIndex == 2 ? Colors.blue : Colors.grey,
                  ),
                  label: 'Profile',
                ),
              ],
            ),
            body: state.pages[state.currentIndex],
          ),
        );
      },
    );
  }
}
