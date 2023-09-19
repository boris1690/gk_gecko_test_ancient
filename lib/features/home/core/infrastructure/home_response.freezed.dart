// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'home_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$HomeResponse {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<dynamic> data) withData,
    required TResult Function() noConnection,
    required TResult Function(int? errorCode, String? message) failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<dynamic> data)? withData,
    TResult? Function()? noConnection,
    TResult? Function(int? errorCode, String? message)? failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<dynamic> data)? withData,
    TResult Function()? noConnection,
    TResult Function(int? errorCode, String? message)? failure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_WithData value) withData,
    required TResult Function(_NoConnection value) noConnection,
    required TResult Function(_Failure value) failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_WithData value)? withData,
    TResult? Function(_NoConnection value)? noConnection,
    TResult? Function(_Failure value)? failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_WithData value)? withData,
    TResult Function(_NoConnection value)? noConnection,
    TResult Function(_Failure value)? failure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HomeResponseCopyWith<$Res> {
  factory $HomeResponseCopyWith(
          HomeResponse value, $Res Function(HomeResponse) then) =
      _$HomeResponseCopyWithImpl<$Res, HomeResponse>;
}

/// @nodoc
class _$HomeResponseCopyWithImpl<$Res, $Val extends HomeResponse>
    implements $HomeResponseCopyWith<$Res> {
  _$HomeResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_WithDataCopyWith<$Res> {
  factory _$$_WithDataCopyWith(
          _$_WithData value, $Res Function(_$_WithData) then) =
      __$$_WithDataCopyWithImpl<$Res>;
  @useResult
  $Res call({List<dynamic> data});
}

/// @nodoc
class __$$_WithDataCopyWithImpl<$Res>
    extends _$HomeResponseCopyWithImpl<$Res, _$_WithData>
    implements _$$_WithDataCopyWith<$Res> {
  __$$_WithDataCopyWithImpl(
      _$_WithData _value, $Res Function(_$_WithData) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
  }) {
    return _then(_$_WithData(
      null == data
          ? _value._data
          : data // ignore: cast_nullable_to_non_nullable
              as List<dynamic>,
    ));
  }
}

/// @nodoc

class _$_WithData extends _WithData {
  const _$_WithData(final List<dynamic> data)
      : _data = data,
        super._();

  final List<dynamic> _data;
  @override
  List<dynamic> get data {
    if (_data is EqualUnmodifiableListView) return _data;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_data);
  }

  @override
  String toString() {
    return 'HomeResponse.withData(data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_WithData &&
            const DeepCollectionEquality().equals(other._data, _data));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_data));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_WithDataCopyWith<_$_WithData> get copyWith =>
      __$$_WithDataCopyWithImpl<_$_WithData>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<dynamic> data) withData,
    required TResult Function() noConnection,
    required TResult Function(int? errorCode, String? message) failure,
  }) {
    return withData(data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<dynamic> data)? withData,
    TResult? Function()? noConnection,
    TResult? Function(int? errorCode, String? message)? failure,
  }) {
    return withData?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<dynamic> data)? withData,
    TResult Function()? noConnection,
    TResult Function(int? errorCode, String? message)? failure,
    required TResult orElse(),
  }) {
    if (withData != null) {
      return withData(data);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_WithData value) withData,
    required TResult Function(_NoConnection value) noConnection,
    required TResult Function(_Failure value) failure,
  }) {
    return withData(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_WithData value)? withData,
    TResult? Function(_NoConnection value)? noConnection,
    TResult? Function(_Failure value)? failure,
  }) {
    return withData?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_WithData value)? withData,
    TResult Function(_NoConnection value)? noConnection,
    TResult Function(_Failure value)? failure,
    required TResult orElse(),
  }) {
    if (withData != null) {
      return withData(this);
    }
    return orElse();
  }
}

abstract class _WithData extends HomeResponse {
  const factory _WithData(final List<dynamic> data) = _$_WithData;
  const _WithData._() : super._();

  List<dynamic> get data;
  @JsonKey(ignore: true)
  _$$_WithDataCopyWith<_$_WithData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_NoConnectionCopyWith<$Res> {
  factory _$$_NoConnectionCopyWith(
          _$_NoConnection value, $Res Function(_$_NoConnection) then) =
      __$$_NoConnectionCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_NoConnectionCopyWithImpl<$Res>
    extends _$HomeResponseCopyWithImpl<$Res, _$_NoConnection>
    implements _$$_NoConnectionCopyWith<$Res> {
  __$$_NoConnectionCopyWithImpl(
      _$_NoConnection _value, $Res Function(_$_NoConnection) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_NoConnection extends _NoConnection {
  const _$_NoConnection() : super._();

  @override
  String toString() {
    return 'HomeResponse.noConnection()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_NoConnection);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<dynamic> data) withData,
    required TResult Function() noConnection,
    required TResult Function(int? errorCode, String? message) failure,
  }) {
    return noConnection();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<dynamic> data)? withData,
    TResult? Function()? noConnection,
    TResult? Function(int? errorCode, String? message)? failure,
  }) {
    return noConnection?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<dynamic> data)? withData,
    TResult Function()? noConnection,
    TResult Function(int? errorCode, String? message)? failure,
    required TResult orElse(),
  }) {
    if (noConnection != null) {
      return noConnection();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_WithData value) withData,
    required TResult Function(_NoConnection value) noConnection,
    required TResult Function(_Failure value) failure,
  }) {
    return noConnection(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_WithData value)? withData,
    TResult? Function(_NoConnection value)? noConnection,
    TResult? Function(_Failure value)? failure,
  }) {
    return noConnection?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_WithData value)? withData,
    TResult Function(_NoConnection value)? noConnection,
    TResult Function(_Failure value)? failure,
    required TResult orElse(),
  }) {
    if (noConnection != null) {
      return noConnection(this);
    }
    return orElse();
  }
}

abstract class _NoConnection extends HomeResponse {
  const factory _NoConnection() = _$_NoConnection;
  const _NoConnection._() : super._();
}

/// @nodoc
abstract class _$$_FailureCopyWith<$Res> {
  factory _$$_FailureCopyWith(
          _$_Failure value, $Res Function(_$_Failure) then) =
      __$$_FailureCopyWithImpl<$Res>;
  @useResult
  $Res call({int? errorCode, String? message});
}

/// @nodoc
class __$$_FailureCopyWithImpl<$Res>
    extends _$HomeResponseCopyWithImpl<$Res, _$_Failure>
    implements _$$_FailureCopyWith<$Res> {
  __$$_FailureCopyWithImpl(_$_Failure _value, $Res Function(_$_Failure) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? errorCode = freezed,
    Object? message = freezed,
  }) {
    return _then(_$_Failure(
      errorCode: freezed == errorCode
          ? _value.errorCode
          : errorCode // ignore: cast_nullable_to_non_nullable
              as int?,
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$_Failure extends _Failure {
  const _$_Failure({this.errorCode, this.message}) : super._();

  @override
  final int? errorCode;
  @override
  final String? message;

  @override
  String toString() {
    return 'HomeResponse.failure(errorCode: $errorCode, message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Failure &&
            (identical(other.errorCode, errorCode) ||
                other.errorCode == errorCode) &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, errorCode, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_FailureCopyWith<_$_Failure> get copyWith =>
      __$$_FailureCopyWithImpl<_$_Failure>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<dynamic> data) withData,
    required TResult Function() noConnection,
    required TResult Function(int? errorCode, String? message) failure,
  }) {
    return failure(errorCode, message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<dynamic> data)? withData,
    TResult? Function()? noConnection,
    TResult? Function(int? errorCode, String? message)? failure,
  }) {
    return failure?.call(errorCode, message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<dynamic> data)? withData,
    TResult Function()? noConnection,
    TResult Function(int? errorCode, String? message)? failure,
    required TResult orElse(),
  }) {
    if (failure != null) {
      return failure(errorCode, message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_WithData value) withData,
    required TResult Function(_NoConnection value) noConnection,
    required TResult Function(_Failure value) failure,
  }) {
    return failure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_WithData value)? withData,
    TResult? Function(_NoConnection value)? noConnection,
    TResult? Function(_Failure value)? failure,
  }) {
    return failure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_WithData value)? withData,
    TResult Function(_NoConnection value)? noConnection,
    TResult Function(_Failure value)? failure,
    required TResult orElse(),
  }) {
    if (failure != null) {
      return failure(this);
    }
    return orElse();
  }
}

abstract class _Failure extends HomeResponse {
  const factory _Failure({final int? errorCode, final String? message}) =
      _$_Failure;
  const _Failure._() : super._();

  int? get errorCode;
  String? get message;
  @JsonKey(ignore: true)
  _$$_FailureCopyWith<_$_Failure> get copyWith =>
      throw _privateConstructorUsedError;
}
