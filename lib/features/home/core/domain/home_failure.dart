import 'package:freezed_annotation/freezed_annotation.dart';

part 'home_failure.freezed.dart';

@freezed
class HomeFailure with _$HomeFailure {
  const factory HomeFailure.storage() = _Storage;
  const factory HomeFailure.server({int? errorCode, String? message}) = _Server;
  const factory HomeFailure.noConnection() = _NoConnection;
}
