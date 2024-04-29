import 'dart:async';

import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import '../../common/common.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  final MyRouterDelegate myRouter = MyRouterDelegate.instance;

  @override
  void initState() {
    super.initState();
    checkUser();
  }

  void checkUser() async {
    Timer(const Duration(seconds: 1), () {
      globalContext?.go(RouteName.jalaMedia.pathName);
    });
  }

  @override
  Widget build(BuildContext context) {
    return DefaultScaffold(
      body: Center(
        child: Text(
          'JALA',
          style: AppUtils.semiBoldTextStyle(
              fontSize: 36, fontColor: AppColors.white, letterSpacing: 4),
        ),
      ),
    );
  }
}
