import 'package:json_annotation/json_annotation.dart';
import 'package:pikpo_core/domain/entities/user_entity.dart';
import 'package:pikpo_core/utils/core_library.dart';

part 'user_model.g.dart';

@JsonSerializable()
class UserModel extends Equatable {
  final int id;
  final List<String> role;
  final String name;
  final String username;
  @JsonKey(name: 'current_title')
  final String currentTitle;
  @JsonKey(name: 'image_profile')
  final String imageProfile;

  const UserModel({
    required this.id,
    required this.role,
    required this.name,
    required this.username,
    required this.currentTitle,
    required this.imageProfile,
  });

  factory UserModel.fromJson(Map<String, dynamic> json) =>
      _$UserModelFromJson(json);

  Map<String, dynamic> toJson() => _$UserModelToJson(this);

  @override
  List<Object?> get props => [
        id,
        role,
        name,
        username,
        currentTitle,
        imageProfile,
      ];

  UserEntity toEntity({
    required String idRecord,
    required String roleName,
  }) =>
      UserEntity(
        idRecord: idRecord,
        id: id,
        role: roleName,
        name: name,
        username: username,
        currentTitle: currentTitle,
        imageProfile: imageProfile,
      );
}
