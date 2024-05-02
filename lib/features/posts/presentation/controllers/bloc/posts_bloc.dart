import 'dart:async';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../features.dart';

part 'posts_event.dart';
part 'posts_state.dart';
part 'posts_bloc.freezed.dart';

class PostsBloc extends Bloc<PostsEvent, PostsState> {
  final PostsRepository repository;
  late BaseResponse<List<Post>>? resPosts;
  List<Post> posts = [];
  bool hasReachedEnd = false;
  bool isLoading = false;
  PostRequest postsRequest =
      const PostRequest(page: 1, perPage: 2, postRequestWith: 'creator');

  PostsBloc({required this.repository}) : super(const _Initial()) {
    on<PostsEvent>((event, emit) async {
      await event.maybeWhen(
        orElse: () {},
        getData: () => _getData(event, emit),
        nextPage: () => _nextPage(event, emit),
      );
    });
  }

  void init() {
    add(const PostsEvent.getData());
  }

  FutureOr<void> _nextPage(event, emit) async {
    try {
      isLoading = true;
      emit(PostsState.success(posts, isLoading: true));
      if (resPosts != null && resPosts?.links?.next == null) {
        hasReachedEnd = true;
        emit(PostsState.success(posts, isLoading: false, hasReachedEnd: true));
        return;
      }

      postsRequest = postsRequest.copyWith(page: (postsRequest.page ?? 1) + 1);
      resPosts = await repository.getPosts(postsRequest);
      posts.addAll(resPosts?.data ?? []);
      emit(PostsState.success(posts, isLoading: false));
    } on ServerFailure catch (e) {
      _emitFailed(emit, e.message);
    } catch (e) {
      _emitFailed(emit, e.toString());
    } finally {
      isLoading = false;
    }
  }

  FutureOr<void> _getData(event, emit) async {
    try {
      emit(const PostsState.loading());
      resPosts = await repository.getPosts(postsRequest);
      posts.addAll(resPosts?.data ?? []);
      emit(PostsState.success(posts));
    } on ServerFailure catch (e) {
      _emitFailed(emit, e.message);
    } catch (e) {
      _emitFailed(emit, e.toString());
    }
  }

  void _emitFailed(Emitter<PostsState> emit, String message) {
    emit(PostsState.failed(message, posts: posts));
  }
}
