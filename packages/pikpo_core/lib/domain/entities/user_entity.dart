import 'package:equatable/equatable.dart';

class UserEntity extends Equatable {
  final String idRecord;
  final int id;
  final String role;
  final String name;
  final String username;
  final String currentTitle;
  final String imageProfile;

  const UserEntity({
    required this.idRecord,
    required this.id,
    required this.role,
    required this.name,
    required this.username,
    required this.currentTitle,
    required this.imageProfile,
  });

  @override
  List<Object?> get props => [
        idRecord,
        id,
        role,
        name,
        username,
        currentTitle,
        imageProfile,
      ];
}
