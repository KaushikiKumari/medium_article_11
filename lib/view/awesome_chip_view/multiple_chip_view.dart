// ignore_for_file: prefer_const_constructors_in_immutables

import 'package:flutter/material.dart';
import 'package:medium_article_11/resources/colors/app_colors.dart';

class MultipleChipView extends StatefulWidget {
  MultipleChipView({Key? key}) : super(key: key);

  @override
  _MultipleChipViewState createState() => _MultipleChipViewState();
}

class _MultipleChipViewState extends State<MultipleChipView> {
  var nameList = [
    'Jenny',
    'Eve',
    'Ram',
    'Dev',
    'John',
    'Steve',
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Flutter Multi Chip'),
          elevation: 0,
          backgroundColor: AppColors.mainColor,
        ),
        body: Padding(
          padding: const EdgeInsets.all(5.0),
          child: Center(
              child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              GridView.count(
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  crossAxisCount: 3,
                  childAspectRatio: 4,
                  crossAxisSpacing: 5.0,
                  mainAxisSpacing: 5.0,
                  children: List.generate(nameList.length, (index) {
                    return Chip(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 12, vertical: 6),
                      avatar: CircleAvatar(
                        backgroundColor: AppColors.mainColor,
                        child: Text(nameList[index].substring(0, 1)),
                      ),
                      label: Text(nameList[index]),
                      onDeleted: () {
                        setState(() {
                          nameList.removeAt(index);
                        });
                      },
                    );
                  })),
            ],
          )),
        ));
  }
}
