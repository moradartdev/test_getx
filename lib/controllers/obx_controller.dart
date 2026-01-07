import 'package:get/get.dart';

class ObxController extends GetxController {
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

  Future<void> onLongPress() async {
    for (int i = 0; i <= value1.value; i++) {
      Future.delayed(Duration(milliseconds: 100));
      value1++;

      if (value1.value == 2200) {
        break;
      }
    }
  }

  int get sum => value1.value + value2.value;
}
