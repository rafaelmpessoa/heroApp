// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// ignore_for_file: public_member_api_docs

import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

import '../../hero/domain/entities/hero.dart' as domain;
import '../../hero/presentation/pages/hero_detail_page.dart';
import 'home_page.dart';

class Routes {
  static const String homePage = '/';
  static const String heroDetailPage = '/hero-detail-page';
  static const all = <String>{
    homePage,
    heroDetailPage,
  };
}

class Router extends RouterBase {
  @override
  List<RouteDef> get routes => _routes;
  final _routes = <RouteDef>[
    RouteDef(Routes.homePage, page: HomePage),
    RouteDef(Routes.heroDetailPage, page: HeroDetailPage),
  ];
  @override
  Map<Type, AutoRouteFactory> get pagesMap => _pagesMap;
  final _pagesMap = <Type, AutoRouteFactory>{
    HomePage: (data) {
      return MaterialPageRoute<dynamic>(
        builder: (context) => HomePage(),
        settings: data,
      );
    },
    HeroDetailPage: (data) {
      final args = data.getArgs<HeroDetailPageArguments>(nullOk: false);
      return MaterialPageRoute<dynamic>(
        builder: (context) => HeroDetailPage(args.hero),
        settings: data,
      );
    },
  };
}

/// ************************************************************************
/// Arguments holder classes
/// *************************************************************************

/// HeroDetailPage arguments holder class
class HeroDetailPageArguments {
  final domain.Hero hero;
  HeroDetailPageArguments({@required this.hero});
}
