import 'package:jalatest/features/features.dart';

abstract class PostsRemoteDataSource {
  Future<BaseResponse<List<Post>>> getPosts(PostRequest request);
}
