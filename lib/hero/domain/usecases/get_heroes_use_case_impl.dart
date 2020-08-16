import 'package:dartz/dartz.dart';
import 'package:hero_app/common/domain/error/failures.dart';
import 'package:hero_app/hero/domain/entities/hero.dart';
import 'package:hero_app/hero/domain/repository/hero_repository.dart';
import 'package:hero_app/hero/domain/usecases/get_heroes_use_case.dart';
import 'package:injectable/injectable.dart';

@LazySingleton(as: GetHeroesUseCase)
class GetHeroesUseCaseImpl extends GetHeroesUseCase {
  final HeroRepository heroRepository;

  GetHeroesUseCaseImpl(this.heroRepository);

  @override
  // API não tem um método que retorna todos os herois, passar um nome é obrigatório na API
  Future<Either<Failures, List<Hero>>> call(
      {String name, PowerStats powerStats}) async {
    final result = await heroRepository.getHeros(name: name ?? 'a');

    return result.fold((l) => left(l), (r) {
      return right(
        powerStats == null
            ? r
            : r
                .where(
                  (hero) =>
                      hero.powerstats.combat >= powerStats.combat &&
                      hero.powerstats.durability >= powerStats.durability &&
                      hero.powerstats.intelligence >= powerStats.intelligence &&
                      hero.powerstats.power >= powerStats.power &&
                      hero.powerstats.speed >= powerStats.speed &&
                      hero.powerstats.strength >= powerStats.strength,
                )
                .toList(),
      );
    });
  }
}
