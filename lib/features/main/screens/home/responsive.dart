import 'package:flutter/foundation.dart' show kIsWeb, defaultTargetPlatform, TargetPlatform;
import 'package:flutter/material.dart';

class ResponsiveHelper {
  static bool isMobileApp() =>
      !kIsWeb && (defaultTargetPlatform == TargetPlatform.android || defaultTargetPlatform == TargetPlatform.iOS);

  static bool isDesktopApp() =>
      !kIsWeb && !(defaultTargetPlatform == TargetPlatform.android || defaultTargetPlatform == TargetPlatform.iOS);

  static bool isMobileWeb(BuildContext context) =>
      kIsWeb && MediaQuery.of(context).size.width < 600;

  static bool isDesktopWeb(BuildContext context) =>
      kIsWeb && MediaQuery.of(context).size.width >= 600;
}
