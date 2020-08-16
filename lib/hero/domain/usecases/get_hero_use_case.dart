import 'package:dartz/dartz.dart';
import 'package:hero_app/common/domain/error/failures.dart';
import 'package:hero_app/hero/domain/entities/hero.dart';

abstract class GetHeroUseCase {
  Future<Either<Failures, Hero>> call(String id);
}
