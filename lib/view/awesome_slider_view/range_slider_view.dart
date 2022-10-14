// ignore_for_file: prefer_const_constructors_in_immutables

import 'package:flutter/material.dart';
import 'package:medium_article_11/resources/colors/app_colors.dart';

class RangeSliderView extends StatefulWidget {
  RangeSliderView({Key? key}) : super(key: key);

  @override
  _RangeSliderViewState createState() => _RangeSliderViewState();
}

class _RangeSliderViewState extends State<RangeSliderView> {
  int _value = 6;
  RangeValues _currentRangeValues = const RangeValues(20, 60);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Flutter Range Slider'),
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
                        child: RangeSlider(
                      values: _currentRangeValues,
                      min: 0,
                      max: 100,
                      activeColor: AppColors.mainColor,
                      inactiveColor: Colors.grey.shade400,
                      divisions: 10,
                      labels: RangeLabels(
                        _currentRangeValues.start.round().toString(),
                        _currentRangeValues.end.round().toString(),
                      ),
                      onChanged: (RangeValues values) {
                        setState(() {
                          _currentRangeValues = values;
                        });
                      },
                    )),
                  ])
            ],
          )),
        ));
  }
}
