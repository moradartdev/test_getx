import 'package:flutter/material.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:get/utils.dart';
import 'package:test_getx/ui/get_metods_builder/test_get_builder.dart';
import 'package:test_getx/ui/get_metods_builder/test_obx.dart';
import 'package:test_getx/ui/get_metods_builder/test_getx.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Test Getx")),
      body: SizedBox(
        width: MediaQuery.of(context).size.width,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: MaterialButton(
                height: 60,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadiusGeometry.vertical(
                    top: Radius.circular(15),
                  ),
                ),
                minWidth: MediaQuery.of(context).size.width,
                onPressed: () {
                  Get.to(PageOne());
                },
                color: const Color.fromARGB(255, 5, 67, 117),
                child: Text(
                  'Go to get builder',
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ),
            SizedBox(height: 15),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20),

              child: MaterialButton(
                onPressed: () {
                  Get.off(PageThwo());
                },
                // shape: RoundedRectangleBorder(
                //   borderRadius: BorderRadiusGeometry.circular(12),
                // ),
                color: const Color.fromARGB(255, 3, 60, 107),
                height: 60,
                minWidth: MediaQuery.of(context).size.width,
                child: Text(
                  'Go to getx',
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ),
            SizedBox(height: 15),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: MaterialButton(
                onPressed: () {
                  Get.offAll(PageThree());
                },
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.vertical(
                    bottom: Radius.circular(15),
                  ),
                ),
                color: const Color.fromARGB(255, 4, 64, 114),
                height: 60,
                minWidth: MediaQuery.of(context).size.width,
                child: Text("Go to obs", style: TextStyle(color: Colors.white)),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
