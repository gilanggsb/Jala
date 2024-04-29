import 'dart:async';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:jalatest/features/jala_media.dart';

part 'jala_media_event.dart';
part 'jala_media_state.dart';
part 'jala_media_bloc.freezed.dart';

class JalaMediaBloc extends Bloc<JalaMediaEvent, JalaMediaState> {
  JalaMediaRepository repository;
  JalaMediaBloc({required this.repository}) : super(const _Initial()) {
    on<JalaMediaEvent>(_getData);
  }

  FutureOr<void> _getData(event, emit) async {
    try {} on ServerFailure catch (e) {
      _emitFailed(emit, e.message);
    } catch (e) {
      _emitFailed(emit, e.toString());
    }
  }

  void _emitFailed(Emitter<JalaMediaState> emit, String message) {
    emit(JalaMediaState.failed(message));
  }
}
