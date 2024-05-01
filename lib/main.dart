import 'dart:async';
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'common/common.dart';
import 'common/utils/bloc_observer.dart';

void main() async {
  runZonedGuarded<Future<void>>(
    () async {
      HttpOverrides.global = MyHttpOverrides();
      Bloc.observer = MyBlocObserver();
      await InjectorService.create();
      runApp(MyApp());
    },
    (error, stack) => AppUtils.debugPrint(
      'RunzonedGuarded Error :$error \nStackTrace : $stack ',
      isError: true,
    ),
  );
}

// ignore: must_be_immutable
class MyApp extends StatelessWidget {
  MyRouterDelegate myRouterDelegate = MyRouterDelegate.instance;
  MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Jala',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: AppColors.primary),
        useMaterial3: true,
      ),
      home: LoadingOverlayAlt(
        child: MaterialApp.router(
          routerConfig: myRouterDelegate.routerConfig,
        ),
      ),
    );
  }
}

class MyHttpOverrides extends HttpOverrides {
  @override
  HttpClient createHttpClient(SecurityContext? context) {
    return super.createHttpClient(context)
      ..badCertificateCallback =
          (X509Certificate cert, String host, int port) => true;
  }
}
