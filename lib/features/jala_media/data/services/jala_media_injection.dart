import 'package:jalatest/features/jala_media/presentation/controllers/bloc/jala_media_bloc.dart';

import '../../domain/domain.dart';
import '../data.dart';

void jalaMediaInjection() {
  //bloc
  getIt.registerFactory<JalaMediaBloc>(
    () => JalaMediaBloc(
      repository: getIt(),
    ),
  );
  //repository
  getIt.registerFactory<JalaMediaRepository>(
    () => JalaMediaRepositoryImpl(
      localDataSource: getIt(),
      remoteDataSource: getIt(),
    ),
  );
  //datasource
  getIt.registerLazySingleton<JalaMediaRemoteDataSource>(
    () => JalaMediaRemoteDataSourceImpl(
      service: getIt(),
    ),
  );
  getIt.registerLazySingleton<JalaMediaLocalDataSource>(
    () => JalaMediaLocalDataSourceImpl(
      service: getIt(),
    ),
  );
  //usecase
}
