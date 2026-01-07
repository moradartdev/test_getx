import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:test_getx/controllers/getx_controller.dart';
import 'package:test_getx/controllers/obx_controller.dart';

class PageThree extends StatelessWidget {
  ObxController controller = Get.put(ObxController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Test obx for rebuild')),
      body: Obx(() {
        return Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('${controller.value1.value}'),
              SizedBox(height: 20),
              Text('${controller.value2.value}'),
              SizedBox(height: 20),
              Text('${controller.sum}'),
              SizedBox(height: 20),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 20),
                child: MaterialButton(
                  minWidth: 200,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                  height: 60,
                  onPressed: () {
                    controller.inecrementValue1();
                  },
                  color: const Color.fromARGB(255, 4, 53, 94),
                  child: Text(
                    'inecrementValue1',
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ),
              SizedBox(width: 20),
              Padding(
                padding: EdgeInsets.only(bottom: 20),
                child: MaterialButton(
                  height: 60,
                  minWidth: 200,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                  color: const Color.fromARGB(255, 4, 53, 94),
                  onLongPress: () {
                    controller.onLongPress();
                  },
                  onPressed: () {
                    controller.decrementValue1();
                  },
                  child: Text(
                    'decrementValue 2',
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ),
            ],
          ),
        );
      }),
    );
  }
}
