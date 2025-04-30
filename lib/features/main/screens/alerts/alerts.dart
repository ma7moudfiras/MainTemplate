import 'package:flutter/material.dart';
import 'package:palventure/features/main/screens/alerts/widgets/alerts_appbar.dart';
import 'package:palventure/utils/constants/colors.dart';
import 'package:palventure/utils/helpers/helper_functions.dart';

<<<<<<< HEAD
class AlertsScreen extends StatelessWidget {
  const AlertsScreen({super.key});
=======
class Alerts extends StatelessWidget {
  const Alerts({super.key});
>>>>>>> dfa50593abfb55628a700872fac268c3278da747

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

