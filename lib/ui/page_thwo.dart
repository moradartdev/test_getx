import 'package:flutter/material.dart';
import 'package:get/state_manager.dart';
import 'package:test_getx/controllers/page_thwo_controller.dart';

class PageThwo extends StatelessWidget {
  const PageThwo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Test getx')),
      body: GetX(
        init: PageThwoController(),
        builder: (controller) {
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
                  padding: const EdgeInsets.only(bottom: 10),
                  child: MaterialButton(
                    color: const Color.fromARGB(255, 2, 53, 94),
                    onPressed: () {
                      controller.inecrementValue1();
                    },
                    child: Text(
                      'add Value one',
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(bottom: 10),
                  child: MaterialButton(
                    onPressed: () {
                      controller.decrementValue1();
                    },
                    color: const Color.fromARGB(255, 2, 53, 94),
                    child: Text(
                      'remove value one',
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(bottom: 10),
                  child: MaterialButton(
                    color: const Color.fromARGB(255, 2, 53, 94),
                    onPressed: () {
                      controller.inecrementValue2();
                    },
                    child: Text(
                      'add value 2',
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(bottom: 10),
                  child: MaterialButton(
                    onPressed: () {
                      controller.decrementValue2();
                    },
                    color: const Color.fromARGB(255, 2, 53, 94),
                    child: Text(
                      'remove value 2',
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
