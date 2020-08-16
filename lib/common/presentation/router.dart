import 'package:auto_route/auto_route_annotations.dart';
import 'package:hero_app/common/presentation/home_page.dart';
import 'package:hero_app/hero/presentation/pages/hero_detail_page.dart';

@MaterialAutoRouter(routes: [
  MaterialRoute(page: HomePage, initial: true),
  MaterialRoute(page: HeroDetailPage),
])
class $Router {}
