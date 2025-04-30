import 'package:flutter/material.dart';
import 'package:palventure/features/main/screens/alerts/widgets/alerts_appbar.dart';
import 'package:palventure/utils/constants/colors.dart';
import 'package:palventure/utils/helpers/helper_functions.dart';

class AlertsScreen extends StatelessWidget {
  const AlertsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = AppHelperFunctions.isDarkMode(context);

    return Scaffold(

      backgroundColor: dark ? AppColors.black : AppColors.white,

      body: SingleChildScrollView(
        child: Column(
          children: [

            /// --- App Bar --- ///
            MyAlertsAppBar(),

            /// ---   --- ///




          ],
        ),
      ),
    );
  }
}

