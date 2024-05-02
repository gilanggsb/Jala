import 'dart:async';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../presentation.dart';
import '../../../domain/domain.dart';

part '[FTName % snakecase&replace(' ', '')]_event.dart';
part '[FTName % snakecase&replace(' ', '')]_state.dart';
part '[FTName % snakecase&replace(' ', '')]_bloc.freezed.dart';

class <FTName | capitalize&capitalcase&replace(' ', '')>Bloc extends Bloc<<FTName | capitalize&capitalcase&replace(' ', '')>Event, <FTName | capitalize&capitalcase&replace(' ', '')>State> {
  <FTName | capitalize&capitalcase&replace(' ', '')>Repository repository;
  <FTName | capitalize&capitalcase&replace(' ', '')>Bloc({required this.repository}) : super(const _Initial()) {
    on<<FTName | capitalize&capitalcase&replace(' ', '')>Event>(_getData);
  }

  void initialization() {
    
  }
  
  FutureOr<void> _getData(event, emit) async {
    try{
    } on ServerFailure catch (e) {
      _emitFailed(emit, e.message);
    } catch (e) {
      _emitFailed(emit, e.toString());
    }
  }

  void _emitFailed(Emitter<<FTName | capitalize&capitalcase&replace(' ', '')>State> emit, String message) {
    emit(<FTName | capitalize&capitalcase&replace(' ', '')>State.failed(message));
  }
}
