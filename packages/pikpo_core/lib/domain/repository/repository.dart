import 'package:fpdart/fpdart.dart';
import 'package:pikpo_core/domain/entities/role_entity.dart';
import 'package:pikpo_core/utils/failure.dart';

abstract class Repository {
  Future<Either<Failure, List<RoleEntity>>> getRoles();
}
