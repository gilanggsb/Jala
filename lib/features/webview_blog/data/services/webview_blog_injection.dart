import '../../domain/domain.dart';
import '../data.dart';

void webviewBlogInjection() {
  //bloc

  //repository
  getIt.registerFactory<WebviewBlogRepository>(
    () => WebviewBlogRepositoryImpl(
      localDataSource: getIt(),
      remoteDataSource: getIt(),
    ),
  );
  //datasource
  getIt.registerLazySingleton<WebviewBlogRemoteDataSource>(
    () => WebviewBlogRemoteDataSourceImpl(
      service: getIt(),
    ),
  );
  getIt.registerLazySingleton<WebviewBlogLocalDataSource>(
    () => WebviewBlogLocalDataSourceImpl(
      service: getIt(),
    ),
  );
  //usecase
}
