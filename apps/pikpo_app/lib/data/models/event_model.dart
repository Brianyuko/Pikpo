import 'package:json_annotation/json_annotation.dart';
import 'package:pikpo_core/domain/entities/event_entity.dart';
import 'package:pikpo_core/utils/core_library.dart';

part 'event_model.g.dart';

@JsonSerializable()
class EventModel extends Equatable {
  final int id;
  final String title;
  final String thumbnail;
  final String type;
  final String description;
  final num duration;
  @JsonKey(name: 'multiple_session')
  final bool? multipleSession;
  final num price;

  const EventModel({
    required this.id,
    required this.title,
    required this.thumbnail,
    required this.type,
    required this.description,
    required this.duration,
    this.multipleSession,
    required this.price,
  });

  factory EventModel.fromJson(Map<String, dynamic> json) =>
      _$EventModelFromJson(json);

  Map<String, dynamic> toJson() => _$EventModelToJson(this);

  @override
  List<Object?> get props => [
        id,
        title,
        thumbnail,
        type,
        description,
        duration,
        multipleSession,
        price,
      ];

  EventEntity toEntity({
    required String idRecord,
  }) =>
      EventEntity(
        idRecord: idRecord,
        id: id,
        title: title,
        thumbnail: thumbnail,
        type: type,
        description: description,
        duration: duration,
        multipleSession: multipleSession ?? false,
        price: price,
      );
}
