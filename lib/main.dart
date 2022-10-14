import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:medium_article_11/view/awesome_animated_button_view/awesome_animated_button_view.dart';
import 'package:medium_article_11/view/awesome_bottom_bar_view/awesome_bottom_bar_view.dart';
import 'package:medium_article_11/view/awesome_chip_view/multiple_chip_view.dart';
import 'package:medium_article_11/view/awesome_chip_view/single_chip_view.dart';
import 'package:medium_article_11/view/awesome_slider_view/range_slider_view.dart';
import 'package:medium_article_11/view/awesome_slider_view/simple_slider_view.dart';
import 'package:medium_article_11/view/awesome_widgets_view/checkbox_list_tile_view.dart';
import 'package:medium_article_11/view/awesome_widgets_view/grid_tile_view.dart';
import 'package:medium_article_11/view/awesome_widgets_view/selectable_text_view.dart';
import 'package:medium_article_11/view/awesome_widgets_view/spacer_view.dart';
import 'package:medium_article_11/view/awesome_widgets_view/table_view.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
    statusBarColor: Colors.transparent, // transparent status bar
  ));
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Medium Article 11 Helper',
      debugShowCheckedModeBanner: false,
      home: AwesomeBottomBar(),
    );
  }
}
