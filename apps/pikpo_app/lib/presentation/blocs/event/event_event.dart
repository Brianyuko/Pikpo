part of 'event_bloc.dart';

@immutable
sealed class EventEvent extends Equatable {}

final class FetchEventsByIdUser extends EventEvent {
  final int idUser;

  FetchEventsByIdUser({required this.idUser});

  @override
  List<Object?> get props => [idUser];
}
