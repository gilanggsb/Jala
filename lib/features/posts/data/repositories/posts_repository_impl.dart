import "../data.dart";
import "../../domain/domain.dart";

class PostsRepositoryImpl extends PostsRepository {
  final PostsLocalDataSource localDataSource;
  final PostsRemoteDataSource remoteDataSource;
  PostsRepositoryImpl({
    required this.localDataSource,
    required this.remoteDataSource,
  });

  @override
  Future<BaseResponse<List<Post>>> getPosts(PostRequest request) =>
      remoteDataSource.getPosts(request);
}
