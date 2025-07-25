import 'package:drift/drift.dart';
import 'package:drift_flutter/drift_flutter.dart';
import 'package:path_provider/path_provider.dart';

part 'database.g.dart';

class MiniNote extends Table {
  IntColumn get id => integer().autoIncrement()();
  TextColumn get title => text().withLength(min: 1, max: 50)();
  TextColumn get content =>
      text().withLength(min: 1, max: 1000).named('body')();
  DateTimeColumn get createdAt => dateTime().withDefault(currentDateAndTime)();
  DateTimeColumn get updatedAt => dateTime().withDefault(currentDateAndTime)();
  DateTimeColumn get deletedAt => dateTime().withDefault(currentDateAndTime)();
}

@DriftDatabase(tables: [MiniNote])
class MiniNoteDatabase extends _$MiniNoteDatabase {
  // MiniNoteDatabase() : super(_openConnection());
  MiniNoteDatabase([QueryExecutor? executor]) : super(executor ?? _openConnection());

  @override
  int get schemaVersion => 1;
  // NOTE: with simple database and automatic
  static QueryExecutor _openConnection() {
    return driftDatabase(
      name: 'mini_note',
      native: const DriftNativeOptions(
        // By default, `driftDatabase` from `package:drift_flutter` stores the
        // database files in `getApplicationDocumentsDirectory()`.
        databaseDirectory: getApplicationSupportDirectory,
      ),
      // If you need web support, see https://drift.simonbinder.eu/platforms/web/
    );
  }
}
