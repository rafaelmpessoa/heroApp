import 'package:hero_app/common/domain/error/failures.dart';
import 'package:hero_app/strings.dart';

class Converter {
  static String failureInString(Failures failures) => failures.map(
      unexpectedValue: (_) => Strings.unexpectedError,
      serverFailure: (_) => Strings.serverError);
}
