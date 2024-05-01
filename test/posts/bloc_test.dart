import 'package:flutter/widgets.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:jalatest/features/features.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'package:bloc_test/bloc_test.dart';

import 'unit_test.mocks.dart';
import 'mock_data.dart';

@GenerateNiceMocks([
  MockSpec<PostsRepository>(onMissingStub: OnMissingStub.returnDefault),
  MockSpec<InjectorService>(onMissingStub: OnMissingStub.returnDefault),
])
void main() {
  late MockPostsRepository repository;
  late MockInjectorService injector;
  late PostsBloc bloc;

  setUp(() async {
    WidgetsFlutterBinding.ensureInitialized();
    injector = MockInjectorService();
    await injector.setupLocator(isTesting: true);
    repository = MockPostsRepository();
    bloc = PostsBloc(repository: repository);
  });

  tearDownAll(() {
    bloc.close();
  });

  test('should return initial state ', () {
    expect(bloc.state, const PostsState.initial());
  });

  group('posts bloc ', () {
    blocTest<PostsBloc, PostsState>(
      'emits [PostsState.success] when PostsEvent is getData.',
      build: () {
        when(repository.getPosts(bloc.postsRequest)).thenAnswer(
            (realInvocation) async => BaseResponse.fromJson(mockPosts,
                (json) => (json as List).toResponseList(Post.fromJson)));
        return bloc;
      },
      act: (bloc) => bloc.add(const PostsEvent.getData()),
      expect: () async {
        return <PostsState>[
          const PostsState.loading(),
          PostsState.success(bloc.posts)
        ];
      },
    );

    blocTest<PostsBloc, PostsState>(
      'emits [PostsState.success] when PostsEvent is nextPage and currentPage is 2.',
      build: () {
        when(repository.getPosts(bloc.postsRequest
                .copyWith(page: (bloc.postsRequest.page ?? 1) + 1)))
            .thenAnswer((realInvocation) async => BaseResponse.fromJson(
                mockPostsPage2,
                (json) => (json as List).toResponseList(Post.fromJson)));
        return bloc;
      },
      act: (bloc) {
        bloc.resPosts = BaseResponse.fromJson(
          mockPosts,
          (json) => (json as List).toResponseList(Post.fromJson),
        );
        bloc.add(const PostsEvent.nextPage());
      },
      expect: () async {
        expect(bloc.resPosts?.meta?.currentPage, 2);
        return <PostsState>[
          PostsState.success(bloc.posts, isLoading: true),
          PostsState.success(bloc.posts, isLoading: false)
        ];
      },
    );

    blocTest<PostsBloc, PostsState>(
      'emits [PostsState.success] when PostsEvent is nextPage and currentPage is lastPage',
      build: () {
        bloc.postsRequest = bloc.postsRequest.copyWith(page: 237);
        bloc.resPosts = BaseResponse.fromJson(
          mockPostsReachedEnd,
          (json) => (json as List).toResponseList(Post.fromJson),
        );
        when(repository.getPosts(bloc.postsRequest)).thenAnswer(
            (realInvocation) async => BaseResponse.fromJson(mockPostsReachedEnd,
                (json) => (json as List).toResponseList(Post.fromJson)));
        return bloc;
      },
      act: (bloc) async {
        bloc.add(const PostsEvent.nextPage());
      },
      expect: () async {
        return <PostsState>[
          PostsState.success(bloc.posts, isLoading: true),
          PostsState.success(
            bloc.posts,
            isLoading: false,
            hasReachedEnd: true,
          )
        ];
      },
    );
  });
}
