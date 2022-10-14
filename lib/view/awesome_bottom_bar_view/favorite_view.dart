import 'package:flutter/material.dart';
import 'package:medium_article_11/resources/colors/app_colors.dart';

class FavoriteView extends StatefulWidget {
  const FavoriteView({Key? key}) : super(key: key);

  @override
  State<FavoriteView> createState() => _FavoriteViewState();
}

class _FavoriteViewState extends State<FavoriteView> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
        backgroundColor: AppColors.whiteColor,
        body: Center(
            child: SingleChildScrollView(
          child: Text("This is the Favorite View",
              style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: AppColors.mainColor)),
        )));
  }
}
