import "../data.dart";
import "../../domain/domain.dart";

class WebviewBlogRepositoryImpl extends WebviewBlogRepository {
  final WebviewBlogLocalDataSource localDataSource;
  final WebviewBlogRemoteDataSource remoteDataSource;
  WebviewBlogRepositoryImpl({
    required this.localDataSource,
    required this.remoteDataSource,
  });
}
