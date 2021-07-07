// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'dbmovie_database.dart';

// **************************************************************************
// MoorGenerator
// **************************************************************************

// ignore_for_file: unnecessary_brace_in_string_interps, unnecessary_this
class DBMovie extends DataClass implements Insertable<DBMovie> {
  final int? id;
  final String originalLanguage;
  final String originalTitle;
  final String overview;
  final bool? favorite;
  final String imageUrl;
  final double popularity;
  DBMovie(
      {this.id,
      required this.originalLanguage,
      required this.originalTitle,
      required this.overview,
      this.favorite,
      required this.imageUrl,
      required this.popularity});
  factory DBMovie.fromData(Map<String, dynamic> data, GeneratedDatabase db,
      {String? prefix}) {
    final effectivePrefix = prefix ?? '';
    return DBMovie(
      id: const IntType().mapFromDatabaseResponse(data['${effectivePrefix}id']),
      originalLanguage: const StringType().mapFromDatabaseResponse(
          data['${effectivePrefix}original_language'])!,
      originalTitle: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}original_title'])!,
      overview: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}overview'])!,
      favorite: const BoolType()
          .mapFromDatabaseResponse(data['${effectivePrefix}favorite']),
      imageUrl: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}image_url'])!,
      popularity: const RealType()
          .mapFromDatabaseResponse(data['${effectivePrefix}popularity'])!,
    );
  }
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (!nullToAbsent || id != null) {
      map['id'] = Variable<int?>(id);
    }
    map['original_language'] = Variable<String>(originalLanguage);
    map['original_title'] = Variable<String>(originalTitle);
    map['overview'] = Variable<String>(overview);
    if (!nullToAbsent || favorite != null) {
      map['favorite'] = Variable<bool?>(favorite);
    }
    map['image_url'] = Variable<String>(imageUrl);
    map['popularity'] = Variable<double>(popularity);
    return map;
  }

  DBMoviesCompanion toCompanion(bool nullToAbsent) {
    return DBMoviesCompanion(
      id: id == null && nullToAbsent ? const Value.absent() : Value(id),
      originalLanguage: Value(originalLanguage),
      originalTitle: Value(originalTitle),
      overview: Value(overview),
      favorite: favorite == null && nullToAbsent
          ? const Value.absent()
          : Value(favorite),
      imageUrl: Value(imageUrl),
      popularity: Value(popularity),
    );
  }

  factory DBMovie.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= moorRuntimeOptions.defaultSerializer;
    return DBMovie(
      id: serializer.fromJson<int?>(json['id']),
      originalLanguage: serializer.fromJson<String>(json['originalLanguage']),
      originalTitle: serializer.fromJson<String>(json['originalTitle']),
      overview: serializer.fromJson<String>(json['overview']),
      favorite: serializer.fromJson<bool?>(json['favorite']),
      imageUrl: serializer.fromJson<String>(json['imageUrl']),
      popularity: serializer.fromJson<double>(json['popularity']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= moorRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int?>(id),
      'originalLanguage': serializer.toJson<String>(originalLanguage),
      'originalTitle': serializer.toJson<String>(originalTitle),
      'overview': serializer.toJson<String>(overview),
      'favorite': serializer.toJson<bool?>(favorite),
      'imageUrl': serializer.toJson<String>(imageUrl),
      'popularity': serializer.toJson<double>(popularity),
    };
  }

  DBMovie copyWith(
          {int? id,
          String? originalLanguage,
          String? originalTitle,
          String? overview,
          bool? favorite,
          String? imageUrl,
          double? popularity}) =>
      DBMovie(
        id: id ?? this.id,
        originalLanguage: originalLanguage ?? this.originalLanguage,
        originalTitle: originalTitle ?? this.originalTitle,
        overview: overview ?? this.overview,
        favorite: favorite ?? this.favorite,
        imageUrl: imageUrl ?? this.imageUrl,
        popularity: popularity ?? this.popularity,
      );
  @override
  String toString() {
    return (StringBuffer('DBMovie(')
          ..write('id: $id, ')
          ..write('originalLanguage: $originalLanguage, ')
          ..write('originalTitle: $originalTitle, ')
          ..write('overview: $overview, ')
          ..write('favorite: $favorite, ')
          ..write('imageUrl: $imageUrl, ')
          ..write('popularity: $popularity')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => $mrjf($mrjc(
      id.hashCode,
      $mrjc(
          originalLanguage.hashCode,
          $mrjc(
              originalTitle.hashCode,
              $mrjc(
                  overview.hashCode,
                  $mrjc(favorite.hashCode,
                      $mrjc(imageUrl.hashCode, popularity.hashCode)))))));
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is DBMovie &&
          other.id == this.id &&
          other.originalLanguage == this.originalLanguage &&
          other.originalTitle == this.originalTitle &&
          other.overview == this.overview &&
          other.favorite == this.favorite &&
          other.imageUrl == this.imageUrl &&
          other.popularity == this.popularity);
}

class DBMoviesCompanion extends UpdateCompanion<DBMovie> {
  final Value<int?> id;
  final Value<String> originalLanguage;
  final Value<String> originalTitle;
  final Value<String> overview;
  final Value<bool?> favorite;
  final Value<String> imageUrl;
  final Value<double> popularity;
  const DBMoviesCompanion({
    this.id = const Value.absent(),
    this.originalLanguage = const Value.absent(),
    this.originalTitle = const Value.absent(),
    this.overview = const Value.absent(),
    this.favorite = const Value.absent(),
    this.imageUrl = const Value.absent(),
    this.popularity = const Value.absent(),
  });
  DBMoviesCompanion.insert({
    this.id = const Value.absent(),
    required String originalLanguage,
    required String originalTitle,
    required String overview,
    this.favorite = const Value.absent(),
    required String imageUrl,
    required double popularity,
  })  : originalLanguage = Value(originalLanguage),
        originalTitle = Value(originalTitle),
        overview = Value(overview),
        imageUrl = Value(imageUrl),
        popularity = Value(popularity);
  static Insertable<DBMovie> custom({
    Expression<int?>? id,
    Expression<String>? originalLanguage,
    Expression<String>? originalTitle,
    Expression<String>? overview,
    Expression<bool?>? favorite,
    Expression<String>? imageUrl,
    Expression<double>? popularity,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (originalLanguage != null) 'original_language': originalLanguage,
      if (originalTitle != null) 'original_title': originalTitle,
      if (overview != null) 'overview': overview,
      if (favorite != null) 'favorite': favorite,
      if (imageUrl != null) 'image_url': imageUrl,
      if (popularity != null) 'popularity': popularity,
    });
  }

  DBMoviesCompanion copyWith(
      {Value<int?>? id,
      Value<String>? originalLanguage,
      Value<String>? originalTitle,
      Value<String>? overview,
      Value<bool?>? favorite,
      Value<String>? imageUrl,
      Value<double>? popularity}) {
    return DBMoviesCompanion(
      id: id ?? this.id,
      originalLanguage: originalLanguage ?? this.originalLanguage,
      originalTitle: originalTitle ?? this.originalTitle,
      overview: overview ?? this.overview,
      favorite: favorite ?? this.favorite,
      imageUrl: imageUrl ?? this.imageUrl,
      popularity: popularity ?? this.popularity,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int?>(id.value);
    }
    if (originalLanguage.present) {
      map['original_language'] = Variable<String>(originalLanguage.value);
    }
    if (originalTitle.present) {
      map['original_title'] = Variable<String>(originalTitle.value);
    }
    if (overview.present) {
      map['overview'] = Variable<String>(overview.value);
    }
    if (favorite.present) {
      map['favorite'] = Variable<bool?>(favorite.value);
    }
    if (imageUrl.present) {
      map['image_url'] = Variable<String>(imageUrl.value);
    }
    if (popularity.present) {
      map['popularity'] = Variable<double>(popularity.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('DBMoviesCompanion(')
          ..write('id: $id, ')
          ..write('originalLanguage: $originalLanguage, ')
          ..write('originalTitle: $originalTitle, ')
          ..write('overview: $overview, ')
          ..write('favorite: $favorite, ')
          ..write('imageUrl: $imageUrl, ')
          ..write('popularity: $popularity')
          ..write(')'))
        .toString();
  }
}

class $DBMoviesTable extends DBMovies with TableInfo<$DBMoviesTable, DBMovie> {
  final GeneratedDatabase _db;
  final String? _alias;
  $DBMoviesTable(this._db, [this._alias]);
  final VerificationMeta _idMeta = const VerificationMeta('id');
  late final GeneratedColumn<int?> id = GeneratedColumn<int?>(
      'id', aliasedName, true,
      typeName: 'INTEGER',
      requiredDuringInsert: false,
      defaultConstraints: 'PRIMARY KEY AUTOINCREMENT');
  final VerificationMeta _originalLanguageMeta =
      const VerificationMeta('originalLanguage');
  late final GeneratedColumn<String?> originalLanguage =
      GeneratedColumn<String?>('original_language', aliasedName, false,
          typeName: 'TEXT', requiredDuringInsert: true);
  final VerificationMeta _originalTitleMeta =
      const VerificationMeta('originalTitle');
  late final GeneratedColumn<String?> originalTitle = GeneratedColumn<String?>(
      'original_title', aliasedName, false,
      typeName: 'TEXT', requiredDuringInsert: true);
  final VerificationMeta _overviewMeta = const VerificationMeta('overview');
  late final GeneratedColumn<String?> overview = GeneratedColumn<String?>(
      'overview', aliasedName, false,
      typeName: 'TEXT', requiredDuringInsert: true);
  final VerificationMeta _favoriteMeta = const VerificationMeta('favorite');
  late final GeneratedColumn<bool?> favorite = GeneratedColumn<bool?>(
      'favorite', aliasedName, true,
      typeName: 'INTEGER',
      requiredDuringInsert: false,
      defaultConstraints: 'CHECK (favorite IN (0, 1))',
      defaultValue: Constant(false));
  final VerificationMeta _imageUrlMeta = const VerificationMeta('imageUrl');
  late final GeneratedColumn<String?> imageUrl = GeneratedColumn<String?>(
      'image_url', aliasedName, false,
      typeName: 'TEXT', requiredDuringInsert: true);
  final VerificationMeta _popularityMeta = const VerificationMeta('popularity');
  late final GeneratedColumn<double?> popularity = GeneratedColumn<double?>(
      'popularity', aliasedName, false,
      typeName: 'REAL', requiredDuringInsert: true);
  @override
  List<GeneratedColumn> get $columns => [
        id,
        originalLanguage,
        originalTitle,
        overview,
        favorite,
        imageUrl,
        popularity
      ];
  @override
  String get aliasedName => _alias ?? 'd_b_movies';
  @override
  String get actualTableName => 'd_b_movies';
  @override
  VerificationContext validateIntegrity(Insertable<DBMovie> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    }
    if (data.containsKey('original_language')) {
      context.handle(
          _originalLanguageMeta,
          originalLanguage.isAcceptableOrUnknown(
              data['original_language']!, _originalLanguageMeta));
    } else if (isInserting) {
      context.missing(_originalLanguageMeta);
    }
    if (data.containsKey('original_title')) {
      context.handle(
          _originalTitleMeta,
          originalTitle.isAcceptableOrUnknown(
              data['original_title']!, _originalTitleMeta));
    } else if (isInserting) {
      context.missing(_originalTitleMeta);
    }
    if (data.containsKey('overview')) {
      context.handle(_overviewMeta,
          overview.isAcceptableOrUnknown(data['overview']!, _overviewMeta));
    } else if (isInserting) {
      context.missing(_overviewMeta);
    }
    if (data.containsKey('favorite')) {
      context.handle(_favoriteMeta,
          favorite.isAcceptableOrUnknown(data['favorite']!, _favoriteMeta));
    }
    if (data.containsKey('image_url')) {
      context.handle(_imageUrlMeta,
          imageUrl.isAcceptableOrUnknown(data['image_url']!, _imageUrlMeta));
    } else if (isInserting) {
      context.missing(_imageUrlMeta);
    }
    if (data.containsKey('popularity')) {
      context.handle(
          _popularityMeta,
          popularity.isAcceptableOrUnknown(
              data['popularity']!, _popularityMeta));
    } else if (isInserting) {
      context.missing(_popularityMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  DBMovie map(Map<String, dynamic> data, {String? tablePrefix}) {
    return DBMovie.fromData(data, _db,
        prefix: tablePrefix != null ? '$tablePrefix.' : null);
  }

  @override
  $DBMoviesTable createAlias(String alias) {
    return $DBMoviesTable(_db, alias);
  }
}

abstract class _$AppDatabase extends GeneratedDatabase {
  _$AppDatabase(QueryExecutor e) : super(SqlTypeSystem.defaultInstance, e);
  late final $DBMoviesTable dBMovies = $DBMoviesTable(this);
  @override
  Iterable<TableInfo> get allTables => allSchemaEntities.whereType<TableInfo>();
  @override
  List<DatabaseSchemaEntity> get allSchemaEntities => [dBMovies];
}
