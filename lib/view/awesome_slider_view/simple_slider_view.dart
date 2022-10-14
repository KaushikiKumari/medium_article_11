// ignore_for_file: prefer_const_constructors_in_immutables

import 'package:flutter/material.dart';
import 'package:medium_article_11/resources/colors/app_colors.dart';

class SimpleSliderView extends StatefulWidget {
  SimpleSliderView({Key? key}) : super(key: key);

  @override
  _SimpleSliderViewState createState() => _SimpleSliderViewState();
}

class _SimpleSliderViewState extends State<SimpleSliderView> {
  int _value = 6;
  RangeValues _currentRangeValues = const RangeValues(20, 60);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Flutter Simple Slider'),
          elevation: 0,
          backgroundColor: AppColors.mainColor,
        ),
        body: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Center(
              child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    const Icon(
                      Icons.volume_up,
                      size: 40,
                      color: AppColors.mainColor,
                    ),
                    Expanded(
                        child: Slider(
                            value: _value.toDouble(),
                            min: 1.0,
                            max: 20.0,
                            divisions: 10,
                            activeColor: AppColors.mainColor,
                            inactiveColor: Colors.grey.shade400,
                            label: 'Set volume value',
                            onChanged: (double newValue) {
                              setState(() {
                                _value = newValue.round();
                              });
                            },
                            semanticFormatterCallback: (double newValue) {
                              return '${newValue.round()} dollars';
                            })),
                  ]),
            ],
          )),
        ));
  }
}
