import 'package:freezed_annotation/freezed_annotation.dart';

part 'home_response.freezed.dart';

@freezed
class HomeResponse with _$HomeResponse {
  const factory HomeResponse.withData(List<dynamic> data) = _WithData;
  const factory HomeResponse.noConnection() = _NoConnection;
  const factory HomeResponse.failure({
    int? errorCode,
    String? message,
  }) = _Failure;

  const HomeResponse._();
}
