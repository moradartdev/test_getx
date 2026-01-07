import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:test_getx/controllers/get_builder_controller.dart';

class PageOne extends StatelessWidget {
  const PageOne({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Test get builder')),
      body: Center(
        child: GetBuilder(
          init: GetBuilderController(),
          builder: (controller) {
            return Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                IconButton(
                  onPressed: () {
                    controller.decrement();
                  },
                  icon: Icon(Icons.remove),
                ),
                SizedBox(width: 20),
                Text('${controller.index}'),
                SizedBox(width: 20),
                IconButton(
                  onPressed: () {
                    controller.increment();
                  },
                  icon: Icon(Icons.add),
                ),
              ],
            );
          },
        ),
      ),
    );
  }
}
