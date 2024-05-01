import 'package:jalatest/features/features.dart';

void diseasesInjection() {
  //bloc
  getIt.registerFactory<DiseasesBloc>(
    () => DiseasesBloc(
      repository: getIt(),
    ),
  );
  //repository
  getIt.registerFactory<DiseasesRepository>(
    () => DiseasesRepositoryImpl(
      // localDataSource: getIt(),
      remoteDataSource: getIt(),
    ),
  );
  //datasource
  getIt.registerLazySingleton<DiseasesRemoteDataSource>(
    () => DiseasesRemoteDataSourceImpl(
      service: getIt(),
    ),
  );
  getIt.registerLazySingleton<DiseasesLocalDataSource>(
    () => DiseasesLocalDataSourceImpl(
      service: getIt(),
    ),
  );
  //usecase
}
