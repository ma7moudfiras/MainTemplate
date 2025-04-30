import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:palventure/features/main/screens/alerts/alerts.dart';
import 'package:palventure/features/main/screens/explore/explore.dart';
import 'package:palventure/features/main/screens/home/home.dart';
import 'package:palventure/features/main/screens/profile/profile.dart';
import 'package:palventure/utils/constants/colors.dart';
import 'package:palventure/utils/helpers/helper_functions.dart';

class NavigationMenu extends StatelessWidget {
  const NavigationMenu({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(NavigationController());
    final darkMode = AppHelperFunctions.isDarkMode(context);

    return Scaffold(
      body: Obx(() => controller.screens[controller.selectedIndex.value]),
      bottomNavigationBar: Obx(() => Theme(
        data: Theme.of(context).copyWith(
          splashFactory: NoSplash.splashFactory,
          highlightColor: Colors.transparent,
          hoverColor: Colors.transparent,
          splashColor: Colors.transparent,
        ),
        child: BottomNavigationBar(
          currentIndex: controller.selectedIndex.value,
          onTap: (index) => controller.selectedIndex.value = index,
          backgroundColor: darkMode ? AppColors.black : Colors.white,
          selectedItemColor: darkMode ? Colors.white : Colors.black,
          unselectedItemColor: darkMode ? Colors.white54 : Colors.black54,
          showSelectedLabels: false,
          showUnselectedLabels: false,
          type: BottomNavigationBarType.fixed,
          elevation: 8,
          items: const [
            BottomNavigationBarItem(icon: Icon(Iconsax.home), label: ''),
            BottomNavigationBarItem(icon: Icon(Iconsax.global), label: ''),
            BottomNavigationBarItem(icon: Icon(Iconsax.notification), label: ''),
            BottomNavigationBarItem(icon: Icon(Iconsax.user), label: ''),
          ],
        ),
      )),
    );
  }
}

class NavigationController extends GetxController {
  final Rx<int> selectedIndex = 0.obs;

  final screens = [
    const HomeScreen(),
    const ExploreScreen(),
    const Alerts(),
    const Profile(),
  ];
}
