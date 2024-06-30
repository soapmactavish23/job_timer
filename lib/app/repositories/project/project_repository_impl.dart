import 'dart:developer';
import 'package:isar/isar.dart';
import 'package:job_timer/app/core/database/database_impl.dart';
import 'package:job_timer/app/core/exceptions/failure.dart';
import 'package:job_timer/app/entities/project.dart';
import 'package:job_timer/app/entities/project_status.dart';
import 'package:job_timer/app/repositories/project/project_repository.dart';

class ProjectRepositoryImpl implements ProjectRepository {
  final DatabaseImpl _database;

  ProjectRepositoryImpl({
    required DatabaseImpl database,
  }) : _database = database;

  @override
  Future<void> register(Project project) async {
    try {
      final connection = await _database.openConnection();
      await connection.writeTxn(() async {
        await connection.projects.put(project);
      });
    } on IsarError catch (e, s) {
      String msg = 'Erro ao cadastrar projeto';
      log(msg, error: e, stackTrace: s);
      throw Failure(message: msg);
    }
  }

  @override
  Future<List<Project>> findByStatus(ProjectStatus status) async {
    final connection = await _database.openConnection();

    final projects =
        await connection.projects.filter().statusEqualTo(status).findAll();

    return projects;
  }
}
