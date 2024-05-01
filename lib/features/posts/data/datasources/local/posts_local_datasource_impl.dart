import "../../data.dart";

class PostsLocalDataSourceImpl extends PostsLocalDataSource {
  final StorageService service;
  PostsLocalDataSourceImpl({required this.service});
}
