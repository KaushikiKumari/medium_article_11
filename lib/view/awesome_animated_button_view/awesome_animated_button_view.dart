import 'package:flutter/material.dart';
import 'package:medium_article_11/resources/colors/app_colors.dart';

class AwesomeAnimatedButtonView extends StatefulWidget {
  const AwesomeAnimatedButtonView({Key? key}) : super(key: key);

  @override
  State<AwesomeAnimatedButtonView> createState() =>
      _AwesomeAnimatedButtonViewState();
}

class _AwesomeAnimatedButtonViewState extends State<AwesomeAnimatedButtonView>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation _contentAnimation;
  late Animation _textAnimation;
  late Animation _iconAnimation;

  @override
  void initState() {
    super.initState();
    _controller =
        AnimationController(vsync: this, duration: const Duration(seconds: 4));
    _contentAnimation = Tween(
      begin: 50.0,
      end: 250.0,
    ).animate(CurvedAnimation(
        parent: _controller,
        curve: const Interval(0.0, 0.250, curve: Curves.bounceOut)));
    _textAnimation = Tween(
      begin: 0.0,
      end: 13.0,
    ).animate(CurvedAnimation(
        parent: _controller,
        curve: const Interval(0.0, 0.13, curve: Curves.linear)));
    _iconAnimation = Tween(
      begin: 0.0,
      end: 25.0,
    ).animate(CurvedAnimation(
        parent: _controller,
        curve: const Interval(0.0, 0.25, curve: Curves.bounceInOut)));
    _controller.forward();
    _controller.addListener(() {
      setState(() {});
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.whiteColor,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: AppColors.mainColor,
        centerTitle: true,
        title: const Text(
          'Awesome Animated Button',
          style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
        ),
        automaticallyImplyLeading: false,
      ),
      body: Center(
        child: SingleChildScrollView(
          child: SizedBox(
              width: _contentAnimation.value,
              height: 50,
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: AppColors.mainColor,
                  border: Border.all(
                    color: AppColors.whiteColor,
                    style: BorderStyle.solid,
                    width: 2,
                  ),
                ),
                child: Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 10.0, vertical: 8),
                  child: Row(
                    children: [
                      // const Icon(
                      //   Icons.window,
                      //   size: 10,
                      //   color: AppColors.whiteColor,
                      // ),
                      const SizedBox(width: 5),
                      Expanded(
                        child: Text(
                          'Button Text',
                          maxLines: 1,
                          style: TextStyle(
                            color: AppColors.whiteColor,
                            fontSize: _textAnimation.value,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),
                      Icon(
                        Icons.lock,
                        size: _iconAnimation.value,
                        color: AppColors.whiteColor,
                      )
                    ],
                  ),
                ),
              )),
        ),
      ),
    );
  }
}
