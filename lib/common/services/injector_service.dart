import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'package:get_storage/get_storage.dart';
import 'package:internet_connection_checker/internet_connection_checker.dart';
import '../../features/jala_media.dart';

final GetIt getIt = GetIt.instance;

class InjectorService {
  const InjectorService();

  static Future<void> create() async {
    const injectorService = InjectorService();
    await injectorService.setupLocator();
  }

  Future<void> setupLocator() async {
    //feature
    jalaMediaInjection();
    //service
    serviceInjection();
    //module
    moduleInjection();
  }

  void serviceInjection() {
    getIt.registerLazySingleton<ApiService>(
      () => ApiServiceImpl(
        dio: getIt(),
      ),
    );
    getIt.registerLazySingleton<StorageService>(
      () => StorageServiceImpl(getIt()),
    );
    getIt.registerLazySingleton<NetworkService>(
      () => NetworkServiceImpl(getIt()),
    );
  }

  void moduleInjection() {
    getIt.registerLazySingleton<GetStorage>(
      () => GetStorage(),
    );
    getIt.registerLazySingleton<Dio>(
      () => Dio(),
    );
    getIt.registerLazySingleton<InternetConnectionChecker>(
      () => InternetConnectionChecker(),
    );
  }
}
