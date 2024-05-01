part of 'posts_bloc.dart';

@freezed
class PostsEvent with _$PostsEvent {
  const factory PostsEvent.started() = _Started;
  const factory PostsEvent.getData() = _GetData;
  const factory PostsEvent.nextPage() = _NextPage;
  const factory PostsEvent.prevPage() = _PrevPage;
}
