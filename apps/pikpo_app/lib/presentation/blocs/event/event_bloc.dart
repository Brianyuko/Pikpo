import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:pikpo_core/domain/entities/event_entity.dart';
import 'package:pikpo_core/domain/usecases/get_events_by_id_user.dart';
import 'package:pikpo_core/utils/core_library.dart';

part 'event_event.dart';
part 'event_state.dart';

class EventBloc extends Bloc<EventEvent, EventState> {
  final GetEventsByIdUser getEventsByIdUser;
  EventBloc({
    required this.getEventsByIdUser,
  }) : super(EventInitial()) {
    on<FetchEventsByIdUser>((event, emit) async {
      emit(EventLoading());
      final result = await getEventsByIdUser.execute(
        idUser: event.idUser,
      );
      result.fold(
        (failure) => emit(EventError(failureMessage: failure.message)),
        (events) => emit(EventLoaded(events: events)),
      );
    });
  }
}
