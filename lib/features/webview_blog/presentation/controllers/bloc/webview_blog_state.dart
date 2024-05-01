part of 'webview_blog_bloc.dart';

@freezed
class WebviewBlogState with _$WebviewBlogState {
  const factory WebviewBlogState.initial() = _Initial;
  const factory WebviewBlogState.loading() = _Loading;
  const factory WebviewBlogState.success() = _Success;
  const factory WebviewBlogState.failed(String message) = _Error;
}
