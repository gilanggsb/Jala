import '../../domain/domain.dart';
import '../../presentation/presentation.dart';
import '../data.dart';

void detailShrimpPricesInjection() {
  //bloc
  getIt.registerFactory<DetailShrimpPricesBloc>(
    () => DetailShrimpPricesBloc(
      repository: getIt(),
    ),
  );
  //repository
  getIt.registerFactory<DetailShrimpPricesRepository>(
    () => DetailShrimpPricesRepositoryImpl(
      localDataSource: getIt(),
      remoteDataSource: getIt(),
    ),
  );
  //datasource
  getIt.registerLazySingleton<DetailShrimpPricesRemoteDataSource>(
    () => DetailShrimpPricesRemoteDataSourceImpl(
      service: getIt(),
    ),
  );
  getIt.registerLazySingleton<DetailShrimpPricesLocalDataSource>(
    () => DetailShrimpPricesLocalDataSourceImpl(
      service: getIt(),
    ),
  );
  //usecase
}
