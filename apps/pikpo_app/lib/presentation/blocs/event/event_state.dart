part of 'event_bloc.dart';

@immutable
sealed class EventState extends Equatable {}

final class EventInitial extends EventState {
  @override
  List<Object?> get props => [];
}

final class EventLoading extends EventState {
  @override
  List<Object?> get props => [];
}

final class EventLoaded extends EventState {
  final List<EventEntity> events;

  EventLoaded({required this.events});

  @override
  List<Object?> get props => [events];
}

final class EventError extends EventState {
  final String failureMessage;

  EventError({required this.failureMessage});

  @override
  List<Object?> get props => [failureMessage];
}
