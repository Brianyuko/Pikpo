import 'dart:io';

import 'package:pikpo_app/data/datasources/remote_data_source.dart';
import 'package:pikpo_core/domain/entities/role_entity.dart';
import 'package:pikpo_core/domain/entities/user_entity.dart';
import 'package:pikpo_core/domain/repository/repository.dart';
import 'package:pikpo_core/utils/core_library.dart';
import 'package:pikpo_core/utils/exception.dart';
import 'package:pikpo_core/utils/failure.dart';

class RepositoryImpl implements Repository {
  final RemoteDataSource remoteDataSource;

  RepositoryImpl({
    required this.remoteDataSource,
  });

  @override
  Future<Either<Failure, List<RoleEntity>>> getRoles() async {
    try {
      final result = await remoteDataSource.fetchRoles();
      return Right(
        result
            .map(
              (e) => e.fields.toEntity(idRecord: e.id),
            )
            .toList(),
      );
    } on ServerException {
      return const Left(ServerFailure('Server Error'));
    } on SocketException {
      return const Left(ServerFailure('No Internet Connection'));
    }
  }

  @override
  Future<Either<Failure, UserEntity>> getUserByIdRecord({
    required String idRecord,
  }) async {
    try {
      final result = await remoteDataSource.fetchUserByIdRecord(
        idRecord: idRecord,
      );
      final resultRole = await remoteDataSource.fetchRoleByIdRecord(
        idRecord: result.fields.role.first,
      );
      return Right(
        result.fields.toEntity(
          idRecord: result.id,
          roleName: resultRole.fields.name,
        ),
      );
    } on ServerException {
      return const Left(ServerFailure('Server Error'));
    } on SocketException {
      return const Left(ServerFailure('No Internet Connection'));
    }
  }
}
