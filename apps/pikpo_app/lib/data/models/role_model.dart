import 'package:json_annotation/json_annotation.dart';
import 'package:pikpo_core/domain/entities/role_entity.dart';
import 'package:pikpo_core/utils/core_library.dart';

part 'role_model.g.dart';

@JsonSerializable()
class RoleModel extends Equatable {
  final int id;
  final String name;

  const RoleModel({
    required this.id,
    required this.name,
  });

  factory RoleModel.fromJson(Map<String, dynamic> json) =>
      _$RoleModelFromJson(json);

  Map<String, dynamic> toJson() => _$RoleModelToJson(this);

  @override
  List<Object?> get props => [name];

  RoleEntity toEntity({
    required String idRecord,
  }) =>
      RoleEntity(
        idRecord: idRecord,
        id: id,
        name: name,
      );
}
