import 'package:get/get.dart';

class GetBuilderController extends GetxController {
  int index = 0;
  void increment() {
    index++;
    update();
  }

  void decrement() {
    index--;
    update();
  }
}
