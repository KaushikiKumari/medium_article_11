// ignore_for_file: prefer_const_constructors_in_immutables

import 'package:flutter/material.dart';
import 'package:medium_article_11/resources/colors/app_colors.dart';

class SingleChipView extends StatefulWidget {
  SingleChipView({Key? key}) : super(key: key);

  @override
  _SingleChipViewState createState() => _SingleChipViewState();
}

class _SingleChipViewState extends State<SingleChipView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Flutter Single Chip'),
          elevation: 0,
          backgroundColor: AppColors.mainColor,
        ),
        body: Padding(
          padding: const EdgeInsets.all(5.0),
          child: Center(
              child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Chip(
                padding:
                    const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
                avatar: const CircleAvatar(
                  backgroundColor: AppColors.mainColor,
                  child: Text("D"),
                ),
                label: const Text("Dev"),
                onDeleted: () {},
              ),
            ],
          )),
        ));
  }
}
