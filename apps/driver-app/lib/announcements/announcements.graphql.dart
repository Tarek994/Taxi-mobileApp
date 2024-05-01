import 'dart:async';
import 'package:flutter/widgets.dart' as widgets;
import 'package:gql/ast.dart';
import 'package:graphql/client.dart' as graphql;
import 'package:graphql_flutter/graphql_flutter.dart' as graphql_flutter;
import 'package:ridy/graphql/scalars/timestamp.dart';

class Query$Announcements {
  Query$Announcements({required this.announcements});

  factory Query$Announcements.fromJson(Map<String, dynamic> json) {
    final l$announcements = json['announcements'];
    return Query$Announcements(
        announcements: (l$announcements as List<dynamic>)
            .map((e) => Query$Announcements$announcements.fromJson(
                (e as Map<String, dynamic>)))
            .toList());
  }

  final List<Query$Announcements$announcements> announcements;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$announcements = announcements;
    _resultData['announcements'] =
        l$announcements.map((e) => e.toJson()).toList();
    return _resultData;
  }

  @override
  int get hashCode {
    final l$announcements = announcements;
    return Object.hashAll([Object.hashAll(l$announcements.map((v) => v))]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$Announcements) || runtimeType != other.runtimeType) {
      return false;
    }
    final l$announcements = announcements;
    final lOther$announcements = other.announcements;
    if (l$announcements.length != lOther$announcements.length) {
      return false;
    }
    for (int i = 0; i < l$announcements.length; i++) {
      final l$announcements$entry = l$announcements[i];
      final lOther$announcements$entry = lOther$announcements[i];
      if (l$announcements$entry != lOther$announcements$entry) {
        return false;
      }
    }
    return true;
  }
}

extension UtilityExtension$Query$Announcements on Query$Announcements {
  CopyWith$Query$Announcements<Query$Announcements> get copyWith =>
      CopyWith$Query$Announcements(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$Announcements<TRes> {
  factory CopyWith$Query$Announcements(
    Query$Announcements instance,
    TRes Function(Query$Announcements) then,
  ) = _CopyWithImpl$Query$Announcements;

  factory CopyWith$Query$Announcements.stub(TRes res) =
      _CopyWithStubImpl$Query$Announcements;

  TRes call({List<Query$Announcements$announcements>? announcements});
  TRes announcements(
      Iterable<Query$Announcements$announcements> Function(
              Iterable<
                  CopyWith$Query$Announcements$announcements<
                      Query$Announcements$announcements>>)
          _fn);
}

class _CopyWithImpl$Query$Announcements<TRes>
    implements CopyWith$Query$Announcements<TRes> {
  _CopyWithImpl$Query$Announcements(
    this._instance,
    this._then,
  );

  final Query$Announcements _instance;

  final TRes Function(Query$Announcements) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? announcements = _undefined}) => _then(Query$Announcements(
      announcements: announcements == _undefined || announcements == null
          ? _instance.announcements
          : (announcements as List<Query$Announcements$announcements>)));
  TRes announcements(
          Iterable<Query$Announcements$announcements> Function(
                  Iterable<
                      CopyWith$Query$Announcements$announcements<
                          Query$Announcements$announcements>>)
              _fn) =>
      call(
          announcements: _fn(_instance.announcements
              .map((e) => CopyWith$Query$Announcements$announcements(
                    e,
                    (i) => i,
                  ))).toList());
}

class _CopyWithStubImpl$Query$Announcements<TRes>
    implements CopyWith$Query$Announcements<TRes> {
  _CopyWithStubImpl$Query$Announcements(this._res);

  TRes _res;

  call({List<Query$Announcements$announcements>? announcements}) => _res;
  announcements(_fn) => _res;
}

const documentNodeQueryAnnouncements = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.query,
    name: NameNode(value: 'Announcements'),
    variableDefinitions: [],
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
        name: NameNode(value: 'announcements'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: SelectionSetNode(selections: [
          FieldNode(
            name: NameNode(value: 'title'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'description'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'startAt'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'url'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
        ]),
      )
    ]),
  ),
]);
Query$Announcements _parserFn$Query$Announcements(Map<String, dynamic> data) =>
    Query$Announcements.fromJson(data);
typedef OnQueryComplete$Query$Announcements = FutureOr<void> Function(
  Map<String, dynamic>?,
  Query$Announcements?,
);

class Options$Query$Announcements
    extends graphql.QueryOptions<Query$Announcements> {
  Options$Query$Announcements({
    String? operationName,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Query$Announcements? typedOptimisticResult,
    Duration? pollInterval,
    graphql.Context? context,
    OnQueryComplete$Query$Announcements? onComplete,
    graphql.OnQueryError? onError,
  })  : onCompleteWithParsed = onComplete,
        super(
          operationName: operationName,
          fetchPolicy: fetchPolicy,
          errorPolicy: errorPolicy,
          cacheRereadPolicy: cacheRereadPolicy,
          optimisticResult: optimisticResult ?? typedOptimisticResult?.toJson(),
          pollInterval: pollInterval,
          context: context,
          onComplete: onComplete == null
              ? null
              : (data) => onComplete(
                    data,
                    data == null ? null : _parserFn$Query$Announcements(data),
                  ),
          onError: onError,
          document: documentNodeQueryAnnouncements,
          parserFn: _parserFn$Query$Announcements,
        );

  final OnQueryComplete$Query$Announcements? onCompleteWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onComplete == null
            ? super.properties
            : super.properties.where((property) => property != onComplete),
        onCompleteWithParsed,
      ];
}

class WatchOptions$Query$Announcements
    extends graphql.WatchQueryOptions<Query$Announcements> {
  WatchOptions$Query$Announcements({
    String? operationName,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Query$Announcements? typedOptimisticResult,
    graphql.Context? context,
    Duration? pollInterval,
    bool? eagerlyFetchResults,
    bool carryForwardDataOnException = true,
    bool fetchResults = false,
  }) : super(
          operationName: operationName,
          fetchPolicy: fetchPolicy,
          errorPolicy: errorPolicy,
          cacheRereadPolicy: cacheRereadPolicy,
          optimisticResult: optimisticResult ?? typedOptimisticResult?.toJson(),
          context: context,
          document: documentNodeQueryAnnouncements,
          pollInterval: pollInterval,
          eagerlyFetchResults: eagerlyFetchResults,
          carryForwardDataOnException: carryForwardDataOnException,
          fetchResults: fetchResults,
          parserFn: _parserFn$Query$Announcements,
        );
}

class FetchMoreOptions$Query$Announcements extends graphql.FetchMoreOptions {
  FetchMoreOptions$Query$Announcements(
      {required graphql.UpdateQuery updateQuery})
      : super(
          updateQuery: updateQuery,
          document: documentNodeQueryAnnouncements,
        );
}

extension ClientExtension$Query$Announcements on graphql.GraphQLClient {
  Future<graphql.QueryResult<Query$Announcements>> query$Announcements(
          [Options$Query$Announcements? options]) async =>
      await this.query(options ?? Options$Query$Announcements());
  graphql.ObservableQuery<Query$Announcements> watchQuery$Announcements(
          [WatchOptions$Query$Announcements? options]) =>
      this.watchQuery(options ?? WatchOptions$Query$Announcements());
  void writeQuery$Announcements({
    required Query$Announcements data,
    bool broadcast = true,
  }) =>
      this.writeQuery(
        graphql.Request(
            operation:
                graphql.Operation(document: documentNodeQueryAnnouncements)),
        data: data.toJson(),
        broadcast: broadcast,
      );
  Query$Announcements? readQuery$Announcements({bool optimistic = true}) {
    final result = this.readQuery(
      graphql.Request(
          operation:
              graphql.Operation(document: documentNodeQueryAnnouncements)),
      optimistic: optimistic,
    );
    return result == null ? null : Query$Announcements.fromJson(result);
  }
}

graphql_flutter.QueryHookResult<Query$Announcements> useQuery$Announcements(
        [Options$Query$Announcements? options]) =>
    graphql_flutter.useQuery(options ?? Options$Query$Announcements());
graphql.ObservableQuery<Query$Announcements> useWatchQuery$Announcements(
        [WatchOptions$Query$Announcements? options]) =>
    graphql_flutter
        .useWatchQuery(options ?? WatchOptions$Query$Announcements());

class Query$Announcements$Widget
    extends graphql_flutter.Query<Query$Announcements> {
  Query$Announcements$Widget({
    widgets.Key? key,
    Options$Query$Announcements? options,
    required graphql_flutter.QueryBuilder<Query$Announcements> builder,
  }) : super(
          key: key,
          options: options ?? Options$Query$Announcements(),
          builder: builder,
        );
}

class Query$Announcements$announcements {
  Query$Announcements$announcements({
    required this.title,
    required this.description,
    required this.startAt,
    this.url,
  });

  factory Query$Announcements$announcements.fromJson(
      Map<String, dynamic> json) {
    final l$title = json['title'];
    final l$description = json['description'];
    final l$startAt = json['startAt'];
    final l$url = json['url'];
    return Query$Announcements$announcements(
      title: (l$title as String),
      description: (l$description as String),
      startAt: fromGraphQLTimestampToDartDateTime(l$startAt),
      url: (l$url as String?),
    );
  }

  final String title;

  final String description;

  final DateTime startAt;

  final String? url;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$title = title;
    _resultData['title'] = l$title;
    final l$description = description;
    _resultData['description'] = l$description;
    final l$startAt = startAt;
    _resultData['startAt'] = fromDartDateTimeToGraphQLTimestamp(l$startAt);
    final l$url = url;
    _resultData['url'] = l$url;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$title = title;
    final l$description = description;
    final l$startAt = startAt;
    final l$url = url;
    return Object.hashAll([
      l$title,
      l$description,
      l$startAt,
      l$url,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$Announcements$announcements) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$title = title;
    final lOther$title = other.title;
    if (l$title != lOther$title) {
      return false;
    }
    final l$description = description;
    final lOther$description = other.description;
    if (l$description != lOther$description) {
      return false;
    }
    final l$startAt = startAt;
    final lOther$startAt = other.startAt;
    if (l$startAt != lOther$startAt) {
      return false;
    }
    final l$url = url;
    final lOther$url = other.url;
    if (l$url != lOther$url) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Query$Announcements$announcements
    on Query$Announcements$announcements {
  CopyWith$Query$Announcements$announcements<Query$Announcements$announcements>
      get copyWith => CopyWith$Query$Announcements$announcements(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$Announcements$announcements<TRes> {
  factory CopyWith$Query$Announcements$announcements(
    Query$Announcements$announcements instance,
    TRes Function(Query$Announcements$announcements) then,
  ) = _CopyWithImpl$Query$Announcements$announcements;

  factory CopyWith$Query$Announcements$announcements.stub(TRes res) =
      _CopyWithStubImpl$Query$Announcements$announcements;

  TRes call({
    String? title,
    String? description,
    DateTime? startAt,
    String? url,
  });
}

class _CopyWithImpl$Query$Announcements$announcements<TRes>
    implements CopyWith$Query$Announcements$announcements<TRes> {
  _CopyWithImpl$Query$Announcements$announcements(
    this._instance,
    this._then,
  );

  final Query$Announcements$announcements _instance;

  final TRes Function(Query$Announcements$announcements) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? title = _undefined,
    Object? description = _undefined,
    Object? startAt = _undefined,
    Object? url = _undefined,
  }) =>
      _then(Query$Announcements$announcements(
        title: title == _undefined || title == null
            ? _instance.title
            : (title as String),
        description: description == _undefined || description == null
            ? _instance.description
            : (description as String),
        startAt: startAt == _undefined || startAt == null
            ? _instance.startAt
            : (startAt as DateTime),
        url: url == _undefined ? _instance.url : (url as String?),
      ));
}

class _CopyWithStubImpl$Query$Announcements$announcements<TRes>
    implements CopyWith$Query$Announcements$announcements<TRes> {
  _CopyWithStubImpl$Query$Announcements$announcements(this._res);

  TRes _res;

  call({
    String? title,
    String? description,
    DateTime? startAt,
    String? url,
  }) =>
      _res;
}
