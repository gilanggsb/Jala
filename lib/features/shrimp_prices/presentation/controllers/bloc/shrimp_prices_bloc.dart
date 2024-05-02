import 'dart:async';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:jalatest/features/features.dart';

part 'shrimp_prices_event.dart';
part 'shrimp_prices_state.dart';
part 'shrimp_prices_bloc.freezed.dart';

class ShrimpPricesBloc extends Bloc<ShrimpPricesEvent, ShrimpPricesState> {
  ShrimpPricesRepository repository;
  late BaseResponse<List<ShrimpPrice>>? resShrimpPrices;
  List<ShrimpPrice> shrimpPrices = [];
  bool hasReachedEnd = false;
  bool isLoading = false;
  ShrimpPricesRequest shrimpPricesRequest = const ShrimpPricesRequest(
      page: 1, perPage: 2, shrimpWith: ['creator', 'region']);

  ShrimpPricesBloc({required this.repository}) : super(const _Initial()) {
    on<ShrimpPricesEvent>(
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
    add(const ShrimpPricesEvent.getData());
  }

  FutureOr<void> _nextPage(event, emit) async {
    try {
      isLoading = true;
      emit(ShrimpPricesState.success(shrimpPrices, isLoading: true));
      if (resShrimpPrices != null && resShrimpPrices?.links?.next == null) {
        hasReachedEnd = true;
        emit(ShrimpPricesState.success(shrimpPrices,
            isLoading: false, hasReachedEnd: true));
        return;
      }

      shrimpPricesRequest = shrimpPricesRequest.copyWith(
          page: (shrimpPricesRequest.page ?? 1) + 1);
      resShrimpPrices = await repository.getShrimpPrices(shrimpPricesRequest);
      shrimpPrices.addAll(resShrimpPrices?.data ?? []);
      emit(ShrimpPricesState.success(shrimpPrices, isLoading: false));
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
      emit(const ShrimpPricesState.loading());
      resShrimpPrices = await repository.getShrimpPrices(shrimpPricesRequest);
      shrimpPrices.addAll(resShrimpPrices?.data ?? []);
      emit(ShrimpPricesState.success(shrimpPrices));
    } on ServerFailure catch (e) {
      _emitFailed(emit, e.message);
    } catch (e) {
      _emitFailed(emit, e.toString());
    }
  }

  void _emitFailed(Emitter<ShrimpPricesState> emit, String message) {
    emit(ShrimpPricesState.failed(message, shrimpPrices: shrimpPrices));
  }
}
