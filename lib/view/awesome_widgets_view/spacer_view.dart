// ignore_for_file: prefer_const_constructors_in_immutables

import 'package:flutter/material.dart';
import 'package:medium_article_11/resources/colors/app_colors.dart';

class SpacerView extends StatefulWidget {
  SpacerView({Key? key}) : super(key: key);

  @override
  _SpacerViewState createState() => _SpacerViewState();
}

class _SpacerViewState extends State<SpacerView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Flutter Spacer'),
          elevation: 0,
          backgroundColor: AppColors.mainColor,
        ),
        body: Padding(
          padding: const EdgeInsets.all(5.0),
          child: Center(
              child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Spacer(),
              Container(
                width: MediaQuery.of(context).size.width / 1,
                height: 100,
                color: AppColors.mainColor,
              ),
              const Spacer(),
              Container(
                width: MediaQuery.of(context).size.width / 1,
                height: 100,
                color: AppColors.mainColor,
              ),
              const Spacer(),
              Container(
                width: MediaQuery.of(context).size.width / 1,
                height: 100,
                color: AppColors.mainColor,
              ),
              const Spacer(),
            ],
          )),
        ));
  }
}
