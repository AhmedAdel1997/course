import 'dart:developer';

abstract class AbstractTest {
  void clac({required int a, required int b});
}

class AbstractTest2 {
  void calc({required int a, required int b}) {
    log('calc ${a + b}');
  }
}

class Ahmed implements AbstractTest {
  @override
  void clac({required int a, required int b}) {
    log('Ahmed ${a + b}');
  }
}

class Khaled implements AbstractTest {
  @override
  void clac({required int a, required int b}) {
    log('khaled ${a - b}');
  }
}
