import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';

import 'home_response.dart';

abstract class IAuthRemoteService {
  Future<HomeResponse> billboard();
}

@LazySingleton(as: IAuthRemoteService)
class AuthRemoteService implements IAuthRemoteService {
  AuthRemoteService(this._dio);

  final Dio _dio;

  @override
  Future<HomeResponse> billboard() async {
    final response = await _dio.get<List>(
      'billboard',
    );

    if (response.statusCode == 200) {
      final data = response.data;

      // ignore: unnecessary_null_comparison
      if (data != null) {
        return HomeResponse.withData(data);
      } else {
        return const HomeResponse.failure(
          errorCode: 404,
          message: 'Credential token not found',
        );
      }
    } else {
      /* final message = response.data?['message'] as String?; */
      return HomeResponse.failure(
        errorCode: response.statusCode,
        message: "error",
      );
    }
  }
}
