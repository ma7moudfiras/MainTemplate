import 'package:flutter/material.dart';
import 'package:palventure/features/main/screens/profile/widget/profile_appbar.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

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

