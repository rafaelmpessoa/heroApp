import 'package:dartz/dartz.dart';
import 'package:hero_app/common/domain/error/failures.dart';
import 'package:hero_app/common/domain/repository/common_repository.dart';
import 'package:injectable/injectable.dart';

abstract class CommonLocalDataSource {
  Future<String> getToken();
}

@LazySingleton(as: CommonLocalDataSource)
class CommonLocalDataSourceImpl implements CommonLocalDataSource {
  @override
  Future<String> getToken() async {
    // final prefs = await SharedPreferences.getInstance();

    return "3602759683090900";
  }
}
