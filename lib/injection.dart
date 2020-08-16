import 'package:get_it/get_it.dart';
import 'package:hero_app/injection.config.dart';
import 'package:injectable/injectable.dart';

final getIt = GetIt.instance;

@InjectableInit()
void configureDependencies({String env = Environment.dev}) =>
    $initGetIt(getIt, environment: env);
