import 'dart:io';

import 'package:pikpo_app/data/datasources/remote_data_source.dart';
import 'package:pikpo_core/domain/entities/role_entity.dart';
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
              (e) => e.fields.toEntity(idFields: e.id),
            )
            .toList(),
      );
    } on ServerException {
      return const Left(ServerFailure('Server Error'));
    } on SocketException {
      return const Left(ServerFailure('No Internet Connection'));
    }
  }
}
