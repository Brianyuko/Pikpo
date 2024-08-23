part of 'role_bloc.dart';

@immutable
sealed class RoleEvent extends Equatable {}

final class FetchRoles extends RoleEvent {
  @override
  List<Object?> get props => [];
}
