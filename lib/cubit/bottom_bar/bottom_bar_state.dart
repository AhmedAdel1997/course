part of 'bottom_bar_cubit.dart';

class BottomBarState {
  final List<Widget> pages;
  final int currentIndex;

  BottomBarState({
    this.pages = const [HomeScreen(), NotificationScreen(), ProfileScreen()],
    this.currentIndex = 0,
  });
}

// first state // initial state
final class BottomBarInitial extends BottomBarState {
  BottomBarInitial({
    super.pages = const [HomeScreen(), NotificationScreen(), ProfileScreen()],
    super.currentIndex = 0,
  });
}

final class BottomBarChangePage extends BottomBarState {
  final int index;

  BottomBarChangePage({required this.index})
    : super(
        pages: const [HomeScreen(), NotificationScreen(), ProfileScreen()],
        currentIndex: index,
      );
}
