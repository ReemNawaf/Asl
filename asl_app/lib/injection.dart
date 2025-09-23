import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';
import 'package:asl/injection.config.dart';

final GetIt getIt = GetIt.instance;
@injectableInit
void configureinjection(String env) => getIt.init(environment: env);
