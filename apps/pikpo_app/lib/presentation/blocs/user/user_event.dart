part of 'user_bloc.dart';

@immutable
sealed class UserEvent extends Equatable {}

final class FetchUserByIdRecord extends UserEvent {
  final String userIdRecord;

  FetchUserByIdRecord({required this.userIdRecord});

  @override
  List<Object?> get props => [userIdRecord];
}
