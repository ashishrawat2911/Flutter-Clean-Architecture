import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';

import 'di.config.dart';

@InjectableInit()
Future<void> configureDependencies() => $initGetIt(_getIt);

final GetIt _getIt = GetIt.I;

T inject<T extends Object>({
  String? instanceName,
  dynamic param1,
  dynamic param2,
}) =>
    _getIt<T>(instanceName: instanceName, param1: param1, param2: param2);
