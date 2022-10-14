import 'package:flutter/material.dart';
import 'package:medium_article_11/resources/colors/app_colors.dart';

class CheckboxListTilePage extends StatefulWidget {
  const CheckboxListTilePage({Key? key}) : super(key: key);

  @override
  State<CheckboxListTilePage> createState() => _CheckboxListTilePageState();
}

class _CheckboxListTilePageState extends State<CheckboxListTilePage> {
  bool? isChecked = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.whiteColor, // scaffold background color
      appBar: AppBar(
        elevation: 0,
        backgroundColor: AppColors.mainColor,
        centerTitle: true,
        title: const Text(
          'Flutter CheckboxListTile',
          style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
        ),
        automaticallyImplyLeading: false,
      ),
      body: Center(
        child: SingleChildScrollView(
            child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CheckboxListTile(
              value: isChecked,
              onChanged: (bool? newValue) {
                setState(() {
                  isChecked = newValue;
                });
              },
              title: const Text("Checkbox List Tile"),
              activeColor: Colors.orange,
              checkColor: Colors.white,
              tileColor: Colors.black12,
              subtitle: const Text('This is a subtitle'),
              controlAffinity: ListTileControlAffinity.leading,
              tristate: true,
            )
          ],
        )),
      ),
    );
  }
}
