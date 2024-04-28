import 'package:flutter/material.dart';
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
    // final StorageService storageService = StorageService.instance;
    // final UserModel? user = await storageService.getUser();
    // if (user != null) {
    //   globalContext?.go(RouteName.loginScreen.pathName);
    //   return;
    // }

    // globalContext?.go(RouteName.homeScreen.pathName);
  }

  @override
  Widget build(BuildContext context) {
    return DefaultScaffold(
      body: Center(
        child: Text(
          'Jala Test',
          style: AppUtils.mediumTextStyle(
            fontSize: 36,
            fontColor: AppColors.blackColor,
          ),
        ),
      ),
    );
  }
}
