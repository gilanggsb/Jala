import 'dart:async';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:jalatest/features/features.dart';

part 'detail_shrimp_prices_event.dart';
part 'detail_shrimp_prices_state.dart';
part 'detail_shrimp_prices_bloc.freezed.dart';

class DetailShrimpPricesBloc
    extends Bloc<DetailShrimpPricesEvent, DetailShrimpPricesState> {
  DetailShrimpPricesRepository repository;
  late DetailShrimpPricesParams detailShrimpPricesParams;
  ShrimpPrice? shrimpPrice;
  DetailShrimpPricesBloc({required this.repository}) : super(const _Initial()) {
    on<DetailShrimpPricesEvent>((event, emit) async {
      await event.maybeWhen(
        orElse: () {},
        getData: () => _getData(event, emit),
      );
    });
  }

  void init() {}

  FutureOr<void> _getData(event, emit) async {
    try {
      emit(const DetailShrimpPricesState.loading());
      final BaseResponse<ShrimpPrice> response =
          await repository.getDetail(detailShrimpPricesParams);
      shrimpPrice = response.data;
      emit(DetailShrimpPricesState.success(shrimpPrice));
    } on ServerFailure catch (e) {
      _emitFailed(emit, e.message);
    } catch (e) {
      _emitFailed(emit, e.toString());
    }
  }

  void _emitFailed(Emitter<DetailShrimpPricesState> emit, String message) {
    emit(DetailShrimpPricesState.failed(message));
  }
}
