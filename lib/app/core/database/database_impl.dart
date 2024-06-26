import 'package:isar/isar.dart';
import 'package:job_timer/app/core/database/database.dart';
import 'package:path_provider/path_provider.dart';
import 'package:job_timer/app/entities/project.dart';
import 'package:job_timer/app/entities/project_task.dart';

class DatabaseImpl implements Database {
  Isar? _databaseInstance;

  @override
  Future<Isar> openConnection() async {
    if (_databaseInstance == null) {
      final dir = await getApplicationSupportDirectory();
      _databaseInstance = await Isar.open(
        [ProjectSchema, ProjectTaskSchema],
        directory: dir.path,
        inspector: true,
      );
    }

    return _databaseInstance!;
  }
}
