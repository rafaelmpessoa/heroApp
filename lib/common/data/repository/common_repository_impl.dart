import 'package:dartz/dartz.dart';
import 'package:hero_app/common/data/data_source/common_local_data_source.dart';
import 'package:hero_app/common/domain/error/failures.dart';
import 'package:hero_app/common/domain/repository/common_repository.dart';
import 'package:injectable/injectable.dart';

@LazySingleton(as: CommonRepository)
class CommonRepositoryImpl implements CommonRepository {
  final CommonLocalDataSource commonLocalDataSource;

  CommonRepositoryImpl(this.commonLocalDataSource);

  @override
  Future<Either<Failures, String>> getCurrentToken() async {
    return right(await commonLocalDataSource.getToken());
  }
}
