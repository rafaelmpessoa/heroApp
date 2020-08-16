import 'package:dartz/dartz.dart';
import 'package:hero_app/common/domain/error/failures.dart';
import 'package:hero_app/hero/domain/entities/hero.dart';

abstract class GetHeroesUseCase {
  Future<Either<Failures, List<Hero>>> call(
      {String name, PowerStats powerStats});
}
