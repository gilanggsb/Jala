import 'dart:async';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../presentation.dart';

part '[FTName % snakecase&replace(' ', '')]_event.dart';
part '[FTName % snakecase&replace(' ', '')]_state.dart';
part '[FTName % snakecase&replace(' ', '')]_bloc.freezed.dart';

class <FTName | capitalize&capitalcase&replace(' ', '')>Bloc extends Bloc<<FTName | capitalize&capitalcase&replace(' ', '')>Event, <FTName | capitalize&capitalcase&replace(' ', '')>State> {
  factory <FTName | capitalize&capitalcase&replace(' ', '')>Bloc.create() => <FTName | capitalize&capitalcase&replace(' ', '')>Bloc()..initialization();
  void initialization() {
    
  }
  <FTName | capitalize&capitalcase&replace(' ', '')>Bloc() : super(const _Initial()) {
    on<<FTName | capitalize&capitalcase&replace(' ', '')>Event>(_getData);
  }
  static BlocProvider<<FTName | capitalize&capitalcase&replace(' ', '')>Bloc> initProvider() => BlocProvider<<FTName | capitalize&capitalcase&replace(' ', '')>Bloc>(
        create: (context) => <FTName | capitalize&capitalcase&replace(' ', '')>Bloc(),
      );
  
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
