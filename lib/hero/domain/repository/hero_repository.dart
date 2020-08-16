import 'package:dartz/dartz.dart';
import 'package:hero_app/common/domain/error/failures.dart';
import 'package:hero_app/hero/domain/entities/hero.dart';

abstract class HeroRepository {
  Future<Either<Failures, List<Hero>>> getHeros({String name});
  Future<Either<Failures, Hero>> getHero(String id);
}
