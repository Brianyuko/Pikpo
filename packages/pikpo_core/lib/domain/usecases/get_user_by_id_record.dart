import 'package:fpdart/fpdart.dart';
import 'package:pikpo_core/domain/entities/user_entity.dart';
import 'package:pikpo_core/domain/repository/repository.dart';
import 'package:pikpo_core/utils/failure.dart';

class GetUserByIdRecord {
  final Repository repository;
  GetUserByIdRecord(this.repository);

  Future<Either<Failure, UserEntity>> execute({
    required String idRecord,
  }) async {
    return await repository.getUserByIdRecord(
      idRecord: idRecord,
    );
  }
}
