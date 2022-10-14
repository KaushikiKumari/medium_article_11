import 'package:flutter/material.dart';
import 'package:medium_article_11/resources/colors/app_colors.dart';
import 'package:medium_article_11/view/awesome_bottom_bar_view/add_view.dart';
import 'package:medium_article_11/view/awesome_bottom_bar_view/favorite_view.dart';
import 'package:medium_article_11/view/awesome_bottom_bar_view/home_view.dart';
import 'package:medium_article_11/view/awesome_bottom_bar_view/notification_view.dart';
import 'package:medium_article_11/view/awesome_bottom_bar_view/profile_view.dart';

class AwesomeBottomBar extends StatefulWidget {
  const AwesomeBottomBar({Key? key}) : super(key: key);

  @override
  State<AwesomeBottomBar> createState() => _AwesomeBottomBarState();
}

class _AwesomeBottomBarState extends State<AwesomeBottomBar> {
  var _onTap = 0;
  var pageList = [
    const HomeView(),
    const FavoriteView(),
    const NotificationView(),
    const ProfileView(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.whiteColor,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: AppColors.mainColor,
        centerTitle: true,
        title: const Text(
          'Awesome Bottom Bar',
          style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
        ),
        automaticallyImplyLeading: false,
      ),
      bottomNavigationBar: BottomAppBar(
        color: AppColors.mainColor,
        shape: const CircularNotchedRectangle(),
        child: Container(
          height: 60,
          width: MediaQuery.of(context).size.width,
          decoration: const BoxDecoration(
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(15), topRight: Radius.circular(15))),
          child: Row(children: [
            InkWell(
              onTap: () {
                setState(() {
                  _onTap = 0;
                });
              },
              child: Container(
                color: _onTap == 0 ? Colors.black26 : Colors.transparent,
                height: 60,
                width: MediaQuery.of(context).size.width / 5,
                child: const Icon(
                  Icons.home,
                  size: 30,
                  color: Colors.white,
                ),
              ),
            ),
            InkWell(
              onTap: () {
                setState(() {
                  _onTap = 1;
                });
              },
              child: Container(
                decoration: BoxDecoration(
                    color: _onTap == 1 ? Colors.black26 : Colors.transparent,
                    borderRadius:
                        const BorderRadius.only(topRight: Radius.circular(8))),
                height: 60,
                width: MediaQuery.of(context).size.width / 5,
                child: const Icon(
                  Icons.favorite,
                  size: 28,
                  color: Colors.white,
                ),
              ),
            ),
            SizedBox(
              height: 60,
              width: MediaQuery.of(context).size.width / 5,
            ),
            InkWell(
              onTap: () {
                setState(() {
                  _onTap = 2;
                });
              },
              child: Container(
                decoration: BoxDecoration(
                    color: _onTap == 2 ? Colors.black26 : Colors.transparent,
                    borderRadius:
                        const BorderRadius.only(topLeft: Radius.circular(8))),
                height: 60,
                width: MediaQuery.of(context).size.width / 5,
                child: const Icon(
                  Icons.notifications,
                  size: 28,
                  color: Colors.white,
                ),
              ),
            ),
            InkWell(
              onTap: () {
                setState(() {
                  _onTap = 3;
                });
              },
              child: Container(
                color: _onTap == 3 ? Colors.black26 : Colors.transparent,
                height: 60,
                width: MediaQuery.of(context).size.width / 5,
                child: const Icon(
                  Icons.account_box,
                  size: 28,
                  color: Colors.white,
                ),
              ),
            )
          ]),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      extendBody: true,
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          AddView(context);
        },
        backgroundColor: AppColors.mainColor,
        child: const Center(child: Icon(Icons.add)),
      ),
      body: pageList[_onTap],
    );
  }
}
