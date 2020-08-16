import 'package:dartz/dartz.dart';
import 'package:hero_app/common/domain/error/failures.dart';
import 'package:hero_app/hero/domain/entities/hero.dart';
import 'package:hero_app/hero/domain/repository/hero_repository.dart';
import 'package:injectable/injectable.dart';

import 'get_hero_use_case.dart';

@LazySingleton(as: GetHeroUseCase)
class GetHeroUseCaseImpl extends GetHeroUseCase {
  final HeroRepository heroRepository;

  GetHeroUseCaseImpl(this.heroRepository);

  @override
  Future<Either<Failures, Hero>> call(String id) => heroRepository.getHero(id);
}
