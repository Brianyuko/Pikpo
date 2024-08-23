import 'package:json_annotation/json_annotation.dart';
import 'package:pikpo_core/utils/core_library.dart';

part 'base_model.g.dart';

@JsonSerializable(genericArgumentFactories: true)
class BaseModel<T> extends Equatable {
  final String id;
  final String createdTime;
  final T fields;

  const BaseModel({
    required this.id,
    required this.createdTime,
    required this.fields,
  });

  factory BaseModel.fromJson(
    Map<String, dynamic> json,
    T Function(Object? json) fromJsonT,
  ) =>
      _$BaseModelFromJson(json, fromJsonT);

  Map<String, dynamic> toJson(Object? Function(T value) toJsonT) =>
      _$BaseModelToJson(this, toJsonT);

  @override
  List<Object?> get props => [
        id,
        createdTime,
        fields,
      ];
}
