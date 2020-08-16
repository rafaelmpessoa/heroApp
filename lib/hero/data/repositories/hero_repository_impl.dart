import 'package:hero_app/common/data/data_source/common_local_data_source.dart';
import 'package:hero_app/hero/data/data_sources/hero_remote_data_source.dart';
import 'package:hero_app/hero/domain/entities/hero.dart';
import 'package:hero_app/common/domain/error/failures.dart';
import 'package:dartz/dartz.dart';
import 'package:hero_app/hero/domain/repository/hero_repository.dart';
import 'package:injectable/injectable.dart';

@LazySingleton(as: HeroRepository)
class HeroRepositoryImpl implements HeroRepository {
  final CommonLocalDataSource commonLocalDataSource;
  final HeroRemoteDataSource heroRemoteDataSource;

  HeroRepositoryImpl(this.commonLocalDataSource, this.heroRemoteDataSource);

  @override
  Future<Either<Failures, Hero>> getHero(String id) async {
    try {
      final token = await commonLocalDataSource.getToken();
      final result = await heroRemoteDataSource.fetchHero(id: id, token: token);
      return right(result);
    } on ServerFailure catch (e) {
      return left(e);
    } catch (e) {
      return left(Failures.unexpectedValue(failedValue: e));
    }
  }

  @override
  Future<Either<Failures, List<Hero>>> getHeros({String name}) async {
    try {
      final token = await commonLocalDataSource.getToken();
      final result =
          await heroRemoteDataSource.fetchHeroes(name: name, token: token);
      return right(result);
    } on ServerFailure catch (e) {
      return left(e);
    } catch (e) {
      return left(Failures.unexpectedValue(failedValue: e));
    }
  }
}
