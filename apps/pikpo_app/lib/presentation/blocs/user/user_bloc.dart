import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:pikpo_core/domain/entities/user_entity.dart';
import 'package:pikpo_core/domain/usecases/get_user_by_id_record.dart';
import 'package:pikpo_core/utils/core_library.dart';

part 'user_event.dart';
part 'user_state.dart';

class UserBloc extends Bloc<UserEvent, UserState> {
  final GetUserByIdRecord getUserByIdRecord;
  UserBloc({
    required this.getUserByIdRecord,
  }) : super(UserInitial()) {
    on<FetchUserByIdRecord>((event, emit) async {
      emit(UserLoading());
      final result = await getUserByIdRecord.execute(
        idRecord: event.userIdRecord,
      );
      result.fold(
        (failure) => emit(UserError(failureMessage: failure.message)),
        (user) => emit(UserLoaded(user: user)),
      );
    });
  }
}
