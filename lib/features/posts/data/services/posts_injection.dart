import 'package:jalatest/features/features.dart';

void postsInjection() {
  //bloc
  getIt.registerFactory<PostsBloc>(
    () => PostsBloc(
      repository: getIt(),
    ),
  );
  //repository
  getIt.registerFactory<PostsRepository>(
    () => PostsRepositoryImpl(
      localDataSource: getIt(),
      remoteDataSource: getIt(),
    ),
  );
  //datasource
  getIt.registerLazySingleton<PostsRemoteDataSource>(
    () => PostsRemoteDataSourceImpl(
      service: getIt(),
    ),
  );
  getIt.registerLazySingleton<PostsLocalDataSource>(
    () => PostsLocalDataSourceImpl(
      service: getIt(),
    ),
  );
  //usecase
}
