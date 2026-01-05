import 'package:get/get.dart';

class TestGetxControllerr extends GetxController {
  RxInt value1 = 0.obs;
  RxInt value2 = 0.obs;

  void inecrementValue1() {
    value1++;
  }

  void decrementValue1() {
    value1--;
  }

  void inecrementValue2() {
    value2++;
  }

  void decrementValue2() {
    value2--;
  }

  int get sum => value1.value + value2.value;
}
