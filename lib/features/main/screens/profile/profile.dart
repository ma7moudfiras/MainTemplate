import 'package:flutter/material.dart';
import 'package:palventure/features/main/screens/profile/widget/profile_appbar.dart';

<<<<<<< HEAD
class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});
=======
class Profile extends StatelessWidget {
  const Profile({super.key});
>>>>>>> dfa50593abfb55628a700872fac268c3278da747

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

