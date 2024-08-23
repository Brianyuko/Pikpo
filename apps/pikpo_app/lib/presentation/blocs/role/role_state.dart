part of 'role_bloc.dart';

@immutable
sealed class RoleState extends Equatable {}

final class RoleInitial extends RoleState {
  @override
  List<Object?> get props => [];
}

final class RoleLoading extends RoleState {
  @override
  List<Object?> get props => [];
}

final class RoleLoaded extends RoleState {
  final List<RoleEntity> roles;

  RoleLoaded({required this.roles});

  @override
  List<Object?> get props => [roles];
}

final class RoleError extends RoleState {
  final String failureMessage;

  RoleError({required this.failureMessage});

  @override
  List<Object?> get props => [failureMessage];
}
