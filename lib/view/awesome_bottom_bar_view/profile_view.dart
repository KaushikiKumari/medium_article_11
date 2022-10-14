import 'package:flutter/material.dart';
import 'package:medium_article_11/resources/colors/app_colors.dart';

class ProfileView extends StatefulWidget {
  const ProfileView({Key? key}) : super(key: key);

  @override
  State<ProfileView> createState() => _ProfileViewState();
}

class _ProfileViewState extends State<ProfileView> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
        backgroundColor: AppColors.whiteColor,
        body: Center(
            child: SingleChildScrollView(
          child: Text("This is the Profile View",
              style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: AppColors.mainColor)),
        )));
  }
}
