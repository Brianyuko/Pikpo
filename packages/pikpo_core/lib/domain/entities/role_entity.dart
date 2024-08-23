import 'package:equatable/equatable.dart';

class RoleEntity extends Equatable {
  final String idRecord;
  final int id;
  final String name;

  const RoleEntity({
    required this.idRecord,
    required this.id,
    required this.name,
  });

  @override
  List<Object?> get props => [idRecord, id, name];
}
