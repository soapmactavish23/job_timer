import 'package:isar/isar.dart';

@Collection()
class ProjectTask {
  int? id;
  late String name;
  late int duration;
  late DateTime created = DateTime.now();
}
