import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:pikpo_core/domain/entities/role_entity.dart';
import 'package:pikpo_core/domain/usecases/get_roles.dart';
import 'package:pikpo_core/utils/core_library.dart';

part 'role_event.dart';
part 'role_state.dart';

class RoleBloc extends Bloc<RoleEvent, RoleState> {
  final GetRoles getRoles;
  RoleBloc({
    required this.getRoles,
  }) : super(RoleInitial()) {
    on<FetchRoles>((event, emit) async {
      emit(RoleLoading());
      final result = await getRoles.execute();
      result.fold(
        (failure) => emit(RoleError(failureMessage: failure.message)),
        (roles) => emit(RoleLoaded(roles: roles)),
      );
    });
  }
}
