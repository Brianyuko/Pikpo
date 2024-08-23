import 'package:fpdart/fpdart.dart';
import 'package:pikpo_core/domain/entities/event_entity.dart';
import 'package:pikpo_core/domain/repository/repository.dart';
import 'package:pikpo_core/utils/failure.dart';

class GetEventsByIdUser {
  final Repository repository;

  GetEventsByIdUser(this.repository);

  Future<Either<Failure, List<EventEntity>>> execute({
    required int idUser,
  }) async {
    return await repository.getEventsByIdUser(
      idUser: idUser,
    );
  }
}
