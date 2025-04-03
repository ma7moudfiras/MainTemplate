import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:palventure/features/authentication/screens/login/login.dart';

class OnBoardingController extends GetxController {
  static OnBoardingController get instance => Get.find();

  // Variables
  final pageController = PageController();
  RxInt currentPageIndex = 0.obs;

  // Update Current Index when Page Scrolls
  void updatePageIndicator(int index) => currentPageIndex.value = index;

  // Jump to the specific dot selected page
  void dotNavigationClick(int index) {
    currentPageIndex.value = index;
    pageController.jumpToPage(index);
  }

  //Update current page index and jump to the next page
  void nextPage() {
    if (currentPageIndex.value == 2) {

      Get.offAll(() => const LoginScreen());

    } else {
      int page = currentPageIndex.value + 1;
      pageController.animateToPage(
        page,
        duration:
        const Duration(milliseconds: 500), // Adjust the duration as needed
        curve: Curves.easeInOut, // Adjust the animation curve if desired
      );
    }
  }

  // Jump to Login Screen
  void skipPage() {
    Get.offAll(() => const LoginScreen());
  }
}
