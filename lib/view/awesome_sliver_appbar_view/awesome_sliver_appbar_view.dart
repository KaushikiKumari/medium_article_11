// ignore_for_file: use_key_in_widget_constructors

import 'package:flutter/material.dart';
import 'package:medium_article_11/resources/colors/app_colors.dart';

class AwesomeSliverAppBarView extends StatefulWidget {
  @override
  State<AwesomeSliverAppBarView> createState() =>
      _AwesomeSliverAppBarViewState();
}

class _AwesomeSliverAppBarViewState extends State<AwesomeSliverAppBarView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: CustomScrollView(
      slivers: <Widget>[
        SliverAppBar(
          snap: false,
          pinned: true, // it will pinned the app bar on top
          floating: false,
          flexibleSpace: const FlexibleSpaceBar(
            centerTitle: false,
            title: Text("Awesome Sliver AppBar",
                style: TextStyle(
                  color: AppColors.whiteColor,
                  fontSize: 15.0,
                )),
            // background: ,
            // Here you can use any image or gif in background
          ),
          expandedHeight: 230,// fix the expanded height of the app bar 
          backgroundColor: AppColors.mainColor, // backgroundcolor of the expanded appbar and normal appbar ( for both )
          leading: IconButton(
            icon: const Icon(Icons.menu),
            tooltip: 'Menu',
            onPressed: () {},
          ),
          actions: <Widget>[
            IconButton(
              icon: const Icon(Icons.notifications_active),
              tooltip: 'Comment Icon',
              onPressed: () {},
            ),
            IconButton(
              icon: const Icon(Icons.chat),
              tooltip: 'Setting Icon',
              onPressed: () {},
            ),
          ],
        ),
        SliverList(
          delegate: SliverChildBuilderDelegate(
            (context, index) => Padding(
              padding: const EdgeInsets.all(15.0),
              child: Container(
                height: MediaQuery.of(context).size.height / 5,
                width: MediaQuery.of(context).size.width / 1,
                decoration: BoxDecoration(
                    color: AppColors.cyanColor,
                    borderRadius: BorderRadius.circular(30)),
              ),
            ),
            childCount: 8,
          ),
        )
      ],
    ));
  }
}
