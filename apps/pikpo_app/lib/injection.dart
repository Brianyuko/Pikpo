import 'package:get_it/get_it.dart';
import 'package:pikpo_app/data/datasources/remote_data_source.dart';
import 'package:pikpo_app/data/repository/repository_impl.dart';
import 'package:pikpo_app/presentation/blocs/event/event_bloc.dart';
import 'package:pikpo_app/presentation/blocs/role/role_bloc.dart';
import 'package:pikpo_app/presentation/blocs/user/user_bloc.dart';
import 'package:pikpo_core/domain/repository/repository.dart';
import 'package:pikpo_core/domain/usecases/get_events_by_id_user.dart';
import 'package:pikpo_core/domain/usecases/get_roles.dart';
import 'package:pikpo_core/domain/usecases/get_user_by_id_record.dart';
import 'package:http/http.dart' as http;

final locator = GetIt.instance;

void init() {
  // Bloc
  locator.registerFactory(() => RoleBloc(getRoles: locator()));
  locator.registerFactory(() => UserBloc(getUserByIdRecord: locator()));
  locator.registerFactory(() => EventBloc(getEventsByIdUser: locator()));

  // Use cases
  locator.registerLazySingleton(() => GetRoles(locator()));
  locator.registerLazySingleton(() => GetUserByIdRecord(locator()));
  locator.registerLazySingleton(() => GetEventsByIdUser(locator()));

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
