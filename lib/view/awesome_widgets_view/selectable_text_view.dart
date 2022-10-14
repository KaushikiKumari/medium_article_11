import 'package:flutter/material.dart';
import 'package:medium_article_11/resources/colors/app_colors.dart';

class SelectableTextView extends StatefulWidget {
  const SelectableTextView({Key? key}) : super(key: key);

  @override
  State<SelectableTextView> createState() => _SelectableTextViewState();
}

class _SelectableTextViewState extends State<SelectableTextView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.whiteColor, // scaffold background color
      appBar: AppBar(
        elevation: 0,
        backgroundColor: AppColors.mainColor,
        centerTitle: true,
        title: const Text(
          'Flutter SelectableText',
          style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
        ),
        automaticallyImplyLeading: false,
      ),
      body: Center(
        child: SelectableText(
          'This is selectable Text',
          style: const TextStyle(fontSize: 22),
          onSelectionChanged: (selection, cause) {},
        ),
      ),
    );
  }
}
