part of 'webview_blog_bloc.dart';

@freezed
class WebviewBlogEvent with _$WebviewBlogEvent {
  const factory WebviewBlogEvent.started() = _Started;
  const factory WebviewBlogEvent.getData() = _GetData;
}
