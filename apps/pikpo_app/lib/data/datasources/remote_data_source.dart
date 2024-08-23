import 'dart:convert';

import 'package:pikpo_app/data/models/base/base_model.dart';
import 'package:pikpo_app/data/models/role_model.dart';
import 'package:pikpo_app/data/models/user_model.dart';
import 'package:pikpo_app/env/env.dart';
import 'package:pikpo_core/utils/exception.dart';
import 'package:http/http.dart' as http;

abstract class RemoteDataSource {
  Future<List<BaseModel<RoleModel>>> fetchRoles();
  Future<BaseModel<RoleModel>> fetchRoleByIdRecord({
    required String idRecord,
  });
  Future<BaseModel<UserModel>> fetchUserByIdRecord({
    required String idRecord,
  });
}

class RemoteDataSourceImpl implements RemoteDataSource {
  static const String _baseUrl =
      'https://api.airtable.com/v0/appx0QWI0Nhu9u6Ai';
  static const String endpointRoles = '/tblxhGE9aXHBnzSk1';
  static const String endpointUsers = '/tblbAJUFYgE6ZclS7';

  final http.Client client;

  RemoteDataSourceImpl({
    required this.client,
  });

  @override
  Future<List<BaseModel<RoleModel>>> fetchRoles() async {
    final response = await client.get(
      Uri.parse('$_baseUrl$endpointRoles'),
      headers: {
        'Authorization': 'Bearer ${Env.apiKey}',
      },
    );
    if (response.statusCode == 200) {
      Map<String, dynamic>? result = json.decode(response.body);
      List<dynamic>? records = result?['records'];
      if (records == null) {
        return [];
      } else {
        List<BaseModel<RoleModel>> roles = records
            .map((record) => BaseModel<RoleModel>.fromJson(
                  record,
                  (json) => RoleModel.fromJson(json as Map<String, dynamic>),
                ))
            .toList();
        return roles;
      }
    } else {
      throw ServerException();
    }
  }

  @override
  Future<BaseModel<RoleModel>> fetchRoleByIdRecord({
    required String idRecord,
  }) async {
    final response = await client.get(
      Uri.parse('$_baseUrl$endpointRoles/$idRecord'),
      headers: {
        'Authorization': 'Bearer ${Env.apiKey}',
      },
    );
    if (response.statusCode == 200) {
      Map<String, dynamic>? result = json.decode(response.body);
      if (result == null) {
        throw ServerException();
      } else {
        BaseModel<RoleModel> role = BaseModel<RoleModel>.fromJson(
          result,
          (json) => RoleModel.fromJson(json as Map<String, dynamic>),
        );
        return role;
      }
    } else {
      throw ServerException();
    }
  }

  @override
  Future<BaseModel<UserModel>> fetchUserByIdRecord({
    required String idRecord,
  }) async {
    final response = await client.get(
      Uri.parse('$_baseUrl$endpointUsers/$idRecord'),
      headers: {
        'Authorization': 'Bearer ${Env.apiKey}',
      },
    );
    if (response.statusCode == 200) {
      Map<String, dynamic>? result = json.decode(response.body);
      if (result == null) {
        throw ServerException();
      } else {
        BaseModel<UserModel> user = BaseModel<UserModel>.fromJson(
          result,
          (json) => UserModel.fromJson(json as Map<String, dynamic>),
        );
        return user;
      }
    } else {
      throw ServerException();
    }
  }
}
