import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';

import '../../../core/infrastructure/exceptions.dart';
import '../domain/home_failure.dart';
import '../domain/i_home_repository.dart';
import 'home_remote_service.dart';

@LazySingleton(as: IHomeRepository)
class HomeRepository implements IHomeRepository {
  HomeRepository(
    this._remoteService,
  );

  final IAuthRemoteService _remoteService;

  @override
  Future<Either<HomeFailure, List>> billboard() async {
    try {
      final homeResponse = await _remoteService.billboard();

      return homeResponse.when(
        withData: (data) async {
          return right(data);
        },
        noConnection: () => left(const HomeFailure.noConnection()),
        failure: (errorCode, message) => left(HomeFailure.server(
          errorCode: errorCode,
          message: message,
        )),
      );
    } on RestApiException catch (e) {
      return left(HomeFailure.server(errorCode: e.errorCode));
    } on NoConnectionException {
      // Ignoring
    }

    return right([]);
  }
}
