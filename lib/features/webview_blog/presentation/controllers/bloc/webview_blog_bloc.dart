import 'dart:async';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../presentation.dart';

part 'webview_blog_event.dart';
part 'webview_blog_state.dart';
part 'webview_blog_bloc.freezed.dart';

class WebviewBlogBloc extends Bloc<WebviewBlogEvent, WebviewBlogState> {
  factory WebviewBlogBloc.create() => WebviewBlogBloc()..initialization();
  void initialization() {}
  WebviewBlogBloc() : super(const _Initial()) {
    on<WebviewBlogEvent>(_getData);
  }
  static BlocProvider<WebviewBlogBloc> initProvider() =>
      BlocProvider<WebviewBlogBloc>(
        create: (context) => WebviewBlogBloc(),
      );

  FutureOr<void> _getData(event, emit) async {
    try {} on ServerFailure catch (e) {
      _emitFailed(emit, e.message);
    } catch (e) {
      _emitFailed(emit, e.toString());
    }
  }

  void _emitFailed(Emitter<WebviewBlogState> emit, String message) {
    emit(WebviewBlogState.failed(message));
  }
}
