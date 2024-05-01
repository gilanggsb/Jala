import '../../../features.dart';

abstract class PostsRepository {
  Future<BaseResponse<List<Post>>> getPosts(PostRequest request);
}
