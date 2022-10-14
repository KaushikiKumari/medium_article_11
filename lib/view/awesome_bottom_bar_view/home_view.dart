import 'package:flutter/material.dart';
import 'package:medium_article_11/resources/colors/app_colors.dart';

class HomeView extends StatefulWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
        backgroundColor: AppColors.whiteColor,
        body: Center(
            child: SingleChildScrollView(
          child: Text("This is the Home View",
              style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: AppColors.mainColor)),
        )));
  }
}
