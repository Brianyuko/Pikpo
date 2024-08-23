import 'package:equatable/equatable.dart';

class EventEntity extends Equatable {
  final String idRecord;
  final int id;
  final String title;
  final String thumbnail;
  final String type;
  final String description;
  final num duration;
  final bool multipleSession;
  final num price;

  const EventEntity({
    required this.idRecord,
    required this.id,
    required this.title,
    required this.thumbnail,
    required this.type,
    required this.description,
    required this.duration,
    required this.multipleSession,
    required this.price,
  });

  @override
  List<Object?> get props => [
        idRecord,
        id,
        title,
        thumbnail,
        type,
        description,
        duration,
        multipleSession,
        price,
      ];
}
