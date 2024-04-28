import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import '../../features/features.dart';
import '../common.dart';
import 'route_observer.dart';

GlobalKey<NavigatorState> navigatorKey = GlobalKey<NavigatorState>();
BuildContext? globalContext = navigatorKey.currentContext;

class MyRouterDelegate {
  MyRouterDelegate._();

  static final instance = MyRouterDelegate._();

  // GoRouter configuration
  final routerConfig = GoRouter(
    debugLogDiagnostics: true,
    navigatorKey: navigatorKey,
    observers: [RouterObserver()],
    initialLocation: '/',
    // redirect: (context, state) async {
    //   StorageService storageService = StorageService.instance;
    //   final UserModel? user = await storageService.getUser();
    //   if (user == null) {
    //     return RouteName.loginScreen.pathName;
    //   }

    //   if (state.fullPath == RouteName.splashScreen.pathName ||
    //       state.fullPath == RouteName.homeScreen.pathName) {
    //     return RouteName.homeScreen.pathName;
    //   }

    //   return state.fullPath;
    //   // return state.fullPath;
    // },
    routes: [
      GoRoute(
        path: RouteName.splashScreen.pathName,
        name: RouteName.splashScreen.name,
        builder: (context, state) => const SplashScreen(),
      ),
      // GoRoute(
      //     path: RouteName.homeScreen.pathName,
      //     name: RouteName.homeScreen.name,
      //     builder: (context, state) => const HomeScreen(),
      //     routes: [
      //       GoRoute(
      //         path: RouteName.detailStoryScreen.pathName,
      //         name: RouteName.detailStoryScreen.name,
      //         builder: (context, state) =>
      //             DetailStoryScreen(storyId: state.extra as String),
      //       ),
      //       GoRoute(
      //         path: RouteName.addStoryScreen.pathName,
      //         name: RouteName.addStoryScreen.name,
      //         builder: (context, state) => const AddStoryScreen(),
      //       ),
      //       GoRoute(
      //         path: RouteName.mapsScreen.pathName,
      //         name: RouteName.mapsScreen.name,
      //         builder: (context, state) =>
      //             MapsScreen(mapsScreenModel: state.extra as MapsScreenModel),
      //       ),
      //     ]),
    ],
  );

  void showSnackbar(String text, {Widget? child}) {
    ScaffoldMessenger.of(navigatorKey.currentContext!).showSnackBar(
      SnackBar(
        content: child ??
            DefaultText(
              text,
              color: AppColors.whiteColor,
            ),
      ),
    );
  }
}
