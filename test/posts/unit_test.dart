import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:jalatest/features/features.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';

import 'mock_data.dart';
import 'unit_test.mocks.dart';

@GenerateNiceMocks([
  MockSpec<InjectorService>(onMissingStub: OnMissingStub.returnDefault),
  MockSpec<PostsRepository>(onMissingStub: OnMissingStub.returnDefault),
])
void main() {
  late MockPostsRepository repository;
  late MockInjectorService injector;

  setUpAll(() async {
    WidgetsFlutterBinding.ensureInitialized();
    injector = MockInjectorService();
    await injector.setupLocator(isTesting: true);
    repository = MockPostsRepository();
  });

  test('Should return list posts with 1 length', () async {
    // arrange
    const postsRequest = PostRequest(page: 1, perPage: 1);
    when(repository.getPosts(postsRequest)).thenAnswer((realInvocation) async =>
        BaseResponse.fromJson(
            mockPosts, (json) => (json as List).toResponseList(Post.fromJson)));
    // act
    final BaseResponse<List<Post>> response =
        await repository.getPosts(postsRequest);
    // assert
    expect(response.data?.length, 1);
    verify(repository.getPosts(postsRequest));
  });
}
