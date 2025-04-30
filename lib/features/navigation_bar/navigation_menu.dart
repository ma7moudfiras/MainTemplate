import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:palventure/features/navigation_bar/widgets/custom_bottom_navigation_bar.dart';
import 'package:palventure/features/main/controlers/navigation_controller.dart';
import 'package:palventure/utils/helpers/helper_functions.dart';

class NavigationMenu extends StatelessWidget {
  const NavigationMenu({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(NavigationController());
    final darkMode = AppHelperFunctions.isDarkMode(context);

    return Scaffold(
      body: Stack(
        children: [
          // Current Screen
          Obx(() => controller.screens[controller.selectedIndex.value]),

          // Custom Bottom Navigation Bar
          Align(
            alignment: Alignment.bottomCenter,
            child: SafeArea(
              child: ConstrainedBox(
                constraints: const BoxConstraints(maxWidth: 600),
                child: Obx(() => Theme(
                  data: Theme.of(context).copyWith(
                    splashFactory: NoSplash.splashFactory,
                    highlightColor: Colors.transparent,
                    hoverColor: Colors.transparent,
                    splashColor: Colors.transparent,
                  ),
                  child: CustomBottomNavigationBar(
                    selectedIndex: controller.selectedIndex.value,
                    onTap: (index) => controller.selectedIndex.value = index,
                    darkMode: darkMode,
                  ),
                )),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
