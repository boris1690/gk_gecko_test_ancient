import 'package:dartz/dartz.dart';

import 'home_failure.dart';

abstract class IHomeRepository {
  Future<Either<HomeFailure, List>> billboard();
}
