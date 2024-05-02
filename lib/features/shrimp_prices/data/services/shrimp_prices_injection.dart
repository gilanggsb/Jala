import '../../../features.dart';

void shrimpPricesInjection() {
  //bloc
  getIt.registerFactory<ShrimpPricesBloc>(
    () => ShrimpPricesBloc(
      repository: getIt(),
    ),
  );
  //repository
  getIt.registerFactory<ShrimpPricesRepository>(
    () => ShrimpPricesRepositoryImpl(
      localDataSource: getIt(),
      remoteDataSource: getIt(),
    ),
  );
  //datasource
  getIt.registerLazySingleton<ShrimpPricesRemoteDataSource>(
    () => ShrimpPricesRemoteDataSourceImpl(
      service: getIt(),
    ),
  );
  getIt.registerLazySingleton<ShrimpPricesLocalDataSource>(
    () => ShrimpPricesLocalDataSourceImpl(
      service: getIt(),
    ),
  );
  //usecase
}
