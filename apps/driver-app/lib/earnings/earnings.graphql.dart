import '../schema.gql.dart';
import 'dart:async';
import 'package:flutter/widgets.dart' as widgets;
import 'package:gql/ast.dart';
import 'package:graphql/client.dart' as graphql;
import 'package:graphql_flutter/graphql_flutter.dart' as graphql_flutter;
import 'package:ridy/graphql/scalars/connection_cursor.dart';
import 'package:ridy/graphql/scalars/datetime.dart';
import 'package:ridy/graphql/scalars/timestamp.dart';

class Variables$Query$GetStats {
  factory Variables$Query$GetStats({
    required DateTime startDate,
    required DateTime endDate,
  }) =>
      Variables$Query$GetStats._({
        r'startDate': startDate,
        r'endDate': endDate,
      });

  Variables$Query$GetStats._(this._$data);

  factory Variables$Query$GetStats.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$startDate = data['startDate'];
    result$data['startDate'] = fromGraphQLDateTimeToDartDateTime(l$startDate);
    final l$endDate = data['endDate'];
    result$data['endDate'] = fromGraphQLDateTimeToDartDateTime(l$endDate);
    return Variables$Query$GetStats._(result$data);
  }

  Map<String, dynamic> _$data;

  DateTime get startDate => (_$data['startDate'] as DateTime);
  DateTime get endDate => (_$data['endDate'] as DateTime);
  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$startDate = startDate;
    result$data['startDate'] = fromDartDateTimeToGraphQLDateTime(l$startDate);
    final l$endDate = endDate;
    result$data['endDate'] = fromDartDateTimeToGraphQLDateTime(l$endDate);
    return result$data;
  }

  CopyWith$Variables$Query$GetStats<Variables$Query$GetStats> get copyWith =>
      CopyWith$Variables$Query$GetStats(
        this,
        (i) => i,
      );
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Variables$Query$GetStats) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$startDate = startDate;
    final lOther$startDate = other.startDate;
    if (l$startDate != lOther$startDate) {
      return false;
    }
    final l$endDate = endDate;
    final lOther$endDate = other.endDate;
    if (l$endDate != lOther$endDate) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$startDate = startDate;
    final l$endDate = endDate;
    return Object.hashAll([
      l$startDate,
      l$endDate,
    ]);
  }
}

abstract class CopyWith$Variables$Query$GetStats<TRes> {
  factory CopyWith$Variables$Query$GetStats(
    Variables$Query$GetStats instance,
    TRes Function(Variables$Query$GetStats) then,
  ) = _CopyWithImpl$Variables$Query$GetStats;

  factory CopyWith$Variables$Query$GetStats.stub(TRes res) =
      _CopyWithStubImpl$Variables$Query$GetStats;

  TRes call({
    DateTime? startDate,
    DateTime? endDate,
  });
}

class _CopyWithImpl$Variables$Query$GetStats<TRes>
    implements CopyWith$Variables$Query$GetStats<TRes> {
  _CopyWithImpl$Variables$Query$GetStats(
    this._instance,
    this._then,
  );

  final Variables$Query$GetStats _instance;

  final TRes Function(Variables$Query$GetStats) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? startDate = _undefined,
    Object? endDate = _undefined,
  }) =>
      _then(Variables$Query$GetStats._({
        ..._instance._$data,
        if (startDate != _undefined && startDate != null)
          'startDate': (startDate as DateTime),
        if (endDate != _undefined && endDate != null)
          'endDate': (endDate as DateTime),
      }));
}

class _CopyWithStubImpl$Variables$Query$GetStats<TRes>
    implements CopyWith$Variables$Query$GetStats<TRes> {
  _CopyWithStubImpl$Variables$Query$GetStats(this._res);

  TRes _res;

  call({
    DateTime? startDate,
    DateTime? endDate,
  }) =>
      _res;
}

class Query$GetStats {
  Query$GetStats({
    required this.getStatsNew,
    required this.orders,
    required this.orderAggregate,
  });

  factory Query$GetStats.fromJson(Map<String, dynamic> json) {
    final l$getStatsNew = json['getStatsNew'];
    final l$orders = json['orders'];
    final l$orderAggregate = json['orderAggregate'];
    return Query$GetStats(
      getStatsNew: Query$GetStats$getStatsNew.fromJson(
          (l$getStatsNew as Map<String, dynamic>)),
      orders:
          Query$GetStats$orders.fromJson((l$orders as Map<String, dynamic>)),
      orderAggregate: (l$orderAggregate as List<dynamic>)
          .map((e) => Query$GetStats$orderAggregate.fromJson(
              (e as Map<String, dynamic>)))
          .toList(),
    );
  }

  final Query$GetStats$getStatsNew getStatsNew;

  final Query$GetStats$orders orders;

  final List<Query$GetStats$orderAggregate> orderAggregate;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$getStatsNew = getStatsNew;
    _resultData['getStatsNew'] = l$getStatsNew.toJson();
    final l$orders = orders;
    _resultData['orders'] = l$orders.toJson();
    final l$orderAggregate = orderAggregate;
    _resultData['orderAggregate'] =
        l$orderAggregate.map((e) => e.toJson()).toList();
    return _resultData;
  }

  @override
  int get hashCode {
    final l$getStatsNew = getStatsNew;
    final l$orders = orders;
    final l$orderAggregate = orderAggregate;
    return Object.hashAll([
      l$getStatsNew,
      l$orders,
      Object.hashAll(l$orderAggregate.map((v) => v)),
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$GetStats) || runtimeType != other.runtimeType) {
      return false;
    }
    final l$getStatsNew = getStatsNew;
    final lOther$getStatsNew = other.getStatsNew;
    if (l$getStatsNew != lOther$getStatsNew) {
      return false;
    }
    final l$orders = orders;
    final lOther$orders = other.orders;
    if (l$orders != lOther$orders) {
      return false;
    }
    final l$orderAggregate = orderAggregate;
    final lOther$orderAggregate = other.orderAggregate;
    if (l$orderAggregate.length != lOther$orderAggregate.length) {
      return false;
    }
    for (int i = 0; i < l$orderAggregate.length; i++) {
      final l$orderAggregate$entry = l$orderAggregate[i];
      final lOther$orderAggregate$entry = lOther$orderAggregate[i];
      if (l$orderAggregate$entry != lOther$orderAggregate$entry) {
        return false;
      }
    }
    return true;
  }
}

extension UtilityExtension$Query$GetStats on Query$GetStats {
  CopyWith$Query$GetStats<Query$GetStats> get copyWith =>
      CopyWith$Query$GetStats(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$GetStats<TRes> {
  factory CopyWith$Query$GetStats(
    Query$GetStats instance,
    TRes Function(Query$GetStats) then,
  ) = _CopyWithImpl$Query$GetStats;

  factory CopyWith$Query$GetStats.stub(TRes res) =
      _CopyWithStubImpl$Query$GetStats;

  TRes call({
    Query$GetStats$getStatsNew? getStatsNew,
    Query$GetStats$orders? orders,
    List<Query$GetStats$orderAggregate>? orderAggregate,
  });
  CopyWith$Query$GetStats$getStatsNew<TRes> get getStatsNew;
  CopyWith$Query$GetStats$orders<TRes> get orders;
  TRes orderAggregate(
      Iterable<Query$GetStats$orderAggregate> Function(
              Iterable<
                  CopyWith$Query$GetStats$orderAggregate<
                      Query$GetStats$orderAggregate>>)
          _fn);
}

class _CopyWithImpl$Query$GetStats<TRes>
    implements CopyWith$Query$GetStats<TRes> {
  _CopyWithImpl$Query$GetStats(
    this._instance,
    this._then,
  );

  final Query$GetStats _instance;

  final TRes Function(Query$GetStats) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? getStatsNew = _undefined,
    Object? orders = _undefined,
    Object? orderAggregate = _undefined,
  }) =>
      _then(Query$GetStats(
        getStatsNew: getStatsNew == _undefined || getStatsNew == null
            ? _instance.getStatsNew
            : (getStatsNew as Query$GetStats$getStatsNew),
        orders: orders == _undefined || orders == null
            ? _instance.orders
            : (orders as Query$GetStats$orders),
        orderAggregate: orderAggregate == _undefined || orderAggregate == null
            ? _instance.orderAggregate
            : (orderAggregate as List<Query$GetStats$orderAggregate>),
      ));
  CopyWith$Query$GetStats$getStatsNew<TRes> get getStatsNew {
    final local$getStatsNew = _instance.getStatsNew;
    return CopyWith$Query$GetStats$getStatsNew(
        local$getStatsNew, (e) => call(getStatsNew: e));
  }

  CopyWith$Query$GetStats$orders<TRes> get orders {
    final local$orders = _instance.orders;
    return CopyWith$Query$GetStats$orders(local$orders, (e) => call(orders: e));
  }

  TRes orderAggregate(
          Iterable<Query$GetStats$orderAggregate> Function(
                  Iterable<
                      CopyWith$Query$GetStats$orderAggregate<
                          Query$GetStats$orderAggregate>>)
              _fn) =>
      call(
          orderAggregate: _fn(_instance.orderAggregate
              .map((e) => CopyWith$Query$GetStats$orderAggregate(
                    e,
                    (i) => i,
                  ))).toList());
}

class _CopyWithStubImpl$Query$GetStats<TRes>
    implements CopyWith$Query$GetStats<TRes> {
  _CopyWithStubImpl$Query$GetStats(this._res);

  TRes _res;

  call({
    Query$GetStats$getStatsNew? getStatsNew,
    Query$GetStats$orders? orders,
    List<Query$GetStats$orderAggregate>? orderAggregate,
  }) =>
      _res;
  CopyWith$Query$GetStats$getStatsNew<TRes> get getStatsNew =>
      CopyWith$Query$GetStats$getStatsNew.stub(_res);
  CopyWith$Query$GetStats$orders<TRes> get orders =>
      CopyWith$Query$GetStats$orders.stub(_res);
  orderAggregate(_fn) => _res;
}

const documentNodeQueryGetStats = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.query,
    name: NameNode(value: 'GetStats'),
    variableDefinitions: [
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'startDate')),
        type: NamedTypeNode(
          name: NameNode(value: 'DateTime'),
          isNonNull: true,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      ),
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'endDate')),
        type: NamedTypeNode(
          name: NameNode(value: 'DateTime'),
          isNonNull: true,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      ),
    ],
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
        name: NameNode(value: 'getStatsNew'),
        alias: null,
        arguments: [
          ArgumentNode(
            name: NameNode(value: 'timeframe'),
            value: EnumValueNode(name: NameNode(value: 'Daily')),
          ),
          ArgumentNode(
            name: NameNode(value: 'startDate'),
            value: VariableNode(name: NameNode(value: 'startDate')),
          ),
          ArgumentNode(
            name: NameNode(value: 'endDate'),
            value: VariableNode(name: NameNode(value: 'endDate')),
          ),
        ],
        directives: [],
        selectionSet: SelectionSetNode(selections: [
          FieldNode(
            name: NameNode(value: 'currency'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'dataset'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: SelectionSetNode(selections: [
              FieldNode(
                name: NameNode(value: 'count'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
              FieldNode(
                name: NameNode(value: 'current'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
              FieldNode(
                name: NameNode(value: 'distance'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
              FieldNode(
                name: NameNode(value: 'earning'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
              FieldNode(
                name: NameNode(value: 'name'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
              FieldNode(
                name: NameNode(value: 'time'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
            ]),
          ),
        ]),
      ),
      FieldNode(
        name: NameNode(value: 'orders'),
        alias: null,
        arguments: [
          ArgumentNode(
            name: NameNode(value: 'filter'),
            value: ObjectValueNode(fields: [
              ObjectFieldNode(
                name: NameNode(value: 'status'),
                value: ObjectValueNode(fields: [
                  ObjectFieldNode(
                    name: NameNode(value: 'in'),
                    value: ListValueNode(values: [
                      EnumValueNode(name: NameNode(value: 'Finished')),
                      EnumValueNode(name: NameNode(value: 'WaitingForReview')),
                    ]),
                  )
                ]),
              ),
              ObjectFieldNode(
                name: NameNode(value: 'createdOn'),
                value: ObjectValueNode(fields: [
                  ObjectFieldNode(
                    name: NameNode(value: 'between'),
                    value: ObjectValueNode(fields: [
                      ObjectFieldNode(
                        name: NameNode(value: 'lower'),
                        value: VariableNode(name: NameNode(value: 'startDate')),
                      ),
                      ObjectFieldNode(
                        name: NameNode(value: 'upper'),
                        value: VariableNode(name: NameNode(value: 'endDate')),
                      ),
                    ]),
                  )
                ]),
              ),
            ]),
          )
        ],
        directives: [],
        selectionSet: SelectionSetNode(selections: [
          FieldNode(
            name: NameNode(value: 'edges'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: SelectionSetNode(selections: [
              FieldNode(
                name: NameNode(value: 'node'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: SelectionSetNode(selections: [
                  FieldNode(
                    name: NameNode(value: 'id'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: null,
                  ),
                  FieldNode(
                    name: NameNode(value: 'status'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: null,
                  ),
                  FieldNode(
                    name: NameNode(value: 'createdOn'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: null,
                  ),
                  FieldNode(
                    name: NameNode(value: 'currency'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: null,
                  ),
                  FieldNode(
                    name: NameNode(value: 'costAfterCoupon'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: null,
                  ),
                  FieldNode(
                    name: NameNode(value: 'providerShare'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: null,
                  ),
                  FieldNode(
                    name: NameNode(value: 'service'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: SelectionSetNode(selections: [
                      FieldNode(
                        name: NameNode(value: 'name'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null,
                      )
                    ]),
                  ),
                ]),
              )
            ]),
          ),
          FieldNode(
            name: NameNode(value: 'pageInfo'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: SelectionSetNode(selections: [
              FieldNode(
                name: NameNode(value: 'hasNextPage'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
              FieldNode(
                name: NameNode(value: 'endCursor'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
              FieldNode(
                name: NameNode(value: 'startCursor'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
              FieldNode(
                name: NameNode(value: 'hasPreviousPage'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
            ]),
          ),
        ]),
      ),
      FieldNode(
        name: NameNode(value: 'orderAggregate'),
        alias: null,
        arguments: [
          ArgumentNode(
            name: NameNode(value: 'filter'),
            value: ObjectValueNode(fields: [
              ObjectFieldNode(
                name: NameNode(value: 'createdOn'),
                value: ObjectValueNode(fields: [
                  ObjectFieldNode(
                    name: NameNode(value: 'between'),
                    value: ObjectValueNode(fields: [
                      ObjectFieldNode(
                        name: NameNode(value: 'lower'),
                        value: VariableNode(name: NameNode(value: 'startDate')),
                      ),
                      ObjectFieldNode(
                        name: NameNode(value: 'upper'),
                        value: VariableNode(name: NameNode(value: 'endDate')),
                      ),
                    ]),
                  )
                ]),
              )
            ]),
          )
        ],
        directives: [],
        selectionSet: SelectionSetNode(selections: [
          FieldNode(
            name: NameNode(value: 'groupBy'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: SelectionSetNode(selections: [
              FieldNode(
                name: NameNode(value: 'createdOn'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              )
            ]),
          ),
          FieldNode(
            name: NameNode(value: 'count'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: SelectionSetNode(selections: [
              FieldNode(
                name: NameNode(value: 'id'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              )
            ]),
          ),
          FieldNode(
            name: NameNode(value: 'sum'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: SelectionSetNode(selections: [
              FieldNode(
                name: NameNode(value: 'costBest'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              )
            ]),
          ),
        ]),
      ),
    ]),
  ),
]);
Query$GetStats _parserFn$Query$GetStats(Map<String, dynamic> data) =>
    Query$GetStats.fromJson(data);
typedef OnQueryComplete$Query$GetStats = FutureOr<void> Function(
  Map<String, dynamic>?,
  Query$GetStats?,
);

class Options$Query$GetStats extends graphql.QueryOptions<Query$GetStats> {
  Options$Query$GetStats({
    String? operationName,
    required Variables$Query$GetStats variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Query$GetStats? typedOptimisticResult,
    Duration? pollInterval,
    graphql.Context? context,
    OnQueryComplete$Query$GetStats? onComplete,
    graphql.OnQueryError? onError,
  })  : onCompleteWithParsed = onComplete,
        super(
          variables: variables.toJson(),
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
                    data == null ? null : _parserFn$Query$GetStats(data),
                  ),
          onError: onError,
          document: documentNodeQueryGetStats,
          parserFn: _parserFn$Query$GetStats,
        );

  final OnQueryComplete$Query$GetStats? onCompleteWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onComplete == null
            ? super.properties
            : super.properties.where((property) => property != onComplete),
        onCompleteWithParsed,
      ];
}

class WatchOptions$Query$GetStats
    extends graphql.WatchQueryOptions<Query$GetStats> {
  WatchOptions$Query$GetStats({
    String? operationName,
    required Variables$Query$GetStats variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Query$GetStats? typedOptimisticResult,
    graphql.Context? context,
    Duration? pollInterval,
    bool? eagerlyFetchResults,
    bool carryForwardDataOnException = true,
    bool fetchResults = false,
  }) : super(
          variables: variables.toJson(),
          operationName: operationName,
          fetchPolicy: fetchPolicy,
          errorPolicy: errorPolicy,
          cacheRereadPolicy: cacheRereadPolicy,
          optimisticResult: optimisticResult ?? typedOptimisticResult?.toJson(),
          context: context,
          document: documentNodeQueryGetStats,
          pollInterval: pollInterval,
          eagerlyFetchResults: eagerlyFetchResults,
          carryForwardDataOnException: carryForwardDataOnException,
          fetchResults: fetchResults,
          parserFn: _parserFn$Query$GetStats,
        );
}

class FetchMoreOptions$Query$GetStats extends graphql.FetchMoreOptions {
  FetchMoreOptions$Query$GetStats({
    required graphql.UpdateQuery updateQuery,
    required Variables$Query$GetStats variables,
  }) : super(
          updateQuery: updateQuery,
          variables: variables.toJson(),
          document: documentNodeQueryGetStats,
        );
}

extension ClientExtension$Query$GetStats on graphql.GraphQLClient {
  Future<graphql.QueryResult<Query$GetStats>> query$GetStats(
          Options$Query$GetStats options) async =>
      await this.query(options);
  graphql.ObservableQuery<Query$GetStats> watchQuery$GetStats(
          WatchOptions$Query$GetStats options) =>
      this.watchQuery(options);
  void writeQuery$GetStats({
    required Query$GetStats data,
    required Variables$Query$GetStats variables,
    bool broadcast = true,
  }) =>
      this.writeQuery(
        graphql.Request(
          operation: graphql.Operation(document: documentNodeQueryGetStats),
          variables: variables.toJson(),
        ),
        data: data.toJson(),
        broadcast: broadcast,
      );
  Query$GetStats? readQuery$GetStats({
    required Variables$Query$GetStats variables,
    bool optimistic = true,
  }) {
    final result = this.readQuery(
      graphql.Request(
        operation: graphql.Operation(document: documentNodeQueryGetStats),
        variables: variables.toJson(),
      ),
      optimistic: optimistic,
    );
    return result == null ? null : Query$GetStats.fromJson(result);
  }
}

graphql_flutter.QueryHookResult<Query$GetStats> useQuery$GetStats(
        Options$Query$GetStats options) =>
    graphql_flutter.useQuery(options);
graphql.ObservableQuery<Query$GetStats> useWatchQuery$GetStats(
        WatchOptions$Query$GetStats options) =>
    graphql_flutter.useWatchQuery(options);

class Query$GetStats$Widget extends graphql_flutter.Query<Query$GetStats> {
  Query$GetStats$Widget({
    widgets.Key? key,
    required Options$Query$GetStats options,
    required graphql_flutter.QueryBuilder<Query$GetStats> builder,
  }) : super(
          key: key,
          options: options,
          builder: builder,
        );
}

class Query$GetStats$getStatsNew {
  Query$GetStats$getStatsNew({
    required this.currency,
    required this.dataset,
  });

  factory Query$GetStats$getStatsNew.fromJson(Map<String, dynamic> json) {
    final l$currency = json['currency'];
    final l$dataset = json['dataset'];
    return Query$GetStats$getStatsNew(
      currency: (l$currency as String),
      dataset: (l$dataset as List<dynamic>)
          .map((e) => Query$GetStats$getStatsNew$dataset.fromJson(
              (e as Map<String, dynamic>)))
          .toList(),
    );
  }

  final String currency;

  final List<Query$GetStats$getStatsNew$dataset> dataset;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$currency = currency;
    _resultData['currency'] = l$currency;
    final l$dataset = dataset;
    _resultData['dataset'] = l$dataset.map((e) => e.toJson()).toList();
    return _resultData;
  }

  @override
  int get hashCode {
    final l$currency = currency;
    final l$dataset = dataset;
    return Object.hashAll([
      l$currency,
      Object.hashAll(l$dataset.map((v) => v)),
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$GetStats$getStatsNew) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$currency = currency;
    final lOther$currency = other.currency;
    if (l$currency != lOther$currency) {
      return false;
    }
    final l$dataset = dataset;
    final lOther$dataset = other.dataset;
    if (l$dataset.length != lOther$dataset.length) {
      return false;
    }
    for (int i = 0; i < l$dataset.length; i++) {
      final l$dataset$entry = l$dataset[i];
      final lOther$dataset$entry = lOther$dataset[i];
      if (l$dataset$entry != lOther$dataset$entry) {
        return false;
      }
    }
    return true;
  }
}

extension UtilityExtension$Query$GetStats$getStatsNew
    on Query$GetStats$getStatsNew {
  CopyWith$Query$GetStats$getStatsNew<Query$GetStats$getStatsNew>
      get copyWith => CopyWith$Query$GetStats$getStatsNew(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$GetStats$getStatsNew<TRes> {
  factory CopyWith$Query$GetStats$getStatsNew(
    Query$GetStats$getStatsNew instance,
    TRes Function(Query$GetStats$getStatsNew) then,
  ) = _CopyWithImpl$Query$GetStats$getStatsNew;

  factory CopyWith$Query$GetStats$getStatsNew.stub(TRes res) =
      _CopyWithStubImpl$Query$GetStats$getStatsNew;

  TRes call({
    String? currency,
    List<Query$GetStats$getStatsNew$dataset>? dataset,
  });
  TRes dataset(
      Iterable<Query$GetStats$getStatsNew$dataset> Function(
              Iterable<
                  CopyWith$Query$GetStats$getStatsNew$dataset<
                      Query$GetStats$getStatsNew$dataset>>)
          _fn);
}

class _CopyWithImpl$Query$GetStats$getStatsNew<TRes>
    implements CopyWith$Query$GetStats$getStatsNew<TRes> {
  _CopyWithImpl$Query$GetStats$getStatsNew(
    this._instance,
    this._then,
  );

  final Query$GetStats$getStatsNew _instance;

  final TRes Function(Query$GetStats$getStatsNew) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? currency = _undefined,
    Object? dataset = _undefined,
  }) =>
      _then(Query$GetStats$getStatsNew(
        currency: currency == _undefined || currency == null
            ? _instance.currency
            : (currency as String),
        dataset: dataset == _undefined || dataset == null
            ? _instance.dataset
            : (dataset as List<Query$GetStats$getStatsNew$dataset>),
      ));
  TRes dataset(
          Iterable<Query$GetStats$getStatsNew$dataset> Function(
                  Iterable<
                      CopyWith$Query$GetStats$getStatsNew$dataset<
                          Query$GetStats$getStatsNew$dataset>>)
              _fn) =>
      call(
          dataset: _fn(_instance.dataset
              .map((e) => CopyWith$Query$GetStats$getStatsNew$dataset(
                    e,
                    (i) => i,
                  ))).toList());
}

class _CopyWithStubImpl$Query$GetStats$getStatsNew<TRes>
    implements CopyWith$Query$GetStats$getStatsNew<TRes> {
  _CopyWithStubImpl$Query$GetStats$getStatsNew(this._res);

  TRes _res;

  call({
    String? currency,
    List<Query$GetStats$getStatsNew$dataset>? dataset,
  }) =>
      _res;
  dataset(_fn) => _res;
}

class Query$GetStats$getStatsNew$dataset {
  Query$GetStats$getStatsNew$dataset({
    required this.count,
    required this.current,
    required this.distance,
    required this.earning,
    required this.name,
    required this.time,
  });

  factory Query$GetStats$getStatsNew$dataset.fromJson(
      Map<String, dynamic> json) {
    final l$count = json['count'];
    final l$current = json['current'];
    final l$distance = json['distance'];
    final l$earning = json['earning'];
    final l$name = json['name'];
    final l$time = json['time'];
    return Query$GetStats$getStatsNew$dataset(
      count: (l$count as num).toDouble(),
      current: (l$current as String),
      distance: (l$distance as num).toDouble(),
      earning: (l$earning as num).toDouble(),
      name: (l$name as String),
      time: (l$time as num).toDouble(),
    );
  }

  final double count;

  final String current;

  final double distance;

  final double earning;

  final String name;

  final double time;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$count = count;
    _resultData['count'] = l$count;
    final l$current = current;
    _resultData['current'] = l$current;
    final l$distance = distance;
    _resultData['distance'] = l$distance;
    final l$earning = earning;
    _resultData['earning'] = l$earning;
    final l$name = name;
    _resultData['name'] = l$name;
    final l$time = time;
    _resultData['time'] = l$time;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$count = count;
    final l$current = current;
    final l$distance = distance;
    final l$earning = earning;
    final l$name = name;
    final l$time = time;
    return Object.hashAll([
      l$count,
      l$current,
      l$distance,
      l$earning,
      l$name,
      l$time,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$GetStats$getStatsNew$dataset) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$count = count;
    final lOther$count = other.count;
    if (l$count != lOther$count) {
      return false;
    }
    final l$current = current;
    final lOther$current = other.current;
    if (l$current != lOther$current) {
      return false;
    }
    final l$distance = distance;
    final lOther$distance = other.distance;
    if (l$distance != lOther$distance) {
      return false;
    }
    final l$earning = earning;
    final lOther$earning = other.earning;
    if (l$earning != lOther$earning) {
      return false;
    }
    final l$name = name;
    final lOther$name = other.name;
    if (l$name != lOther$name) {
      return false;
    }
    final l$time = time;
    final lOther$time = other.time;
    if (l$time != lOther$time) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Query$GetStats$getStatsNew$dataset
    on Query$GetStats$getStatsNew$dataset {
  CopyWith$Query$GetStats$getStatsNew$dataset<
          Query$GetStats$getStatsNew$dataset>
      get copyWith => CopyWith$Query$GetStats$getStatsNew$dataset(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$GetStats$getStatsNew$dataset<TRes> {
  factory CopyWith$Query$GetStats$getStatsNew$dataset(
    Query$GetStats$getStatsNew$dataset instance,
    TRes Function(Query$GetStats$getStatsNew$dataset) then,
  ) = _CopyWithImpl$Query$GetStats$getStatsNew$dataset;

  factory CopyWith$Query$GetStats$getStatsNew$dataset.stub(TRes res) =
      _CopyWithStubImpl$Query$GetStats$getStatsNew$dataset;

  TRes call({
    double? count,
    String? current,
    double? distance,
    double? earning,
    String? name,
    double? time,
  });
}

class _CopyWithImpl$Query$GetStats$getStatsNew$dataset<TRes>
    implements CopyWith$Query$GetStats$getStatsNew$dataset<TRes> {
  _CopyWithImpl$Query$GetStats$getStatsNew$dataset(
    this._instance,
    this._then,
  );

  final Query$GetStats$getStatsNew$dataset _instance;

  final TRes Function(Query$GetStats$getStatsNew$dataset) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? count = _undefined,
    Object? current = _undefined,
    Object? distance = _undefined,
    Object? earning = _undefined,
    Object? name = _undefined,
    Object? time = _undefined,
  }) =>
      _then(Query$GetStats$getStatsNew$dataset(
        count: count == _undefined || count == null
            ? _instance.count
            : (count as double),
        current: current == _undefined || current == null
            ? _instance.current
            : (current as String),
        distance: distance == _undefined || distance == null
            ? _instance.distance
            : (distance as double),
        earning: earning == _undefined || earning == null
            ? _instance.earning
            : (earning as double),
        name: name == _undefined || name == null
            ? _instance.name
            : (name as String),
        time: time == _undefined || time == null
            ? _instance.time
            : (time as double),
      ));
}

class _CopyWithStubImpl$Query$GetStats$getStatsNew$dataset<TRes>
    implements CopyWith$Query$GetStats$getStatsNew$dataset<TRes> {
  _CopyWithStubImpl$Query$GetStats$getStatsNew$dataset(this._res);

  TRes _res;

  call({
    double? count,
    String? current,
    double? distance,
    double? earning,
    String? name,
    double? time,
  }) =>
      _res;
}

class Query$GetStats$orders {
  Query$GetStats$orders({
    required this.edges,
    required this.pageInfo,
  });

  factory Query$GetStats$orders.fromJson(Map<String, dynamic> json) {
    final l$edges = json['edges'];
    final l$pageInfo = json['pageInfo'];
    return Query$GetStats$orders(
      edges: (l$edges as List<dynamic>)
          .map((e) =>
              Query$GetStats$orders$edges.fromJson((e as Map<String, dynamic>)))
          .toList(),
      pageInfo: Query$GetStats$orders$pageInfo.fromJson(
          (l$pageInfo as Map<String, dynamic>)),
    );
  }

  final List<Query$GetStats$orders$edges> edges;

  final Query$GetStats$orders$pageInfo pageInfo;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$edges = edges;
    _resultData['edges'] = l$edges.map((e) => e.toJson()).toList();
    final l$pageInfo = pageInfo;
    _resultData['pageInfo'] = l$pageInfo.toJson();
    return _resultData;
  }

  @override
  int get hashCode {
    final l$edges = edges;
    final l$pageInfo = pageInfo;
    return Object.hashAll([
      Object.hashAll(l$edges.map((v) => v)),
      l$pageInfo,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$GetStats$orders) || runtimeType != other.runtimeType) {
      return false;
    }
    final l$edges = edges;
    final lOther$edges = other.edges;
    if (l$edges.length != lOther$edges.length) {
      return false;
    }
    for (int i = 0; i < l$edges.length; i++) {
      final l$edges$entry = l$edges[i];
      final lOther$edges$entry = lOther$edges[i];
      if (l$edges$entry != lOther$edges$entry) {
        return false;
      }
    }
    final l$pageInfo = pageInfo;
    final lOther$pageInfo = other.pageInfo;
    if (l$pageInfo != lOther$pageInfo) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Query$GetStats$orders on Query$GetStats$orders {
  CopyWith$Query$GetStats$orders<Query$GetStats$orders> get copyWith =>
      CopyWith$Query$GetStats$orders(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$GetStats$orders<TRes> {
  factory CopyWith$Query$GetStats$orders(
    Query$GetStats$orders instance,
    TRes Function(Query$GetStats$orders) then,
  ) = _CopyWithImpl$Query$GetStats$orders;

  factory CopyWith$Query$GetStats$orders.stub(TRes res) =
      _CopyWithStubImpl$Query$GetStats$orders;

  TRes call({
    List<Query$GetStats$orders$edges>? edges,
    Query$GetStats$orders$pageInfo? pageInfo,
  });
  TRes edges(
      Iterable<Query$GetStats$orders$edges> Function(
              Iterable<
                  CopyWith$Query$GetStats$orders$edges<
                      Query$GetStats$orders$edges>>)
          _fn);
  CopyWith$Query$GetStats$orders$pageInfo<TRes> get pageInfo;
}

class _CopyWithImpl$Query$GetStats$orders<TRes>
    implements CopyWith$Query$GetStats$orders<TRes> {
  _CopyWithImpl$Query$GetStats$orders(
    this._instance,
    this._then,
  );

  final Query$GetStats$orders _instance;

  final TRes Function(Query$GetStats$orders) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? edges = _undefined,
    Object? pageInfo = _undefined,
  }) =>
      _then(Query$GetStats$orders(
        edges: edges == _undefined || edges == null
            ? _instance.edges
            : (edges as List<Query$GetStats$orders$edges>),
        pageInfo: pageInfo == _undefined || pageInfo == null
            ? _instance.pageInfo
            : (pageInfo as Query$GetStats$orders$pageInfo),
      ));
  TRes edges(
          Iterable<Query$GetStats$orders$edges> Function(
                  Iterable<
                      CopyWith$Query$GetStats$orders$edges<
                          Query$GetStats$orders$edges>>)
              _fn) =>
      call(
          edges: _fn(
              _instance.edges.map((e) => CopyWith$Query$GetStats$orders$edges(
                    e,
                    (i) => i,
                  ))).toList());
  CopyWith$Query$GetStats$orders$pageInfo<TRes> get pageInfo {
    final local$pageInfo = _instance.pageInfo;
    return CopyWith$Query$GetStats$orders$pageInfo(
        local$pageInfo, (e) => call(pageInfo: e));
  }
}

class _CopyWithStubImpl$Query$GetStats$orders<TRes>
    implements CopyWith$Query$GetStats$orders<TRes> {
  _CopyWithStubImpl$Query$GetStats$orders(this._res);

  TRes _res;

  call({
    List<Query$GetStats$orders$edges>? edges,
    Query$GetStats$orders$pageInfo? pageInfo,
  }) =>
      _res;
  edges(_fn) => _res;
  CopyWith$Query$GetStats$orders$pageInfo<TRes> get pageInfo =>
      CopyWith$Query$GetStats$orders$pageInfo.stub(_res);
}

class Query$GetStats$orders$edges {
  Query$GetStats$orders$edges({required this.node});

  factory Query$GetStats$orders$edges.fromJson(Map<String, dynamic> json) {
    final l$node = json['node'];
    return Query$GetStats$orders$edges(
        node: Query$GetStats$orders$edges$node.fromJson(
            (l$node as Map<String, dynamic>)));
  }

  final Query$GetStats$orders$edges$node node;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$node = node;
    _resultData['node'] = l$node.toJson();
    return _resultData;
  }

  @override
  int get hashCode {
    final l$node = node;
    return Object.hashAll([l$node]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$GetStats$orders$edges) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$node = node;
    final lOther$node = other.node;
    if (l$node != lOther$node) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Query$GetStats$orders$edges
    on Query$GetStats$orders$edges {
  CopyWith$Query$GetStats$orders$edges<Query$GetStats$orders$edges>
      get copyWith => CopyWith$Query$GetStats$orders$edges(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$GetStats$orders$edges<TRes> {
  factory CopyWith$Query$GetStats$orders$edges(
    Query$GetStats$orders$edges instance,
    TRes Function(Query$GetStats$orders$edges) then,
  ) = _CopyWithImpl$Query$GetStats$orders$edges;

  factory CopyWith$Query$GetStats$orders$edges.stub(TRes res) =
      _CopyWithStubImpl$Query$GetStats$orders$edges;

  TRes call({Query$GetStats$orders$edges$node? node});
  CopyWith$Query$GetStats$orders$edges$node<TRes> get node;
}

class _CopyWithImpl$Query$GetStats$orders$edges<TRes>
    implements CopyWith$Query$GetStats$orders$edges<TRes> {
  _CopyWithImpl$Query$GetStats$orders$edges(
    this._instance,
    this._then,
  );

  final Query$GetStats$orders$edges _instance;

  final TRes Function(Query$GetStats$orders$edges) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? node = _undefined}) => _then(Query$GetStats$orders$edges(
      node: node == _undefined || node == null
          ? _instance.node
          : (node as Query$GetStats$orders$edges$node)));
  CopyWith$Query$GetStats$orders$edges$node<TRes> get node {
    final local$node = _instance.node;
    return CopyWith$Query$GetStats$orders$edges$node(
        local$node, (e) => call(node: e));
  }
}

class _CopyWithStubImpl$Query$GetStats$orders$edges<TRes>
    implements CopyWith$Query$GetStats$orders$edges<TRes> {
  _CopyWithStubImpl$Query$GetStats$orders$edges(this._res);

  TRes _res;

  call({Query$GetStats$orders$edges$node? node}) => _res;
  CopyWith$Query$GetStats$orders$edges$node<TRes> get node =>
      CopyWith$Query$GetStats$orders$edges$node.stub(_res);
}

class Query$GetStats$orders$edges$node {
  Query$GetStats$orders$edges$node({
    required this.id,
    required this.status,
    required this.createdOn,
    required this.currency,
    required this.costAfterCoupon,
    required this.providerShare,
    this.service,
  });

  factory Query$GetStats$orders$edges$node.fromJson(Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$status = json['status'];
    final l$createdOn = json['createdOn'];
    final l$currency = json['currency'];
    final l$costAfterCoupon = json['costAfterCoupon'];
    final l$providerShare = json['providerShare'];
    final l$service = json['service'];
    return Query$GetStats$orders$edges$node(
      id: (l$id as String),
      status: fromJson$Enum$OrderStatus((l$status as String)),
      createdOn: fromGraphQLTimestampToDartDateTime(l$createdOn),
      currency: (l$currency as String),
      costAfterCoupon: (l$costAfterCoupon as num).toDouble(),
      providerShare: (l$providerShare as num).toDouble(),
      service: l$service == null
          ? null
          : Query$GetStats$orders$edges$node$service.fromJson(
              (l$service as Map<String, dynamic>)),
    );
  }

  final String id;

  final Enum$OrderStatus status;

  final DateTime createdOn;

  final String currency;

  final double costAfterCoupon;

  final double providerShare;

  final Query$GetStats$orders$edges$node$service? service;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = l$id;
    final l$status = status;
    _resultData['status'] = toJson$Enum$OrderStatus(l$status);
    final l$createdOn = createdOn;
    _resultData['createdOn'] = fromDartDateTimeToGraphQLTimestamp(l$createdOn);
    final l$currency = currency;
    _resultData['currency'] = l$currency;
    final l$costAfterCoupon = costAfterCoupon;
    _resultData['costAfterCoupon'] = l$costAfterCoupon;
    final l$providerShare = providerShare;
    _resultData['providerShare'] = l$providerShare;
    final l$service = service;
    _resultData['service'] = l$service?.toJson();
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$status = status;
    final l$createdOn = createdOn;
    final l$currency = currency;
    final l$costAfterCoupon = costAfterCoupon;
    final l$providerShare = providerShare;
    final l$service = service;
    return Object.hashAll([
      l$id,
      l$status,
      l$createdOn,
      l$currency,
      l$costAfterCoupon,
      l$providerShare,
      l$service,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$GetStats$orders$edges$node) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
      return false;
    }
    final l$status = status;
    final lOther$status = other.status;
    if (l$status != lOther$status) {
      return false;
    }
    final l$createdOn = createdOn;
    final lOther$createdOn = other.createdOn;
    if (l$createdOn != lOther$createdOn) {
      return false;
    }
    final l$currency = currency;
    final lOther$currency = other.currency;
    if (l$currency != lOther$currency) {
      return false;
    }
    final l$costAfterCoupon = costAfterCoupon;
    final lOther$costAfterCoupon = other.costAfterCoupon;
    if (l$costAfterCoupon != lOther$costAfterCoupon) {
      return false;
    }
    final l$providerShare = providerShare;
    final lOther$providerShare = other.providerShare;
    if (l$providerShare != lOther$providerShare) {
      return false;
    }
    final l$service = service;
    final lOther$service = other.service;
    if (l$service != lOther$service) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Query$GetStats$orders$edges$node
    on Query$GetStats$orders$edges$node {
  CopyWith$Query$GetStats$orders$edges$node<Query$GetStats$orders$edges$node>
      get copyWith => CopyWith$Query$GetStats$orders$edges$node(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$GetStats$orders$edges$node<TRes> {
  factory CopyWith$Query$GetStats$orders$edges$node(
    Query$GetStats$orders$edges$node instance,
    TRes Function(Query$GetStats$orders$edges$node) then,
  ) = _CopyWithImpl$Query$GetStats$orders$edges$node;

  factory CopyWith$Query$GetStats$orders$edges$node.stub(TRes res) =
      _CopyWithStubImpl$Query$GetStats$orders$edges$node;

  TRes call({
    String? id,
    Enum$OrderStatus? status,
    DateTime? createdOn,
    String? currency,
    double? costAfterCoupon,
    double? providerShare,
    Query$GetStats$orders$edges$node$service? service,
  });
  CopyWith$Query$GetStats$orders$edges$node$service<TRes> get service;
}

class _CopyWithImpl$Query$GetStats$orders$edges$node<TRes>
    implements CopyWith$Query$GetStats$orders$edges$node<TRes> {
  _CopyWithImpl$Query$GetStats$orders$edges$node(
    this._instance,
    this._then,
  );

  final Query$GetStats$orders$edges$node _instance;

  final TRes Function(Query$GetStats$orders$edges$node) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? status = _undefined,
    Object? createdOn = _undefined,
    Object? currency = _undefined,
    Object? costAfterCoupon = _undefined,
    Object? providerShare = _undefined,
    Object? service = _undefined,
  }) =>
      _then(Query$GetStats$orders$edges$node(
        id: id == _undefined || id == null ? _instance.id : (id as String),
        status: status == _undefined || status == null
            ? _instance.status
            : (status as Enum$OrderStatus),
        createdOn: createdOn == _undefined || createdOn == null
            ? _instance.createdOn
            : (createdOn as DateTime),
        currency: currency == _undefined || currency == null
            ? _instance.currency
            : (currency as String),
        costAfterCoupon:
            costAfterCoupon == _undefined || costAfterCoupon == null
                ? _instance.costAfterCoupon
                : (costAfterCoupon as double),
        providerShare: providerShare == _undefined || providerShare == null
            ? _instance.providerShare
            : (providerShare as double),
        service: service == _undefined
            ? _instance.service
            : (service as Query$GetStats$orders$edges$node$service?),
      ));
  CopyWith$Query$GetStats$orders$edges$node$service<TRes> get service {
    final local$service = _instance.service;
    return local$service == null
        ? CopyWith$Query$GetStats$orders$edges$node$service.stub(
            _then(_instance))
        : CopyWith$Query$GetStats$orders$edges$node$service(
            local$service, (e) => call(service: e));
  }
}

class _CopyWithStubImpl$Query$GetStats$orders$edges$node<TRes>
    implements CopyWith$Query$GetStats$orders$edges$node<TRes> {
  _CopyWithStubImpl$Query$GetStats$orders$edges$node(this._res);

  TRes _res;

  call({
    String? id,
    Enum$OrderStatus? status,
    DateTime? createdOn,
    String? currency,
    double? costAfterCoupon,
    double? providerShare,
    Query$GetStats$orders$edges$node$service? service,
  }) =>
      _res;
  CopyWith$Query$GetStats$orders$edges$node$service<TRes> get service =>
      CopyWith$Query$GetStats$orders$edges$node$service.stub(_res);
}

class Query$GetStats$orders$edges$node$service {
  Query$GetStats$orders$edges$node$service({required this.name});

  factory Query$GetStats$orders$edges$node$service.fromJson(
      Map<String, dynamic> json) {
    final l$name = json['name'];
    return Query$GetStats$orders$edges$node$service(name: (l$name as String));
  }

  final String name;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$name = name;
    _resultData['name'] = l$name;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$name = name;
    return Object.hashAll([l$name]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$GetStats$orders$edges$node$service) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$name = name;
    final lOther$name = other.name;
    if (l$name != lOther$name) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Query$GetStats$orders$edges$node$service
    on Query$GetStats$orders$edges$node$service {
  CopyWith$Query$GetStats$orders$edges$node$service<
          Query$GetStats$orders$edges$node$service>
      get copyWith => CopyWith$Query$GetStats$orders$edges$node$service(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$GetStats$orders$edges$node$service<TRes> {
  factory CopyWith$Query$GetStats$orders$edges$node$service(
    Query$GetStats$orders$edges$node$service instance,
    TRes Function(Query$GetStats$orders$edges$node$service) then,
  ) = _CopyWithImpl$Query$GetStats$orders$edges$node$service;

  factory CopyWith$Query$GetStats$orders$edges$node$service.stub(TRes res) =
      _CopyWithStubImpl$Query$GetStats$orders$edges$node$service;

  TRes call({String? name});
}

class _CopyWithImpl$Query$GetStats$orders$edges$node$service<TRes>
    implements CopyWith$Query$GetStats$orders$edges$node$service<TRes> {
  _CopyWithImpl$Query$GetStats$orders$edges$node$service(
    this._instance,
    this._then,
  );

  final Query$GetStats$orders$edges$node$service _instance;

  final TRes Function(Query$GetStats$orders$edges$node$service) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? name = _undefined}) =>
      _then(Query$GetStats$orders$edges$node$service(
          name: name == _undefined || name == null
              ? _instance.name
              : (name as String)));
}

class _CopyWithStubImpl$Query$GetStats$orders$edges$node$service<TRes>
    implements CopyWith$Query$GetStats$orders$edges$node$service<TRes> {
  _CopyWithStubImpl$Query$GetStats$orders$edges$node$service(this._res);

  TRes _res;

  call({String? name}) => _res;
}

class Query$GetStats$orders$pageInfo {
  Query$GetStats$orders$pageInfo({
    this.hasNextPage,
    this.endCursor,
    this.startCursor,
    this.hasPreviousPage,
  });

  factory Query$GetStats$orders$pageInfo.fromJson(Map<String, dynamic> json) {
    final l$hasNextPage = json['hasNextPage'];
    final l$endCursor = json['endCursor'];
    final l$startCursor = json['startCursor'];
    final l$hasPreviousPage = json['hasPreviousPage'];
    return Query$GetStats$orders$pageInfo(
      hasNextPage: (l$hasNextPage as bool?),
      endCursor: l$endCursor == null
          ? null
          : fromGraphQLConnectionCursorToDartString(l$endCursor),
      startCursor: l$startCursor == null
          ? null
          : fromGraphQLConnectionCursorToDartString(l$startCursor),
      hasPreviousPage: (l$hasPreviousPage as bool?),
    );
  }

  final bool? hasNextPage;

  final String? endCursor;

  final String? startCursor;

  final bool? hasPreviousPage;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$hasNextPage = hasNextPage;
    _resultData['hasNextPage'] = l$hasNextPage;
    final l$endCursor = endCursor;
    _resultData['endCursor'] = l$endCursor == null
        ? null
        : fromDartStringToGraphQLConnectionCursor(l$endCursor);
    final l$startCursor = startCursor;
    _resultData['startCursor'] = l$startCursor == null
        ? null
        : fromDartStringToGraphQLConnectionCursor(l$startCursor);
    final l$hasPreviousPage = hasPreviousPage;
    _resultData['hasPreviousPage'] = l$hasPreviousPage;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$hasNextPage = hasNextPage;
    final l$endCursor = endCursor;
    final l$startCursor = startCursor;
    final l$hasPreviousPage = hasPreviousPage;
    return Object.hashAll([
      l$hasNextPage,
      l$endCursor,
      l$startCursor,
      l$hasPreviousPage,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$GetStats$orders$pageInfo) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$hasNextPage = hasNextPage;
    final lOther$hasNextPage = other.hasNextPage;
    if (l$hasNextPage != lOther$hasNextPage) {
      return false;
    }
    final l$endCursor = endCursor;
    final lOther$endCursor = other.endCursor;
    if (l$endCursor != lOther$endCursor) {
      return false;
    }
    final l$startCursor = startCursor;
    final lOther$startCursor = other.startCursor;
    if (l$startCursor != lOther$startCursor) {
      return false;
    }
    final l$hasPreviousPage = hasPreviousPage;
    final lOther$hasPreviousPage = other.hasPreviousPage;
    if (l$hasPreviousPage != lOther$hasPreviousPage) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Query$GetStats$orders$pageInfo
    on Query$GetStats$orders$pageInfo {
  CopyWith$Query$GetStats$orders$pageInfo<Query$GetStats$orders$pageInfo>
      get copyWith => CopyWith$Query$GetStats$orders$pageInfo(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$GetStats$orders$pageInfo<TRes> {
  factory CopyWith$Query$GetStats$orders$pageInfo(
    Query$GetStats$orders$pageInfo instance,
    TRes Function(Query$GetStats$orders$pageInfo) then,
  ) = _CopyWithImpl$Query$GetStats$orders$pageInfo;

  factory CopyWith$Query$GetStats$orders$pageInfo.stub(TRes res) =
      _CopyWithStubImpl$Query$GetStats$orders$pageInfo;

  TRes call({
    bool? hasNextPage,
    String? endCursor,
    String? startCursor,
    bool? hasPreviousPage,
  });
}

class _CopyWithImpl$Query$GetStats$orders$pageInfo<TRes>
    implements CopyWith$Query$GetStats$orders$pageInfo<TRes> {
  _CopyWithImpl$Query$GetStats$orders$pageInfo(
    this._instance,
    this._then,
  );

  final Query$GetStats$orders$pageInfo _instance;

  final TRes Function(Query$GetStats$orders$pageInfo) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? hasNextPage = _undefined,
    Object? endCursor = _undefined,
    Object? startCursor = _undefined,
    Object? hasPreviousPage = _undefined,
  }) =>
      _then(Query$GetStats$orders$pageInfo(
        hasNextPage: hasNextPage == _undefined
            ? _instance.hasNextPage
            : (hasNextPage as bool?),
        endCursor: endCursor == _undefined
            ? _instance.endCursor
            : (endCursor as String?),
        startCursor: startCursor == _undefined
            ? _instance.startCursor
            : (startCursor as String?),
        hasPreviousPage: hasPreviousPage == _undefined
            ? _instance.hasPreviousPage
            : (hasPreviousPage as bool?),
      ));
}

class _CopyWithStubImpl$Query$GetStats$orders$pageInfo<TRes>
    implements CopyWith$Query$GetStats$orders$pageInfo<TRes> {
  _CopyWithStubImpl$Query$GetStats$orders$pageInfo(this._res);

  TRes _res;

  call({
    bool? hasNextPage,
    String? endCursor,
    String? startCursor,
    bool? hasPreviousPage,
  }) =>
      _res;
}

class Query$GetStats$orderAggregate {
  Query$GetStats$orderAggregate({
    this.groupBy,
    this.count,
    this.sum,
  });

  factory Query$GetStats$orderAggregate.fromJson(Map<String, dynamic> json) {
    final l$groupBy = json['groupBy'];
    final l$count = json['count'];
    final l$sum = json['sum'];
    return Query$GetStats$orderAggregate(
      groupBy: l$groupBy == null
          ? null
          : Query$GetStats$orderAggregate$groupBy.fromJson(
              (l$groupBy as Map<String, dynamic>)),
      count: l$count == null
          ? null
          : Query$GetStats$orderAggregate$count.fromJson(
              (l$count as Map<String, dynamic>)),
      sum: l$sum == null
          ? null
          : Query$GetStats$orderAggregate$sum.fromJson(
              (l$sum as Map<String, dynamic>)),
    );
  }

  final Query$GetStats$orderAggregate$groupBy? groupBy;

  final Query$GetStats$orderAggregate$count? count;

  final Query$GetStats$orderAggregate$sum? sum;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$groupBy = groupBy;
    _resultData['groupBy'] = l$groupBy?.toJson();
    final l$count = count;
    _resultData['count'] = l$count?.toJson();
    final l$sum = sum;
    _resultData['sum'] = l$sum?.toJson();
    return _resultData;
  }

  @override
  int get hashCode {
    final l$groupBy = groupBy;
    final l$count = count;
    final l$sum = sum;
    return Object.hashAll([
      l$groupBy,
      l$count,
      l$sum,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$GetStats$orderAggregate) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$groupBy = groupBy;
    final lOther$groupBy = other.groupBy;
    if (l$groupBy != lOther$groupBy) {
      return false;
    }
    final l$count = count;
    final lOther$count = other.count;
    if (l$count != lOther$count) {
      return false;
    }
    final l$sum = sum;
    final lOther$sum = other.sum;
    if (l$sum != lOther$sum) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Query$GetStats$orderAggregate
    on Query$GetStats$orderAggregate {
  CopyWith$Query$GetStats$orderAggregate<Query$GetStats$orderAggregate>
      get copyWith => CopyWith$Query$GetStats$orderAggregate(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$GetStats$orderAggregate<TRes> {
  factory CopyWith$Query$GetStats$orderAggregate(
    Query$GetStats$orderAggregate instance,
    TRes Function(Query$GetStats$orderAggregate) then,
  ) = _CopyWithImpl$Query$GetStats$orderAggregate;

  factory CopyWith$Query$GetStats$orderAggregate.stub(TRes res) =
      _CopyWithStubImpl$Query$GetStats$orderAggregate;

  TRes call({
    Query$GetStats$orderAggregate$groupBy? groupBy,
    Query$GetStats$orderAggregate$count? count,
    Query$GetStats$orderAggregate$sum? sum,
  });
  CopyWith$Query$GetStats$orderAggregate$groupBy<TRes> get groupBy;
  CopyWith$Query$GetStats$orderAggregate$count<TRes> get count;
  CopyWith$Query$GetStats$orderAggregate$sum<TRes> get sum;
}

class _CopyWithImpl$Query$GetStats$orderAggregate<TRes>
    implements CopyWith$Query$GetStats$orderAggregate<TRes> {
  _CopyWithImpl$Query$GetStats$orderAggregate(
    this._instance,
    this._then,
  );

  final Query$GetStats$orderAggregate _instance;

  final TRes Function(Query$GetStats$orderAggregate) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? groupBy = _undefined,
    Object? count = _undefined,
    Object? sum = _undefined,
  }) =>
      _then(Query$GetStats$orderAggregate(
        groupBy: groupBy == _undefined
            ? _instance.groupBy
            : (groupBy as Query$GetStats$orderAggregate$groupBy?),
        count: count == _undefined
            ? _instance.count
            : (count as Query$GetStats$orderAggregate$count?),
        sum: sum == _undefined
            ? _instance.sum
            : (sum as Query$GetStats$orderAggregate$sum?),
      ));
  CopyWith$Query$GetStats$orderAggregate$groupBy<TRes> get groupBy {
    final local$groupBy = _instance.groupBy;
    return local$groupBy == null
        ? CopyWith$Query$GetStats$orderAggregate$groupBy.stub(_then(_instance))
        : CopyWith$Query$GetStats$orderAggregate$groupBy(
            local$groupBy, (e) => call(groupBy: e));
  }

  CopyWith$Query$GetStats$orderAggregate$count<TRes> get count {
    final local$count = _instance.count;
    return local$count == null
        ? CopyWith$Query$GetStats$orderAggregate$count.stub(_then(_instance))
        : CopyWith$Query$GetStats$orderAggregate$count(
            local$count, (e) => call(count: e));
  }

  CopyWith$Query$GetStats$orderAggregate$sum<TRes> get sum {
    final local$sum = _instance.sum;
    return local$sum == null
        ? CopyWith$Query$GetStats$orderAggregate$sum.stub(_then(_instance))
        : CopyWith$Query$GetStats$orderAggregate$sum(
            local$sum, (e) => call(sum: e));
  }
}

class _CopyWithStubImpl$Query$GetStats$orderAggregate<TRes>
    implements CopyWith$Query$GetStats$orderAggregate<TRes> {
  _CopyWithStubImpl$Query$GetStats$orderAggregate(this._res);

  TRes _res;

  call({
    Query$GetStats$orderAggregate$groupBy? groupBy,
    Query$GetStats$orderAggregate$count? count,
    Query$GetStats$orderAggregate$sum? sum,
  }) =>
      _res;
  CopyWith$Query$GetStats$orderAggregate$groupBy<TRes> get groupBy =>
      CopyWith$Query$GetStats$orderAggregate$groupBy.stub(_res);
  CopyWith$Query$GetStats$orderAggregate$count<TRes> get count =>
      CopyWith$Query$GetStats$orderAggregate$count.stub(_res);
  CopyWith$Query$GetStats$orderAggregate$sum<TRes> get sum =>
      CopyWith$Query$GetStats$orderAggregate$sum.stub(_res);
}

class Query$GetStats$orderAggregate$groupBy {
  Query$GetStats$orderAggregate$groupBy({this.createdOn});

  factory Query$GetStats$orderAggregate$groupBy.fromJson(
      Map<String, dynamic> json) {
    final l$createdOn = json['createdOn'];
    return Query$GetStats$orderAggregate$groupBy(
        createdOn: l$createdOn == null
            ? null
            : fromGraphQLTimestampToDartDateTime(l$createdOn));
  }

  final DateTime? createdOn;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$createdOn = createdOn;
    _resultData['createdOn'] = l$createdOn == null
        ? null
        : fromDartDateTimeToGraphQLTimestamp(l$createdOn);
    return _resultData;
  }

  @override
  int get hashCode {
    final l$createdOn = createdOn;
    return Object.hashAll([l$createdOn]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$GetStats$orderAggregate$groupBy) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$createdOn = createdOn;
    final lOther$createdOn = other.createdOn;
    if (l$createdOn != lOther$createdOn) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Query$GetStats$orderAggregate$groupBy
    on Query$GetStats$orderAggregate$groupBy {
  CopyWith$Query$GetStats$orderAggregate$groupBy<
          Query$GetStats$orderAggregate$groupBy>
      get copyWith => CopyWith$Query$GetStats$orderAggregate$groupBy(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$GetStats$orderAggregate$groupBy<TRes> {
  factory CopyWith$Query$GetStats$orderAggregate$groupBy(
    Query$GetStats$orderAggregate$groupBy instance,
    TRes Function(Query$GetStats$orderAggregate$groupBy) then,
  ) = _CopyWithImpl$Query$GetStats$orderAggregate$groupBy;

  factory CopyWith$Query$GetStats$orderAggregate$groupBy.stub(TRes res) =
      _CopyWithStubImpl$Query$GetStats$orderAggregate$groupBy;

  TRes call({DateTime? createdOn});
}

class _CopyWithImpl$Query$GetStats$orderAggregate$groupBy<TRes>
    implements CopyWith$Query$GetStats$orderAggregate$groupBy<TRes> {
  _CopyWithImpl$Query$GetStats$orderAggregate$groupBy(
    this._instance,
    this._then,
  );

  final Query$GetStats$orderAggregate$groupBy _instance;

  final TRes Function(Query$GetStats$orderAggregate$groupBy) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? createdOn = _undefined}) =>
      _then(Query$GetStats$orderAggregate$groupBy(
          createdOn: createdOn == _undefined
              ? _instance.createdOn
              : (createdOn as DateTime?)));
}

class _CopyWithStubImpl$Query$GetStats$orderAggregate$groupBy<TRes>
    implements CopyWith$Query$GetStats$orderAggregate$groupBy<TRes> {
  _CopyWithStubImpl$Query$GetStats$orderAggregate$groupBy(this._res);

  TRes _res;

  call({DateTime? createdOn}) => _res;
}

class Query$GetStats$orderAggregate$count {
  Query$GetStats$orderAggregate$count({this.id});

  factory Query$GetStats$orderAggregate$count.fromJson(
      Map<String, dynamic> json) {
    final l$id = json['id'];
    return Query$GetStats$orderAggregate$count(id: (l$id as int?));
  }

  final int? id;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = l$id;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    return Object.hashAll([l$id]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$GetStats$orderAggregate$count) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Query$GetStats$orderAggregate$count
    on Query$GetStats$orderAggregate$count {
  CopyWith$Query$GetStats$orderAggregate$count<
          Query$GetStats$orderAggregate$count>
      get copyWith => CopyWith$Query$GetStats$orderAggregate$count(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$GetStats$orderAggregate$count<TRes> {
  factory CopyWith$Query$GetStats$orderAggregate$count(
    Query$GetStats$orderAggregate$count instance,
    TRes Function(Query$GetStats$orderAggregate$count) then,
  ) = _CopyWithImpl$Query$GetStats$orderAggregate$count;

  factory CopyWith$Query$GetStats$orderAggregate$count.stub(TRes res) =
      _CopyWithStubImpl$Query$GetStats$orderAggregate$count;

  TRes call({int? id});
}

class _CopyWithImpl$Query$GetStats$orderAggregate$count<TRes>
    implements CopyWith$Query$GetStats$orderAggregate$count<TRes> {
  _CopyWithImpl$Query$GetStats$orderAggregate$count(
    this._instance,
    this._then,
  );

  final Query$GetStats$orderAggregate$count _instance;

  final TRes Function(Query$GetStats$orderAggregate$count) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? id = _undefined}) =>
      _then(Query$GetStats$orderAggregate$count(
          id: id == _undefined ? _instance.id : (id as int?)));
}

class _CopyWithStubImpl$Query$GetStats$orderAggregate$count<TRes>
    implements CopyWith$Query$GetStats$orderAggregate$count<TRes> {
  _CopyWithStubImpl$Query$GetStats$orderAggregate$count(this._res);

  TRes _res;

  call({int? id}) => _res;
}

class Query$GetStats$orderAggregate$sum {
  Query$GetStats$orderAggregate$sum({this.costBest});

  factory Query$GetStats$orderAggregate$sum.fromJson(
      Map<String, dynamic> json) {
    final l$costBest = json['costBest'];
    return Query$GetStats$orderAggregate$sum(
        costBest: (l$costBest as num?)?.toDouble());
  }

  final double? costBest;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$costBest = costBest;
    _resultData['costBest'] = l$costBest;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$costBest = costBest;
    return Object.hashAll([l$costBest]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$GetStats$orderAggregate$sum) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$costBest = costBest;
    final lOther$costBest = other.costBest;
    if (l$costBest != lOther$costBest) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Query$GetStats$orderAggregate$sum
    on Query$GetStats$orderAggregate$sum {
  CopyWith$Query$GetStats$orderAggregate$sum<Query$GetStats$orderAggregate$sum>
      get copyWith => CopyWith$Query$GetStats$orderAggregate$sum(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$GetStats$orderAggregate$sum<TRes> {
  factory CopyWith$Query$GetStats$orderAggregate$sum(
    Query$GetStats$orderAggregate$sum instance,
    TRes Function(Query$GetStats$orderAggregate$sum) then,
  ) = _CopyWithImpl$Query$GetStats$orderAggregate$sum;

  factory CopyWith$Query$GetStats$orderAggregate$sum.stub(TRes res) =
      _CopyWithStubImpl$Query$GetStats$orderAggregate$sum;

  TRes call({double? costBest});
}

class _CopyWithImpl$Query$GetStats$orderAggregate$sum<TRes>
    implements CopyWith$Query$GetStats$orderAggregate$sum<TRes> {
  _CopyWithImpl$Query$GetStats$orderAggregate$sum(
    this._instance,
    this._then,
  );

  final Query$GetStats$orderAggregate$sum _instance;

  final TRes Function(Query$GetStats$orderAggregate$sum) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? costBest = _undefined}) =>
      _then(Query$GetStats$orderAggregate$sum(
          costBest: costBest == _undefined
              ? _instance.costBest
              : (costBest as double?)));
}

class _CopyWithStubImpl$Query$GetStats$orderAggregate$sum<TRes>
    implements CopyWith$Query$GetStats$orderAggregate$sum<TRes> {
  _CopyWithStubImpl$Query$GetStats$orderAggregate$sum(this._res);

  TRes _res;

  call({double? costBest}) => _res;
}
