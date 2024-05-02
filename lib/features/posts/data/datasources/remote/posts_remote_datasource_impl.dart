import "../../data.dart";

class PostsRemoteDataSourceImpl extends PostsRemoteDataSource {
  final ApiService service;
  PostsRemoteDataSourceImpl({required this.service});

  @override
  Future<BaseResponse<List<Post>>> getPosts(PostRequest request) async {
    try {
      final BaseResponse<List<Post>> response = await service.get<List<Post>>(
        URL.posts,
        parsePosts,
        queryParams: request.toJson(),
      );

      return response;
    } on ServerException catch (e) {
      throw e.message;
    } on Failure catch (e) {
      throw e.message;
    } catch (e) {
      throw 'getPosts error : Something wrong $e';
    }
  }

  List<Post> parsePosts(Object? data) {
    if (data.runtimeType == List) {
      return (data as List).toResponseList(Post.fromJson);
    }

    return [];
  }
}
