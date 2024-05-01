import 'dart:async';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../features.dart';

part 'diseases_event.dart';
part 'diseases_state.dart';
part 'diseases_bloc.freezed.dart';

class DiseasesBloc extends Bloc<DiseasesEvent, DiseasesState> {
  final DiseasesRepository repository;
  late BaseResponse<List<Disease>>? resDiseases;
  List<Disease> diseases = [];
  bool hasReachedEnd = false;
  DiseasesRequest diseasesRequest = const DiseasesRequest(page: 1, perPage: 2);

  DiseasesBloc({required this.repository}) : super(const _Initial()) {
    on<DiseasesEvent>(
      (event, emit) async {
        await event.maybeWhen(
          orElse: () {
            return null;
          },
          getData: () => _getData(event, emit),
          nextPage: () => _nextPage(event, emit),
        );
      },
    );
  }

  void init() {
    add(const DiseasesEvent.getData());
  }

  FutureOr<void> _nextPage(event, emit) async {
    try {
      emit(DiseasesState.success(diseases, isLoading: true));
      if (resDiseases != null && resDiseases?.links?.next == null) {
        hasReachedEnd = true;
        emit(DiseasesState.success(diseases,
            isLoading: false, hasReachedEnd: true));
        return;
      }

      diseasesRequest =
          diseasesRequest.copyWith(page: (diseasesRequest.page ?? 1) + 1);
      resDiseases = await repository.getDiseases(diseasesRequest);
      diseases.addAll(resDiseases?.data ?? []);
      emit(DiseasesState.success(diseases, isLoading: false));
    } on ServerFailure catch (e) {
      _emitFailed(emit, e.message);
    } catch (e) {
      _emitFailed(emit, e.toString());
    }
  }

  FutureOr<void> _getData(event, emit) async {
    try {
      emit(const DiseasesState.loading());
      resDiseases = await repository.getDiseases(diseasesRequest);
      diseases.addAll(resDiseases?.data ?? []);
      emit(DiseasesState.success(diseases));
    } on ServerFailure catch (e) {
      _emitFailed(emit, e.message);
    } catch (e) {
      _emitFailed(emit, e.toString());
    }
  }

  void _emitFailed(Emitter<DiseasesState> emit, String message) {
    emit(DiseasesState.failed(message));
  }
}
