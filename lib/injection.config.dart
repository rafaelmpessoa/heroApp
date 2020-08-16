// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';

import 'common/data/data_source/common_local_data_source.dart';
import 'common/domain/repository/common_repository.dart';
import 'common/data/repository/common_repository_impl.dart';
import 'hero/domain/usecases/get_hero_use_case.dart';
import 'hero/domain/usecases/get_hero_use_case_impl.dart';
import 'hero/domain/usecases/get_heroes_use_case.dart';
import 'hero/domain/usecases/get_heroes_use_case_impl.dart';
import 'hero/presentation/widgets/list/bloc/hero_list_bloc.dart';
import 'hero/data/data_sources/hero_remote_data_source.dart';
import 'hero/domain/repository/hero_repository.dart';
import 'hero/data/repositories/hero_repository_impl.dart';

/// adds generated dependencies
/// to the provided [GetIt] instance

GetIt $initGetIt(
  GetIt get, {
  String environment,
  EnvironmentFilter environmentFilter,
}) {
  final gh = GetItHelper(get, environment, environmentFilter);
  gh.lazySingleton<CommonLocalDataSource>(() => CommonLocalDataSourceImpl());
  gh.lazySingleton<CommonRepository>(
      () => CommonRepositoryImpl(get<CommonLocalDataSource>()));
  gh.lazySingleton<HeroRemoteDataSource>(() => HeroRemoteDataSourceImpl());
  gh.lazySingleton<HeroRepository>(() => HeroRepositoryImpl(
      get<CommonLocalDataSource>(), get<HeroRemoteDataSource>()));
  gh.lazySingleton<GetHeroUseCase>(
      () => GetHeroUseCaseImpl(get<HeroRepository>()));
  gh.lazySingleton<GetHeroesUseCase>(
      () => GetHeroesUseCaseImpl(get<HeroRepository>()));
  gh.factory<HeroListBloc>(() => HeroListBloc(get<GetHeroesUseCase>()));
  return get;
}
