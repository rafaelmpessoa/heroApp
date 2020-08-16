import 'dart:convert';

import 'package:flutter/foundation.dart';
import 'package:hero_app/common/data/base_remote_data.dart';
import 'package:hero_app/common/domain/error/failures.dart';
import 'package:hero_app/hero/domain/entities/hero.dart';
import 'package:http/http.dart' as http;
import 'package:injectable/injectable.dart';

abstract class HeroRemoteDataSource {
  Future<Hero> fetchHero({@required String id, @required String token});
  Future<List<Hero>> fetchHeroes({String name, @required String token});
}

@LazySingleton(as: HeroRemoteDataSource)
class HeroRemoteDataSourceImpl extends BaseRemoteData
    implements HeroRemoteDataSource {
  final _client = http.Client();

  @override
  Future<Hero> fetchHero({@required String id, @required String token}) async {
    final response = await _client.get(
      BaseRemoteData.apiUrl + token + "/$id",
      headers: {
        'Content-Type': 'application/json',
      },
    );

    if (response.statusCode == 200) {
      return Hero.fromJson(json.decode(response.body));
    } else {
      throw ServerFailure(response.body);
    }
  }

  @override
  Future<List<Hero>> fetchHeroes(
      {@required String name, @required String token}) async {
    final response = await _client.get(
      BaseRemoteData.apiUrl + token + "/search/$name",
      headers: {
        'Content-Type': 'application/json',
      },
    );

    if (response.statusCode == 200) {
      final parsedResponse = json.decode(response.body);
      if (parsedResponse['response'] == "success") {
        final List results = parsedResponse['results'];

        return results == null ? [] : compute(parsedInIsolate, results);
      } else {
        throw Failures.unexpectedValue(failedValue: parsedResponse['error']);
      }
    } else {
      throw ServerFailure(response.body);
    }
  }
}

// Process JSON in Isolate
List<Hero> parsedInIsolate(List parsedHeroes) {
  return parsedHeroes.map<Hero>((e) => Hero.fromJson(e)).toList();
}
