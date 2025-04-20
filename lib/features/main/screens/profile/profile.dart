import 'package:flutter/material.dart';
import 'package:palventure/common/widgets/appbar/appbar.dart';
import 'package:palventure/features/main/screens/profile/widget/profile_appbar.dart';
import 'package:palventure/utils/constants/colors.dart';
import 'package:palventure/utils/constants/text_strings.dart';
import 'package:palventure/utils/helpers/helper_functions.dart';

class Profile extends StatelessWidget {
  const Profile({super.key});

  @override
  Widget build(BuildContext context) {

    return const Scaffold(

      body: SingleChildScrollView(
        child: Column(
          children: [

            ProfileAppBar()


          ],
        ),

      ),

    );
  }
}

