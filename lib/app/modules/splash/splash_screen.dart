import 'dart:async';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:cardio_credits/app/modules/auth/login/login_view.dart';

class SplashView extends StatefulWidget {
  const SplashView({Key? key}) : super(key: key);

  static const String routeName = '/';

  @override
  State<SplashView> createState() => _SplashViewState();
}

class _SplashViewState extends State<SplashView> with TickerProviderStateMixin {
  final int splashDuration = 3;
  late final AnimationController controller;
  late final opacityTween = Tween(begin: 0, end: 1);

  @override
  void initState() {
    controller = AnimationController(vsync: this, duration: Duration(milliseconds: 500));
    controller.forward();
    WidgetsBinding.instance?.addPostFrameCallback((timeStamp) {});
    Timer(Duration(seconds: splashDuration), checkLogin);
    super.initState();
  }

  void checkLogin() async {
    context.go(LoginView.routeName);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).primaryColor,
      body: Center(
        child: AnimatedBuilder(
          animation: controller,
          builder: (context, child) => AnimatedOpacity(
            opacity: controller.value,
            duration: Duration(milliseconds: 800),
            child: Image.asset(
              'assets/images/Logo.png', // Adjust the path according to your image location
              width: 200, // Adjust the width as needed
              height: 200, // Adjust the height as needed
            ),
          ),
        ),
      ),
    );
  }
}
