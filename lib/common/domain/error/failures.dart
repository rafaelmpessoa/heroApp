import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'failures.freezed.dart';

@freezed
abstract class Failures<T> with _$Failures<T> {
  const factory Failures.unexpectedValue({@required T failedValue}) =
      UnexpectedValue<T>;
  const factory Failures.serverFailure(String error) = ServerFailure<T>;
}
