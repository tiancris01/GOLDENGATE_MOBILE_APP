import 'package:freezed_annotation/freezed_annotation.dart';
part 'custom_error.freezed.dart';
part 'custom_error.g.dart';

@freezed
abstract class CustomError with _$CustomError {
  const factory CustomError({@Default('') String code, @Default('') String message}) =
      _CustomError;

  factory CustomError.fromJson(Map<String, dynamic> json) => _$CustomErrorFromJson(json);
}
