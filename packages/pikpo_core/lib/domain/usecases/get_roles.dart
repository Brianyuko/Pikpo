import 'package:fpdart/fpdart.dart';
import 'package:pikpo_core/domain/entities/role_entity.dart';
import 'package:pikpo_core/domain/repository/repository.dart';
import 'package:pikpo_core/utils/failure.dart';

class GetRoles {
  final Repository repository;
  GetRoles(this.repository);

  Future<Either<Failure, List<RoleEntity>>> execute() async {
    return await repository.getRoles();
  }
}
