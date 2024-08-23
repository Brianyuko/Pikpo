import 'package:get_it/get_it.dart';
import 'package:pikpo_app/data/datasources/remote_data_source.dart';
import 'package:pikpo_app/data/repository/repository_impl.dart';
import 'package:pikpo_app/presentation/blocs/bloc/role_bloc.dart';
import 'package:pikpo_core/domain/repository/repository.dart';
import 'package:pikpo_core/domain/usecases/get_roles.dart';
import 'package:http/http.dart' as http;

final locator = GetIt.instance;

void init() {
  // Bloc
  locator.registerFactory(() => RoleBloc(getRoles: locator()));

  // Use cases
  locator.registerLazySingleton(() => GetRoles(locator()));

  // Repository
  locator.registerLazySingleton<Repository>(
    () => RepositoryImpl(
      remoteDataSource: locator(),
    ),
  );

  // Data sources
  locator.registerLazySingleton<RemoteDataSource>(
    () => RemoteDataSourceImpl(
      client: locator(),
    ),
  );

  // External
  locator.registerLazySingleton(() => http.Client());
}
