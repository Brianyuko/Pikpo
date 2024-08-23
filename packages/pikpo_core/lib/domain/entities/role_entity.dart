import 'package:equatable/equatable.dart';

class RoleEntity extends Equatable {
  final String idFields;
  final int id;
  final String name;

  const RoleEntity({
    required this.idFields,
    required this.id,
    required this.name,
  });

  @override
  List<Object?> get props => [idFields, id, name];
}
