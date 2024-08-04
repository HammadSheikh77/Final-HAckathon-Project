import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:final_hackathon/ViewModels/Bottomnavi_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

class Bottomnavi extends StatelessWidget {
  Bottomnavi({super.key});

  final BottomnaviController controller = Get.put(BottomnaviController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: Obx(
        () => CurvedNavigationBar(
          onTap: controller.onTapNav,
          index: controller.selectedIndex.value,
          height: 60,
          animationDuration: const Duration(milliseconds: 250),
          backgroundColor: Colors.black,
          items: [
            const Icon(
              Icons.home_outlined,
              color: Colors.grey,
            ),
            Image.asset('assets/icons/􀕹.png', color: Colors.black),
            Image.asset(
              'assets/icons/􀍩.png',
              color: Colors.black,
            ),
            Image.asset(
              'assets/icons/􀉆.png',
              color: Colors.black,
            ),
            Image.asset(
              'assets/icons/􀉩.png',
              color: Colors.black,
            ),
          ],
        ),
      ),
      body: Obx(
        () => controller.pages[controller.selectedIndex.value],
      ),
    );
  }
}
