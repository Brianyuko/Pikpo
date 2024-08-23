part of 'user_bloc.dart';

@immutable
sealed class UserState extends Equatable {}

final class UserInitial extends UserState {
  @override
  List<Object?> get props => [];
}

final class UserLoading extends UserState {
  @override
  List<Object?> get props => [];
}

final class UserLoaded extends UserState {
  final UserEntity user;

  UserLoaded({required this.user});

  @override
  List<Object?> get props => [user];
}

final class UserError extends UserState {
  final String failureMessage;

  UserError({required this.failureMessage});

  @override
  List<Object?> get props => [failureMessage];
}
