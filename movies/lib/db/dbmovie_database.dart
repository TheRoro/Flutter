import 'package:moor_flutter/moor_flutter.dart';

part 'dbmovie_database.g.dart';

class DBMovies extends Table {
  IntColumn get id => integer().autoIncrement().nullable()();
  TextColumn get originalLanguage => text()();
  TextColumn get originalTitle => text()();
  TextColumn get overview => text()();
  BoolColumn get favorite =>
      boolean().withDefault(Constant(false)).nullable()();
  TextColumn get imageUrl => text()();
  RealColumn get popularity => real()();
}

@UseMoor(tables: [DBMovies])
class AppDatabase extends _$AppDatabase {
  AppDatabase()
      : super(FlutterQueryExecutor.inDatabaseFolder(
            path: 'db.sqlite', logStatements: true));

  @override
  int get schemaVersion => 4;

  Future<List<DBMovie>> getAllMovies() => select(dBMovies).get();
  Stream<List<DBMovie>> watchAllMovies() => select(dBMovies).watch();
  Future insertMovie(DBMovie movie) => into(dBMovies).insert(movie);
  Future updateMovie(DBMovie movie) => update(dBMovies).replace(movie);
  Future deleteMovie(DBMovie movie) => delete(dBMovies).delete(movie);
}
