// ignore_for_file: non_constant_identifier_names

import 'package:flutter/material.dart';
import 'package:medium_article_11/resources/colors/app_colors.dart';

Future<dynamic> AddView(BuildContext context) {
  return showModalBottomSheet(
    context: context,
    // color is applied to main screen when modal bottom screen is displayed
    barrierColor: Colors.black12,
    //background color for modal bottom screen
    backgroundColor: AppColors.mainColor,
    //elevates modal bottom screen
    elevation: 10,
    // gives rounded corner to modal bottom screen
    shape: const RoundedRectangleBorder(
      borderRadius: BorderRadius.only(
          topRight: Radius.circular(30.0), topLeft: Radius.circular(30.0)),
    ),
    builder: (BuildContext context) {
      // UDE : SizedBox instead of Container for whitespaces
      return SizedBox(
        height: MediaQuery.of(context).size.height / 3,
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Container(
                height: 6,
                width: 80,
                decoration: BoxDecoration(
                    color: AppColors.whiteColor,
                    borderRadius: BorderRadius.circular(10)),
              ),
              const SizedBox(
                height: 20,
              ),
              const Text("Choose an image from",
                  style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w500,
                      color: AppColors.whiteColor)),
              const SizedBox(
                height: 15,
              ),
              const Divider(
                color: AppColors.whiteColor,
                height: 1.5,
              ),
              const SizedBox(
                height: 15,
              ),
              const ElevatedButton(
                onPressed: null,
                child: Center(
                  child: Text("Galary",
                      style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                          color: AppColors.whiteColor)),
                ),
              ),
              const ElevatedButton(
                onPressed: null,
                child: Center(
                  child: Text("Camera",
                      style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                          color: AppColors.whiteColor)),
                ),
              ),
            ],
          ),
        ),
      );
    },
  );
}
