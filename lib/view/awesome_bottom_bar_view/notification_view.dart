import 'package:flutter/material.dart';
import 'package:medium_article_11/resources/colors/app_colors.dart';

class NotificationView extends StatefulWidget {
  const NotificationView({Key? key}) : super(key: key);

  @override
  State<NotificationView> createState() => _NotificationViewState();
}

class _NotificationViewState extends State<NotificationView> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
        backgroundColor: AppColors.whiteColor,
        body: Center(
            child: SingleChildScrollView(
          child: Text("This is the Notification View",
              style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: AppColors.mainColor)),
        )));
  }
}
