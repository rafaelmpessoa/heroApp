// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'failures.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

class _$FailuresTearOff {
  const _$FailuresTearOff();

// ignore: unused_element
  UnexpectedValue<T> unexpectedValue<T>({@required T failedValue}) {
    return UnexpectedValue<T>(
      failedValue: failedValue,
    );
  }

// ignore: unused_element
  ServerFailure<T> serverFailure<T>(String error) {
    return ServerFailure<T>(
      error,
    );
  }
}

// ignore: unused_element
const $Failures = _$FailuresTearOff();

mixin _$Failures<T> {
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result unexpectedValue(T failedValue),
    @required Result serverFailure(String error),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result unexpectedValue(T failedValue),
    Result serverFailure(String error),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result unexpectedValue(UnexpectedValue<T> value),
    @required Result serverFailure(ServerFailure<T> value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result unexpectedValue(UnexpectedValue<T> value),
    Result serverFailure(ServerFailure<T> value),
    @required Result orElse(),
  });
}

abstract class $FailuresCopyWith<T, $Res> {
  factory $FailuresCopyWith(
          Failures<T> value, $Res Function(Failures<T>) then) =
      _$FailuresCopyWithImpl<T, $Res>;
}

class _$FailuresCopyWithImpl<T, $Res> implements $FailuresCopyWith<T, $Res> {
  _$FailuresCopyWithImpl(this._value, this._then);

  final Failures<T> _value;
  // ignore: unused_field
  final $Res Function(Failures<T>) _then;
}

abstract class $UnexpectedValueCopyWith<T, $Res> {
  factory $UnexpectedValueCopyWith(
          UnexpectedValue<T> value, $Res Function(UnexpectedValue<T>) then) =
      _$UnexpectedValueCopyWithImpl<T, $Res>;
  $Res call({T failedValue});
}

class _$UnexpectedValueCopyWithImpl<T, $Res>
    extends _$FailuresCopyWithImpl<T, $Res>
    implements $UnexpectedValueCopyWith<T, $Res> {
  _$UnexpectedValueCopyWithImpl(
      UnexpectedValue<T> _value, $Res Function(UnexpectedValue<T>) _then)
      : super(_value, (v) => _then(v as UnexpectedValue<T>));

  @override
  UnexpectedValue<T> get _value => super._value as UnexpectedValue<T>;

  @override
  $Res call({
    Object failedValue = freezed,
  }) {
    return _then(UnexpectedValue<T>(
      failedValue:
          failedValue == freezed ? _value.failedValue : failedValue as T,
    ));
  }
}

class _$UnexpectedValue<T>
    with DiagnosticableTreeMixin
    implements UnexpectedValue<T> {
  const _$UnexpectedValue({@required this.failedValue})
      : assert(failedValue != null);

  @override
  final T failedValue;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'Failures<$T>.unexpectedValue(failedValue: $failedValue)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'Failures<$T>.unexpectedValue'))
      ..add(DiagnosticsProperty('failedValue', failedValue));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is UnexpectedValue<T> &&
            (identical(other.failedValue, failedValue) ||
                const DeepCollectionEquality()
                    .equals(other.failedValue, failedValue)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(failedValue);

  @override
  $UnexpectedValueCopyWith<T, UnexpectedValue<T>> get copyWith =>
      _$UnexpectedValueCopyWithImpl<T, UnexpectedValue<T>>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result unexpectedValue(T failedValue),
    @required Result serverFailure(String error),
  }) {
    assert(unexpectedValue != null);
    assert(serverFailure != null);
    return unexpectedValue(failedValue);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result unexpectedValue(T failedValue),
    Result serverFailure(String error),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (unexpectedValue != null) {
      return unexpectedValue(failedValue);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result unexpectedValue(UnexpectedValue<T> value),
    @required Result serverFailure(ServerFailure<T> value),
  }) {
    assert(unexpectedValue != null);
    assert(serverFailure != null);
    return unexpectedValue(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result unexpectedValue(UnexpectedValue<T> value),
    Result serverFailure(ServerFailure<T> value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (unexpectedValue != null) {
      return unexpectedValue(this);
    }
    return orElse();
  }
}

abstract class UnexpectedValue<T> implements Failures<T> {
  const factory UnexpectedValue({@required T failedValue}) =
      _$UnexpectedValue<T>;

  T get failedValue;
  $UnexpectedValueCopyWith<T, UnexpectedValue<T>> get copyWith;
}

abstract class $ServerFailureCopyWith<T, $Res> {
  factory $ServerFailureCopyWith(
          ServerFailure<T> value, $Res Function(ServerFailure<T>) then) =
      _$ServerFailureCopyWithImpl<T, $Res>;
  $Res call({String error});
}

class _$ServerFailureCopyWithImpl<T, $Res>
    extends _$FailuresCopyWithImpl<T, $Res>
    implements $ServerFailureCopyWith<T, $Res> {
  _$ServerFailureCopyWithImpl(
      ServerFailure<T> _value, $Res Function(ServerFailure<T>) _then)
      : super(_value, (v) => _then(v as ServerFailure<T>));

  @override
  ServerFailure<T> get _value => super._value as ServerFailure<T>;

  @override
  $Res call({
    Object error = freezed,
  }) {
    return _then(ServerFailure<T>(
      error == freezed ? _value.error : error as String,
    ));
  }
}

class _$ServerFailure<T>
    with DiagnosticableTreeMixin
    implements ServerFailure<T> {
  const _$ServerFailure(this.error) : assert(error != null);

  @override
  final String error;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'Failures<$T>.serverFailure(error: $error)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'Failures<$T>.serverFailure'))
      ..add(DiagnosticsProperty('error', error));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is ServerFailure<T> &&
            (identical(other.error, error) ||
                const DeepCollectionEquality().equals(other.error, error)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(error);

  @override
  $ServerFailureCopyWith<T, ServerFailure<T>> get copyWith =>
      _$ServerFailureCopyWithImpl<T, ServerFailure<T>>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result unexpectedValue(T failedValue),
    @required Result serverFailure(String error),
  }) {
    assert(unexpectedValue != null);
    assert(serverFailure != null);
    return serverFailure(error);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result unexpectedValue(T failedValue),
    Result serverFailure(String error),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (serverFailure != null) {
      return serverFailure(error);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result unexpectedValue(UnexpectedValue<T> value),
    @required Result serverFailure(ServerFailure<T> value),
  }) {
    assert(unexpectedValue != null);
    assert(serverFailure != null);
    return serverFailure(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result unexpectedValue(UnexpectedValue<T> value),
    Result serverFailure(ServerFailure<T> value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (serverFailure != null) {
      return serverFailure(this);
    }
    return orElse();
  }
}

abstract class ServerFailure<T> implements Failures<T> {
  const factory ServerFailure(String error) = _$ServerFailure<T>;

  String get error;
  $ServerFailureCopyWith<T, ServerFailure<T>> get copyWith;
}
