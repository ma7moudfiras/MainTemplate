import 'package:flutter/material.dart';
import 'package:palventure/features/main/screens/home/mobile_home.dart';
import 'package:palventure/features/main/screens/home/responsive.dart';
import 'package:palventure/features/main/screens/home/web_home.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    if (ResponsiveHelper.isMobileWeb(context)) {
      return const MobileHomeScreen(); // Web (Mobile Layout)
    } else if (ResponsiveHelper.isDesktopWeb(context)) {
      return const WebHomeScreen(); // Web (Desktop Layout)
    } else if (ResponsiveHelper.isMobileApp()) {
      return const MobileHomeScreen(); // Mobile App
    } else {
      return const WebHomeScreen(); // Desktop App fallback
    }
  }
}
