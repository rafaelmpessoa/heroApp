import 'package:dartz/dartz.dart';
import 'package:hero_app/common/domain/error/failures.dart';

abstract class CommonRepository {
  Future<Either<Failures, String>> getCurrentToken();
}
