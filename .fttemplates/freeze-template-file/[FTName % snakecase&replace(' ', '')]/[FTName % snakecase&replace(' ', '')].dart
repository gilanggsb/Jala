import 'package:freezed_annotation/freezed_annotation.dart';
part '[FTName % snakecase&replace(' ', '')].freezed.dart';
part '[FTName % snakecase&replace(' ', '')].g.dart';

@freezed
class <FTName | capitalize&capitalcase&replace(' ', '')> with _$<FTName | capitalize&capitalcase&replace(' ', '')> {
  const factory <FTName | capitalize&capitalcase&replace(' ', '')>({<constructorParams>}) = _<FTName | capitalize&capitalcase&replace(' ', '')>;
  factory <FTName | capitalize&capitalcase&replace(' ', '')>.fromJson(Map<String, dynamic> json) =>
      _$<FTName | capitalize&capitalcase&replace(' ', '')>FromJson(json);
}
