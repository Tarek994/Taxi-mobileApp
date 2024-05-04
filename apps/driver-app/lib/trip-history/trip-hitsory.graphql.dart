import '../graphql/order.fragment.graphql.dart';
import '../schema.gql.dart';
import 'dart:async';
import 'package:flutter/widgets.dart' as widgets;
import 'package:gql/ast.dart';
import 'package:graphql/client.dart' as graphql;
import 'package:graphql_flutter/graphql_flutter.dart' as graphql_flutter;
import 'package:ridy/graphql/scalars/connection_cursor.dart';
import 'package:ridy/graphql/scalars/timestamp.dart';

class Query$History {
  Query$History({required this.orders});

  factory Query$History.fromJson(Map<String, dynamic> json) {
    final l$orders = json['orders'];
    return Query$History(
        orders:
            Query$History$orders.fromJson((l$orders as Map<String, dynamic>)));
  }

  final Query$History$orders orders;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$orders = orders;
    _resultData['orders'] = l$orders.toJson();
    return _resultData;
  }

  @override
  int get hashCode {
    final l$orders = orders;
    return Object.hashAll([l$orders]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$History) || runtimeType != other.runtimeType) {
      return false;
    }
    final l$orders = orders;
    final lOther$orders = other.orders;
    if (l$orders != lOther$orders) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Query$History on Query$History {
  CopyWith$Query$History<Query$History> get copyWith => CopyWith$Query$History(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$History<TRes> {
  factory CopyWith$Query$History(
    Query$History instance,
    TRes Function(Query$History) then,
  ) = _CopyWithImpl$Query$History;

  factory CopyWith$Query$History.stub(TRes res) =
      _CopyWithStubImpl$Query$History;

  TRes call({Query$History$orders? orders});
  CopyWith$Query$History$orders<TRes> get orders;
}

class _CopyWithImpl$Query$History<TRes>
    implements CopyWith$Query$History<TRes> {
  _CopyWithImpl$Query$History(
    this._instance,
    this._then,
  );

  final Query$History _instance;

  final TRes Function(Query$History) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? orders = _undefined}) => _then(Query$History(
      orders: orders == _undefined || orders == null
          ? _instance.orders
          : (orders as Query$History$orders)));
  CopyWith$Query$History$orders<TRes> get orders {
    final local$orders = _instance.orders;
    return CopyWith$Query$History$orders(local$orders, (e) => call(orders: e));
  }
}

class _CopyWithStubImpl$Query$History<TRes>
    implements CopyWith$Query$History<TRes> {
  _CopyWithStubImpl$Query$History(this._res);

  TRes _res;

  call({Query$History$orders? orders}) => _res;
  CopyWith$Query$History$orders<TRes> get orders =>
      CopyWith$Query$History$orders.stub(_res);
}

const documentNodeQueryHistory = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.query,
    name: NameNode(value: 'History'),
    variableDefinitions: [],
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
        name: NameNode(value: 'orders'),
        alias: null,
        arguments: [
          ArgumentNode(
            name: NameNode(value: 'sorting'),
            value: ObjectValueNode(fields: [
              ObjectFieldNode(
                name: NameNode(value: 'field'),
                value: EnumValueNode(name: NameNode(value: 'id')),
              ),
              ObjectFieldNode(
                name: NameNode(value: 'direction'),
                value: EnumValueNode(name: NameNode(value: 'DESC')),
              ),
            ]),
          ),
          ArgumentNode(
            name: NameNode(value: 'paging'),
            value: ObjectValueNode(fields: [
              ObjectFieldNode(
                name: NameNode(value: 'first'),
                value: IntValueNode(value: '20'),
              )
            ]),
          ),
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
      )
    ]),
  ),
]);
Query$History _parserFn$Query$History(Map<String, dynamic> data) =>
    Query$History.fromJson(data);
typedef OnQueryComplete$Query$History = FutureOr<void> Function(
  Map<String, dynamic>?,
  Query$History?,
);

class Options$Query$History extends graphql.QueryOptions<Query$History> {
  Options$Query$History({
    String? operationName,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Query$History? typedOptimisticResult,
    Duration? pollInterval,
    graphql.Context? context,
    OnQueryComplete$Query$History? onComplete,
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
                    data == null ? null : _parserFn$Query$History(data),
                  ),
          onError: onError,
          document: documentNodeQueryHistory,
          parserFn: _parserFn$Query$History,
        );

  final OnQueryComplete$Query$History? onCompleteWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onComplete == null
            ? super.properties
            : super.properties.where((property) => property != onComplete),
        onCompleteWithParsed,
      ];
}

class WatchOptions$Query$History
    extends graphql.WatchQueryOptions<Query$History> {
  WatchOptions$Query$History({
    String? operationName,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Query$History? typedOptimisticResult,
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
          document: documentNodeQueryHistory,
          pollInterval: pollInterval,
          eagerlyFetchResults: eagerlyFetchResults,
          carryForwardDataOnException: carryForwardDataOnException,
          fetchResults: fetchResults,
          parserFn: _parserFn$Query$History,
        );
}

class FetchMoreOptions$Query$History extends graphql.FetchMoreOptions {
  FetchMoreOptions$Query$History({required graphql.UpdateQuery updateQuery})
      : super(
          updateQuery: updateQuery,
          document: documentNodeQueryHistory,
        );
}

extension ClientExtension$Query$History on graphql.GraphQLClient {
  Future<graphql.QueryResult<Query$History>> query$History(
          [Options$Query$History? options]) async =>
      await this.query(options ?? Options$Query$History());
  graphql.ObservableQuery<Query$History> watchQuery$History(
          [WatchOptions$Query$History? options]) =>
      this.watchQuery(options ?? WatchOptions$Query$History());
  void writeQuery$History({
    required Query$History data,
    bool broadcast = true,
  }) =>
      this.writeQuery(
        graphql.Request(
            operation: graphql.Operation(document: documentNodeQueryHistory)),
        data: data.toJson(),
        broadcast: broadcast,
      );
  Query$History? readQuery$History({bool optimistic = true}) {
    final result = this.readQuery(
      graphql.Request(
          operation: graphql.Operation(document: documentNodeQueryHistory)),
      optimistic: optimistic,
    );
    return result == null ? null : Query$History.fromJson(result);
  }
}

graphql_flutter.QueryHookResult<Query$History> useQuery$History(
        [Options$Query$History? options]) =>
    graphql_flutter.useQuery(options ?? Options$Query$History());
graphql.ObservableQuery<Query$History> useWatchQuery$History(
        [WatchOptions$Query$History? options]) =>
    graphql_flutter.useWatchQuery(options ?? WatchOptions$Query$History());

class Query$History$Widget extends graphql_flutter.Query<Query$History> {
  Query$History$Widget({
    widgets.Key? key,
    Options$Query$History? options,
    required graphql_flutter.QueryBuilder<Query$History> builder,
  }) : super(
          key: key,
          options: options ?? Options$Query$History(),
          builder: builder,
        );
}

class Query$History$orders {
  Query$History$orders({
    required this.edges,
    required this.pageInfo,
  });

  factory Query$History$orders.fromJson(Map<String, dynamic> json) {
    final l$edges = json['edges'];
    final l$pageInfo = json['pageInfo'];
    return Query$History$orders(
      edges: (l$edges as List<dynamic>)
          .map((e) =>
              Query$History$orders$edges.fromJson((e as Map<String, dynamic>)))
          .toList(),
      pageInfo: Query$History$orders$pageInfo.fromJson(
          (l$pageInfo as Map<String, dynamic>)),
    );
  }

  final List<Query$History$orders$edges> edges;

  final Query$History$orders$pageInfo pageInfo;

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
    if (!(other is Query$History$orders) || runtimeType != other.runtimeType) {
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

extension UtilityExtension$Query$History$orders on Query$History$orders {
  CopyWith$Query$History$orders<Query$History$orders> get copyWith =>
      CopyWith$Query$History$orders(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$History$orders<TRes> {
  factory CopyWith$Query$History$orders(
    Query$History$orders instance,
    TRes Function(Query$History$orders) then,
  ) = _CopyWithImpl$Query$History$orders;

  factory CopyWith$Query$History$orders.stub(TRes res) =
      _CopyWithStubImpl$Query$History$orders;

  TRes call({
    List<Query$History$orders$edges>? edges,
    Query$History$orders$pageInfo? pageInfo,
  });
  TRes edges(
      Iterable<Query$History$orders$edges> Function(
              Iterable<
                  CopyWith$Query$History$orders$edges<
                      Query$History$orders$edges>>)
          _fn);
  CopyWith$Query$History$orders$pageInfo<TRes> get pageInfo;
}

class _CopyWithImpl$Query$History$orders<TRes>
    implements CopyWith$Query$History$orders<TRes> {
  _CopyWithImpl$Query$History$orders(
    this._instance,
    this._then,
  );

  final Query$History$orders _instance;

  final TRes Function(Query$History$orders) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? edges = _undefined,
    Object? pageInfo = _undefined,
  }) =>
      _then(Query$History$orders(
        edges: edges == _undefined || edges == null
            ? _instance.edges
            : (edges as List<Query$History$orders$edges>),
        pageInfo: pageInfo == _undefined || pageInfo == null
            ? _instance.pageInfo
            : (pageInfo as Query$History$orders$pageInfo),
      ));
  TRes edges(
          Iterable<Query$History$orders$edges> Function(
                  Iterable<
                      CopyWith$Query$History$orders$edges<
                          Query$History$orders$edges>>)
              _fn) =>
      call(
          edges: _fn(
              _instance.edges.map((e) => CopyWith$Query$History$orders$edges(
                    e,
                    (i) => i,
                  ))).toList());
  CopyWith$Query$History$orders$pageInfo<TRes> get pageInfo {
    final local$pageInfo = _instance.pageInfo;
    return CopyWith$Query$History$orders$pageInfo(
        local$pageInfo, (e) => call(pageInfo: e));
  }
}

class _CopyWithStubImpl$Query$History$orders<TRes>
    implements CopyWith$Query$History$orders<TRes> {
  _CopyWithStubImpl$Query$History$orders(this._res);

  TRes _res;

  call({
    List<Query$History$orders$edges>? edges,
    Query$History$orders$pageInfo? pageInfo,
  }) =>
      _res;
  edges(_fn) => _res;
  CopyWith$Query$History$orders$pageInfo<TRes> get pageInfo =>
      CopyWith$Query$History$orders$pageInfo.stub(_res);
}

class Query$History$orders$edges {
  Query$History$orders$edges({required this.node});

  factory Query$History$orders$edges.fromJson(Map<String, dynamic> json) {
    final l$node = json['node'];
    return Query$History$orders$edges(
        node: Query$History$orders$edges$node.fromJson(
            (l$node as Map<String, dynamic>)));
  }

  final Query$History$orders$edges$node node;

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
    if (!(other is Query$History$orders$edges) ||
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

extension UtilityExtension$Query$History$orders$edges
    on Query$History$orders$edges {
  CopyWith$Query$History$orders$edges<Query$History$orders$edges>
      get copyWith => CopyWith$Query$History$orders$edges(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$History$orders$edges<TRes> {
  factory CopyWith$Query$History$orders$edges(
    Query$History$orders$edges instance,
    TRes Function(Query$History$orders$edges) then,
  ) = _CopyWithImpl$Query$History$orders$edges;

  factory CopyWith$Query$History$orders$edges.stub(TRes res) =
      _CopyWithStubImpl$Query$History$orders$edges;

  TRes call({Query$History$orders$edges$node? node});
  CopyWith$Query$History$orders$edges$node<TRes> get node;
}

class _CopyWithImpl$Query$History$orders$edges<TRes>
    implements CopyWith$Query$History$orders$edges<TRes> {
  _CopyWithImpl$Query$History$orders$edges(
    this._instance,
    this._then,
  );

  final Query$History$orders$edges _instance;

  final TRes Function(Query$History$orders$edges) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? node = _undefined}) => _then(Query$History$orders$edges(
      node: node == _undefined || node == null
          ? _instance.node
          : (node as Query$History$orders$edges$node)));
  CopyWith$Query$History$orders$edges$node<TRes> get node {
    final local$node = _instance.node;
    return CopyWith$Query$History$orders$edges$node(
        local$node, (e) => call(node: e));
  }
}

class _CopyWithStubImpl$Query$History$orders$edges<TRes>
    implements CopyWith$Query$History$orders$edges<TRes> {
  _CopyWithStubImpl$Query$History$orders$edges(this._res);

  TRes _res;

  call({Query$History$orders$edges$node? node}) => _res;
  CopyWith$Query$History$orders$edges$node<TRes> get node =>
      CopyWith$Query$History$orders$edges$node.stub(_res);
}

class Query$History$orders$edges$node {
  Query$History$orders$edges$node({
    required this.id,
    required this.status,
    required this.createdOn,
    required this.currency,
    required this.costAfterCoupon,
    required this.providerShare,
    this.service,
  });

  factory Query$History$orders$edges$node.fromJson(Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$status = json['status'];
    final l$createdOn = json['createdOn'];
    final l$currency = json['currency'];
    final l$costAfterCoupon = json['costAfterCoupon'];
    final l$providerShare = json['providerShare'];
    final l$service = json['service'];
    return Query$History$orders$edges$node(
      id: (l$id as String),
      status: fromJson$Enum$OrderStatus((l$status as String)),
      createdOn: fromGraphQLTimestampToDartDateTime(l$createdOn),
      currency: (l$currency as String),
      costAfterCoupon: (l$costAfterCoupon as num).toDouble(),
      providerShare: (l$providerShare as num).toDouble(),
      service: l$service == null
          ? null
          : Query$History$orders$edges$node$service.fromJson(
              (l$service as Map<String, dynamic>)),
    );
  }

  final String id;

  final Enum$OrderStatus status;

  final DateTime createdOn;

  final String currency;

  final double costAfterCoupon;

  final double providerShare;

  final Query$History$orders$edges$node$service? service;

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
    if (!(other is Query$History$orders$edges$node) ||
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

extension UtilityExtension$Query$History$orders$edges$node
    on Query$History$orders$edges$node {
  CopyWith$Query$History$orders$edges$node<Query$History$orders$edges$node>
      get copyWith => CopyWith$Query$History$orders$edges$node(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$History$orders$edges$node<TRes> {
  factory CopyWith$Query$History$orders$edges$node(
    Query$History$orders$edges$node instance,
    TRes Function(Query$History$orders$edges$node) then,
  ) = _CopyWithImpl$Query$History$orders$edges$node;

  factory CopyWith$Query$History$orders$edges$node.stub(TRes res) =
      _CopyWithStubImpl$Query$History$orders$edges$node;

  TRes call({
    String? id,
    Enum$OrderStatus? status,
    DateTime? createdOn,
    String? currency,
    double? costAfterCoupon,
    double? providerShare,
    Query$History$orders$edges$node$service? service,
  });
  CopyWith$Query$History$orders$edges$node$service<TRes> get service;
}

class _CopyWithImpl$Query$History$orders$edges$node<TRes>
    implements CopyWith$Query$History$orders$edges$node<TRes> {
  _CopyWithImpl$Query$History$orders$edges$node(
    this._instance,
    this._then,
  );

  final Query$History$orders$edges$node _instance;

  final TRes Function(Query$History$orders$edges$node) _then;

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
      _then(Query$History$orders$edges$node(
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
            : (service as Query$History$orders$edges$node$service?),
      ));
  CopyWith$Query$History$orders$edges$node$service<TRes> get service {
    final local$service = _instance.service;
    return local$service == null
        ? CopyWith$Query$History$orders$edges$node$service.stub(
            _then(_instance))
        : CopyWith$Query$History$orders$edges$node$service(
            local$service, (e) => call(service: e));
  }
}

class _CopyWithStubImpl$Query$History$orders$edges$node<TRes>
    implements CopyWith$Query$History$orders$edges$node<TRes> {
  _CopyWithStubImpl$Query$History$orders$edges$node(this._res);

  TRes _res;

  call({
    String? id,
    Enum$OrderStatus? status,
    DateTime? createdOn,
    String? currency,
    double? costAfterCoupon,
    double? providerShare,
    Query$History$orders$edges$node$service? service,
  }) =>
      _res;
  CopyWith$Query$History$orders$edges$node$service<TRes> get service =>
      CopyWith$Query$History$orders$edges$node$service.stub(_res);
}

class Query$History$orders$edges$node$service {
  Query$History$orders$edges$node$service({required this.name});

  factory Query$History$orders$edges$node$service.fromJson(
      Map<String, dynamic> json) {
    final l$name = json['name'];
    return Query$History$orders$edges$node$service(name: (l$name as String));
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
    if (!(other is Query$History$orders$edges$node$service) ||
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

extension UtilityExtension$Query$History$orders$edges$node$service
    on Query$History$orders$edges$node$service {
  CopyWith$Query$History$orders$edges$node$service<
          Query$History$orders$edges$node$service>
      get copyWith => CopyWith$Query$History$orders$edges$node$service(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$History$orders$edges$node$service<TRes> {
  factory CopyWith$Query$History$orders$edges$node$service(
    Query$History$orders$edges$node$service instance,
    TRes Function(Query$History$orders$edges$node$service) then,
  ) = _CopyWithImpl$Query$History$orders$edges$node$service;

  factory CopyWith$Query$History$orders$edges$node$service.stub(TRes res) =
      _CopyWithStubImpl$Query$History$orders$edges$node$service;

  TRes call({String? name});
}

class _CopyWithImpl$Query$History$orders$edges$node$service<TRes>
    implements CopyWith$Query$History$orders$edges$node$service<TRes> {
  _CopyWithImpl$Query$History$orders$edges$node$service(
    this._instance,
    this._then,
  );

  final Query$History$orders$edges$node$service _instance;

  final TRes Function(Query$History$orders$edges$node$service) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? name = _undefined}) =>
      _then(Query$History$orders$edges$node$service(
          name: name == _undefined || name == null
              ? _instance.name
              : (name as String)));
}

class _CopyWithStubImpl$Query$History$orders$edges$node$service<TRes>
    implements CopyWith$Query$History$orders$edges$node$service<TRes> {
  _CopyWithStubImpl$Query$History$orders$edges$node$service(this._res);

  TRes _res;

  call({String? name}) => _res;
}

class Query$History$orders$pageInfo {
  Query$History$orders$pageInfo({
    this.hasNextPage,
    this.endCursor,
    this.startCursor,
    this.hasPreviousPage,
  });

  factory Query$History$orders$pageInfo.fromJson(Map<String, dynamic> json) {
    final l$hasNextPage = json['hasNextPage'];
    final l$endCursor = json['endCursor'];
    final l$startCursor = json['startCursor'];
    final l$hasPreviousPage = json['hasPreviousPage'];
    return Query$History$orders$pageInfo(
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
    if (!(other is Query$History$orders$pageInfo) ||
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

extension UtilityExtension$Query$History$orders$pageInfo
    on Query$History$orders$pageInfo {
  CopyWith$Query$History$orders$pageInfo<Query$History$orders$pageInfo>
      get copyWith => CopyWith$Query$History$orders$pageInfo(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$History$orders$pageInfo<TRes> {
  factory CopyWith$Query$History$orders$pageInfo(
    Query$History$orders$pageInfo instance,
    TRes Function(Query$History$orders$pageInfo) then,
  ) = _CopyWithImpl$Query$History$orders$pageInfo;

  factory CopyWith$Query$History$orders$pageInfo.stub(TRes res) =
      _CopyWithStubImpl$Query$History$orders$pageInfo;

  TRes call({
    bool? hasNextPage,
    String? endCursor,
    String? startCursor,
    bool? hasPreviousPage,
  });
}

class _CopyWithImpl$Query$History$orders$pageInfo<TRes>
    implements CopyWith$Query$History$orders$pageInfo<TRes> {
  _CopyWithImpl$Query$History$orders$pageInfo(
    this._instance,
    this._then,
  );

  final Query$History$orders$pageInfo _instance;

  final TRes Function(Query$History$orders$pageInfo) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? hasNextPage = _undefined,
    Object? endCursor = _undefined,
    Object? startCursor = _undefined,
    Object? hasPreviousPage = _undefined,
  }) =>
      _then(Query$History$orders$pageInfo(
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

class _CopyWithStubImpl$Query$History$orders$pageInfo<TRes>
    implements CopyWith$Query$History$orders$pageInfo<TRes> {
  _CopyWithStubImpl$Query$History$orders$pageInfo(this._res);

  TRes _res;

  call({
    bool? hasNextPage,
    String? endCursor,
    String? startCursor,
    bool? hasPreviousPage,
  }) =>
      _res;
}

class Variables$Query$GetOrderDetails {
  factory Variables$Query$GetOrderDetails({required String id}) =>
      Variables$Query$GetOrderDetails._({
        r'id': id,
      });

  Variables$Query$GetOrderDetails._(this._$data);

  factory Variables$Query$GetOrderDetails.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$id = data['id'];
    result$data['id'] = (l$id as String);
    return Variables$Query$GetOrderDetails._(result$data);
  }

  Map<String, dynamic> _$data;

  String get id => (_$data['id'] as String);
  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$id = id;
    result$data['id'] = l$id;
    return result$data;
  }

  CopyWith$Variables$Query$GetOrderDetails<Variables$Query$GetOrderDetails>
      get copyWith => CopyWith$Variables$Query$GetOrderDetails(
            this,
            (i) => i,
          );
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Variables$Query$GetOrderDetails) ||
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

  @override
  int get hashCode {
    final l$id = id;
    return Object.hashAll([l$id]);
  }
}

abstract class CopyWith$Variables$Query$GetOrderDetails<TRes> {
  factory CopyWith$Variables$Query$GetOrderDetails(
    Variables$Query$GetOrderDetails instance,
    TRes Function(Variables$Query$GetOrderDetails) then,
  ) = _CopyWithImpl$Variables$Query$GetOrderDetails;

  factory CopyWith$Variables$Query$GetOrderDetails.stub(TRes res) =
      _CopyWithStubImpl$Variables$Query$GetOrderDetails;

  TRes call({String? id});
}

class _CopyWithImpl$Variables$Query$GetOrderDetails<TRes>
    implements CopyWith$Variables$Query$GetOrderDetails<TRes> {
  _CopyWithImpl$Variables$Query$GetOrderDetails(
    this._instance,
    this._then,
  );

  final Variables$Query$GetOrderDetails _instance;

  final TRes Function(Variables$Query$GetOrderDetails) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? id = _undefined}) =>
      _then(Variables$Query$GetOrderDetails._({
        ..._instance._$data,
        if (id != _undefined && id != null) 'id': (id as String),
      }));
}

class _CopyWithStubImpl$Variables$Query$GetOrderDetails<TRes>
    implements CopyWith$Variables$Query$GetOrderDetails<TRes> {
  _CopyWithStubImpl$Variables$Query$GetOrderDetails(this._res);

  TRes _res;

  call({String? id}) => _res;
}

class Query$GetOrderDetails {
  Query$GetOrderDetails({this.order});

  factory Query$GetOrderDetails.fromJson(Map<String, dynamic> json) {
    final l$order = json['order'];
    return Query$GetOrderDetails(
        order: l$order == null
            ? null
            : Query$GetOrderDetails$order.fromJson(
                (l$order as Map<String, dynamic>)));
  }

  final Query$GetOrderDetails$order? order;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$order = order;
    _resultData['order'] = l$order?.toJson();
    return _resultData;
  }

  @override
  int get hashCode {
    final l$order = order;
    return Object.hashAll([l$order]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$GetOrderDetails) || runtimeType != other.runtimeType) {
      return false;
    }
    final l$order = order;
    final lOther$order = other.order;
    if (l$order != lOther$order) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Query$GetOrderDetails on Query$GetOrderDetails {
  CopyWith$Query$GetOrderDetails<Query$GetOrderDetails> get copyWith =>
      CopyWith$Query$GetOrderDetails(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$GetOrderDetails<TRes> {
  factory CopyWith$Query$GetOrderDetails(
    Query$GetOrderDetails instance,
    TRes Function(Query$GetOrderDetails) then,
  ) = _CopyWithImpl$Query$GetOrderDetails;

  factory CopyWith$Query$GetOrderDetails.stub(TRes res) =
      _CopyWithStubImpl$Query$GetOrderDetails;

  TRes call({Query$GetOrderDetails$order? order});
  CopyWith$Query$GetOrderDetails$order<TRes> get order;
}

class _CopyWithImpl$Query$GetOrderDetails<TRes>
    implements CopyWith$Query$GetOrderDetails<TRes> {
  _CopyWithImpl$Query$GetOrderDetails(
    this._instance,
    this._then,
  );

  final Query$GetOrderDetails _instance;

  final TRes Function(Query$GetOrderDetails) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? order = _undefined}) => _then(Query$GetOrderDetails(
      order: order == _undefined
          ? _instance.order
          : (order as Query$GetOrderDetails$order?)));
  CopyWith$Query$GetOrderDetails$order<TRes> get order {
    final local$order = _instance.order;
    return local$order == null
        ? CopyWith$Query$GetOrderDetails$order.stub(_then(_instance))
        : CopyWith$Query$GetOrderDetails$order(
            local$order, (e) => call(order: e));
  }
}

class _CopyWithStubImpl$Query$GetOrderDetails<TRes>
    implements CopyWith$Query$GetOrderDetails<TRes> {
  _CopyWithStubImpl$Query$GetOrderDetails(this._res);

  TRes _res;

  call({Query$GetOrderDetails$order? order}) => _res;
  CopyWith$Query$GetOrderDetails$order<TRes> get order =>
      CopyWith$Query$GetOrderDetails$order.stub(_res);
}

const documentNodeQueryGetOrderDetails = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.query,
    name: NameNode(value: 'GetOrderDetails'),
    variableDefinitions: [
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'id')),
        type: NamedTypeNode(
          name: NameNode(value: 'ID'),
          isNonNull: true,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      )
    ],
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
        name: NameNode(value: 'order'),
        alias: null,
        arguments: [
          ArgumentNode(
            name: NameNode(value: 'id'),
            value: VariableNode(name: NameNode(value: 'id')),
          )
        ],
        directives: [],
        selectionSet: SelectionSetNode(selections: [
          FieldNode(
            name: NameNode(value: 'points'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: SelectionSetNode(selections: [
              FragmentSpreadNode(
                name: NameNode(value: 'Point'),
                directives: [],
              ),
              FieldNode(
                name: NameNode(value: 'lat'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
              FieldNode(
                name: NameNode(value: 'lng'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
            ]),
          ),
          FieldNode(
            name: NameNode(value: 'addresses'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'costBest'),
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
            name: NameNode(value: 'startTimestamp'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'finishTimestamp'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'distanceBest'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'durationBest'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'paymentGatewayId'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'expectedTimestamp'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
        ]),
      )
    ]),
  ),
  fragmentDefinitionPoint,
]);
Query$GetOrderDetails _parserFn$Query$GetOrderDetails(
        Map<String, dynamic> data) =>
    Query$GetOrderDetails.fromJson(data);
typedef OnQueryComplete$Query$GetOrderDetails = FutureOr<void> Function(
  Map<String, dynamic>?,
  Query$GetOrderDetails?,
);

class Options$Query$GetOrderDetails
    extends graphql.QueryOptions<Query$GetOrderDetails> {
  Options$Query$GetOrderDetails({
    String? operationName,
    required Variables$Query$GetOrderDetails variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Query$GetOrderDetails? typedOptimisticResult,
    Duration? pollInterval,
    graphql.Context? context,
    OnQueryComplete$Query$GetOrderDetails? onComplete,
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
                    data == null ? null : _parserFn$Query$GetOrderDetails(data),
                  ),
          onError: onError,
          document: documentNodeQueryGetOrderDetails,
          parserFn: _parserFn$Query$GetOrderDetails,
        );

  final OnQueryComplete$Query$GetOrderDetails? onCompleteWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onComplete == null
            ? super.properties
            : super.properties.where((property) => property != onComplete),
        onCompleteWithParsed,
      ];
}

class WatchOptions$Query$GetOrderDetails
    extends graphql.WatchQueryOptions<Query$GetOrderDetails> {
  WatchOptions$Query$GetOrderDetails({
    String? operationName,
    required Variables$Query$GetOrderDetails variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Query$GetOrderDetails? typedOptimisticResult,
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
          document: documentNodeQueryGetOrderDetails,
          pollInterval: pollInterval,
          eagerlyFetchResults: eagerlyFetchResults,
          carryForwardDataOnException: carryForwardDataOnException,
          fetchResults: fetchResults,
          parserFn: _parserFn$Query$GetOrderDetails,
        );
}

class FetchMoreOptions$Query$GetOrderDetails extends graphql.FetchMoreOptions {
  FetchMoreOptions$Query$GetOrderDetails({
    required graphql.UpdateQuery updateQuery,
    required Variables$Query$GetOrderDetails variables,
  }) : super(
          updateQuery: updateQuery,
          variables: variables.toJson(),
          document: documentNodeQueryGetOrderDetails,
        );
}

extension ClientExtension$Query$GetOrderDetails on graphql.GraphQLClient {
  Future<graphql.QueryResult<Query$GetOrderDetails>> query$GetOrderDetails(
          Options$Query$GetOrderDetails options) async =>
      await this.query(options);
  graphql.ObservableQuery<Query$GetOrderDetails> watchQuery$GetOrderDetails(
          WatchOptions$Query$GetOrderDetails options) =>
      this.watchQuery(options);
  void writeQuery$GetOrderDetails({
    required Query$GetOrderDetails data,
    required Variables$Query$GetOrderDetails variables,
    bool broadcast = true,
  }) =>
      this.writeQuery(
        graphql.Request(
          operation:
              graphql.Operation(document: documentNodeQueryGetOrderDetails),
          variables: variables.toJson(),
        ),
        data: data.toJson(),
        broadcast: broadcast,
      );
  Query$GetOrderDetails? readQuery$GetOrderDetails({
    required Variables$Query$GetOrderDetails variables,
    bool optimistic = true,
  }) {
    final result = this.readQuery(
      graphql.Request(
        operation:
            graphql.Operation(document: documentNodeQueryGetOrderDetails),
        variables: variables.toJson(),
      ),
      optimistic: optimistic,
    );
    return result == null ? null : Query$GetOrderDetails.fromJson(result);
  }
}

graphql_flutter.QueryHookResult<Query$GetOrderDetails> useQuery$GetOrderDetails(
        Options$Query$GetOrderDetails options) =>
    graphql_flutter.useQuery(options);
graphql.ObservableQuery<Query$GetOrderDetails> useWatchQuery$GetOrderDetails(
        WatchOptions$Query$GetOrderDetails options) =>
    graphql_flutter.useWatchQuery(options);

class Query$GetOrderDetails$Widget
    extends graphql_flutter.Query<Query$GetOrderDetails> {
  Query$GetOrderDetails$Widget({
    widgets.Key? key,
    required Options$Query$GetOrderDetails options,
    required graphql_flutter.QueryBuilder<Query$GetOrderDetails> builder,
  }) : super(
          key: key,
          options: options,
          builder: builder,
        );
}

class Query$GetOrderDetails$order {
  Query$GetOrderDetails$order({
    required this.points,
    required this.addresses,
    required this.costBest,
    required this.currency,
    this.startTimestamp,
    this.finishTimestamp,
    required this.distanceBest,
    required this.durationBest,
    this.paymentGatewayId,
    required this.expectedTimestamp,
  });

  factory Query$GetOrderDetails$order.fromJson(Map<String, dynamic> json) {
    final l$points = json['points'];
    final l$addresses = json['addresses'];
    final l$costBest = json['costBest'];
    final l$currency = json['currency'];
    final l$startTimestamp = json['startTimestamp'];
    final l$finishTimestamp = json['finishTimestamp'];
    final l$distanceBest = json['distanceBest'];
    final l$durationBest = json['durationBest'];
    final l$paymentGatewayId = json['paymentGatewayId'];
    final l$expectedTimestamp = json['expectedTimestamp'];
    return Query$GetOrderDetails$order(
      points: (l$points as List<dynamic>)
          .map((e) => Query$GetOrderDetails$order$points.fromJson(
              (e as Map<String, dynamic>)))
          .toList(),
      addresses:
          (l$addresses as List<dynamic>).map((e) => (e as String)).toList(),
      costBest: (l$costBest as num).toDouble(),
      currency: (l$currency as String),
      startTimestamp: l$startTimestamp == null
          ? null
          : fromGraphQLTimestampToDartDateTime(l$startTimestamp),
      finishTimestamp: l$finishTimestamp == null
          ? null
          : fromGraphQLTimestampToDartDateTime(l$finishTimestamp),
      distanceBest: (l$distanceBest as int),
      durationBest: (l$durationBest as int),
      paymentGatewayId: (l$paymentGatewayId as num?)?.toDouble(),
      expectedTimestamp:
          fromGraphQLTimestampToDartDateTime(l$expectedTimestamp),
    );
  }

  final List<Query$GetOrderDetails$order$points> points;

  final List<String> addresses;

  final double costBest;

  final String currency;

  final DateTime? startTimestamp;

  final DateTime? finishTimestamp;

  final int distanceBest;

  final int durationBest;

  final double? paymentGatewayId;

  final DateTime expectedTimestamp;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$points = points;
    _resultData['points'] = l$points.map((e) => e.toJson()).toList();
    final l$addresses = addresses;
    _resultData['addresses'] = l$addresses.map((e) => e).toList();
    final l$costBest = costBest;
    _resultData['costBest'] = l$costBest;
    final l$currency = currency;
    _resultData['currency'] = l$currency;
    final l$startTimestamp = startTimestamp;
    _resultData['startTimestamp'] = l$startTimestamp == null
        ? null
        : fromDartDateTimeToGraphQLTimestamp(l$startTimestamp);
    final l$finishTimestamp = finishTimestamp;
    _resultData['finishTimestamp'] = l$finishTimestamp == null
        ? null
        : fromDartDateTimeToGraphQLTimestamp(l$finishTimestamp);
    final l$distanceBest = distanceBest;
    _resultData['distanceBest'] = l$distanceBest;
    final l$durationBest = durationBest;
    _resultData['durationBest'] = l$durationBest;
    final l$paymentGatewayId = paymentGatewayId;
    _resultData['paymentGatewayId'] = l$paymentGatewayId;
    final l$expectedTimestamp = expectedTimestamp;
    _resultData['expectedTimestamp'] =
        fromDartDateTimeToGraphQLTimestamp(l$expectedTimestamp);
    return _resultData;
  }

  @override
  int get hashCode {
    final l$points = points;
    final l$addresses = addresses;
    final l$costBest = costBest;
    final l$currency = currency;
    final l$startTimestamp = startTimestamp;
    final l$finishTimestamp = finishTimestamp;
    final l$distanceBest = distanceBest;
    final l$durationBest = durationBest;
    final l$paymentGatewayId = paymentGatewayId;
    final l$expectedTimestamp = expectedTimestamp;
    return Object.hashAll([
      Object.hashAll(l$points.map((v) => v)),
      Object.hashAll(l$addresses.map((v) => v)),
      l$costBest,
      l$currency,
      l$startTimestamp,
      l$finishTimestamp,
      l$distanceBest,
      l$durationBest,
      l$paymentGatewayId,
      l$expectedTimestamp,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$GetOrderDetails$order) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$points = points;
    final lOther$points = other.points;
    if (l$points.length != lOther$points.length) {
      return false;
    }
    for (int i = 0; i < l$points.length; i++) {
      final l$points$entry = l$points[i];
      final lOther$points$entry = lOther$points[i];
      if (l$points$entry != lOther$points$entry) {
        return false;
      }
    }
    final l$addresses = addresses;
    final lOther$addresses = other.addresses;
    if (l$addresses.length != lOther$addresses.length) {
      return false;
    }
    for (int i = 0; i < l$addresses.length; i++) {
      final l$addresses$entry = l$addresses[i];
      final lOther$addresses$entry = lOther$addresses[i];
      if (l$addresses$entry != lOther$addresses$entry) {
        return false;
      }
    }
    final l$costBest = costBest;
    final lOther$costBest = other.costBest;
    if (l$costBest != lOther$costBest) {
      return false;
    }
    final l$currency = currency;
    final lOther$currency = other.currency;
    if (l$currency != lOther$currency) {
      return false;
    }
    final l$startTimestamp = startTimestamp;
    final lOther$startTimestamp = other.startTimestamp;
    if (l$startTimestamp != lOther$startTimestamp) {
      return false;
    }
    final l$finishTimestamp = finishTimestamp;
    final lOther$finishTimestamp = other.finishTimestamp;
    if (l$finishTimestamp != lOther$finishTimestamp) {
      return false;
    }
    final l$distanceBest = distanceBest;
    final lOther$distanceBest = other.distanceBest;
    if (l$distanceBest != lOther$distanceBest) {
      return false;
    }
    final l$durationBest = durationBest;
    final lOther$durationBest = other.durationBest;
    if (l$durationBest != lOther$durationBest) {
      return false;
    }
    final l$paymentGatewayId = paymentGatewayId;
    final lOther$paymentGatewayId = other.paymentGatewayId;
    if (l$paymentGatewayId != lOther$paymentGatewayId) {
      return false;
    }
    final l$expectedTimestamp = expectedTimestamp;
    final lOther$expectedTimestamp = other.expectedTimestamp;
    if (l$expectedTimestamp != lOther$expectedTimestamp) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Query$GetOrderDetails$order
    on Query$GetOrderDetails$order {
  CopyWith$Query$GetOrderDetails$order<Query$GetOrderDetails$order>
      get copyWith => CopyWith$Query$GetOrderDetails$order(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$GetOrderDetails$order<TRes> {
  factory CopyWith$Query$GetOrderDetails$order(
    Query$GetOrderDetails$order instance,
    TRes Function(Query$GetOrderDetails$order) then,
  ) = _CopyWithImpl$Query$GetOrderDetails$order;

  factory CopyWith$Query$GetOrderDetails$order.stub(TRes res) =
      _CopyWithStubImpl$Query$GetOrderDetails$order;

  TRes call({
    List<Query$GetOrderDetails$order$points>? points,
    List<String>? addresses,
    double? costBest,
    String? currency,
    DateTime? startTimestamp,
    DateTime? finishTimestamp,
    int? distanceBest,
    int? durationBest,
    double? paymentGatewayId,
    DateTime? expectedTimestamp,
  });
  TRes points(
      Iterable<Query$GetOrderDetails$order$points> Function(
              Iterable<
                  CopyWith$Query$GetOrderDetails$order$points<
                      Query$GetOrderDetails$order$points>>)
          _fn);
}

class _CopyWithImpl$Query$GetOrderDetails$order<TRes>
    implements CopyWith$Query$GetOrderDetails$order<TRes> {
  _CopyWithImpl$Query$GetOrderDetails$order(
    this._instance,
    this._then,
  );

  final Query$GetOrderDetails$order _instance;

  final TRes Function(Query$GetOrderDetails$order) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? points = _undefined,
    Object? addresses = _undefined,
    Object? costBest = _undefined,
    Object? currency = _undefined,
    Object? startTimestamp = _undefined,
    Object? finishTimestamp = _undefined,
    Object? distanceBest = _undefined,
    Object? durationBest = _undefined,
    Object? paymentGatewayId = _undefined,
    Object? expectedTimestamp = _undefined,
  }) =>
      _then(Query$GetOrderDetails$order(
        points: points == _undefined || points == null
            ? _instance.points
            : (points as List<Query$GetOrderDetails$order$points>),
        addresses: addresses == _undefined || addresses == null
            ? _instance.addresses
            : (addresses as List<String>),
        costBest: costBest == _undefined || costBest == null
            ? _instance.costBest
            : (costBest as double),
        currency: currency == _undefined || currency == null
            ? _instance.currency
            : (currency as String),
        startTimestamp: startTimestamp == _undefined
            ? _instance.startTimestamp
            : (startTimestamp as DateTime?),
        finishTimestamp: finishTimestamp == _undefined
            ? _instance.finishTimestamp
            : (finishTimestamp as DateTime?),
        distanceBest: distanceBest == _undefined || distanceBest == null
            ? _instance.distanceBest
            : (distanceBest as int),
        durationBest: durationBest == _undefined || durationBest == null
            ? _instance.durationBest
            : (durationBest as int),
        paymentGatewayId: paymentGatewayId == _undefined
            ? _instance.paymentGatewayId
            : (paymentGatewayId as double?),
        expectedTimestamp:
            expectedTimestamp == _undefined || expectedTimestamp == null
                ? _instance.expectedTimestamp
                : (expectedTimestamp as DateTime),
      ));
  TRes points(
          Iterable<Query$GetOrderDetails$order$points> Function(
                  Iterable<
                      CopyWith$Query$GetOrderDetails$order$points<
                          Query$GetOrderDetails$order$points>>)
              _fn) =>
      call(
          points: _fn(_instance.points
              .map((e) => CopyWith$Query$GetOrderDetails$order$points(
                    e,
                    (i) => i,
                  ))).toList());
}

class _CopyWithStubImpl$Query$GetOrderDetails$order<TRes>
    implements CopyWith$Query$GetOrderDetails$order<TRes> {
  _CopyWithStubImpl$Query$GetOrderDetails$order(this._res);

  TRes _res;

  call({
    List<Query$GetOrderDetails$order$points>? points,
    List<String>? addresses,
    double? costBest,
    String? currency,
    DateTime? startTimestamp,
    DateTime? finishTimestamp,
    int? distanceBest,
    int? durationBest,
    double? paymentGatewayId,
    DateTime? expectedTimestamp,
  }) =>
      _res;
  points(_fn) => _res;
}

class Query$GetOrderDetails$order$points implements Fragment$Point {
  Query$GetOrderDetails$order$points({
    required this.lat,
    required this.lng,
  });

  factory Query$GetOrderDetails$order$points.fromJson(
      Map<String, dynamic> json) {
    final l$lat = json['lat'];
    final l$lng = json['lng'];
    return Query$GetOrderDetails$order$points(
      lat: (l$lat as num).toDouble(),
      lng: (l$lng as num).toDouble(),
    );
  }

  final double lat;

  final double lng;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$lat = lat;
    _resultData['lat'] = l$lat;
    final l$lng = lng;
    _resultData['lng'] = l$lng;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$lat = lat;
    final l$lng = lng;
    return Object.hashAll([
      l$lat,
      l$lng,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$GetOrderDetails$order$points) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$lat = lat;
    final lOther$lat = other.lat;
    if (l$lat != lOther$lat) {
      return false;
    }
    final l$lng = lng;
    final lOther$lng = other.lng;
    if (l$lng != lOther$lng) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Query$GetOrderDetails$order$points
    on Query$GetOrderDetails$order$points {
  CopyWith$Query$GetOrderDetails$order$points<
          Query$GetOrderDetails$order$points>
      get copyWith => CopyWith$Query$GetOrderDetails$order$points(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$GetOrderDetails$order$points<TRes> {
  factory CopyWith$Query$GetOrderDetails$order$points(
    Query$GetOrderDetails$order$points instance,
    TRes Function(Query$GetOrderDetails$order$points) then,
  ) = _CopyWithImpl$Query$GetOrderDetails$order$points;

  factory CopyWith$Query$GetOrderDetails$order$points.stub(TRes res) =
      _CopyWithStubImpl$Query$GetOrderDetails$order$points;

  TRes call({
    double? lat,
    double? lng,
  });
}

class _CopyWithImpl$Query$GetOrderDetails$order$points<TRes>
    implements CopyWith$Query$GetOrderDetails$order$points<TRes> {
  _CopyWithImpl$Query$GetOrderDetails$order$points(
    this._instance,
    this._then,
  );

  final Query$GetOrderDetails$order$points _instance;

  final TRes Function(Query$GetOrderDetails$order$points) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? lat = _undefined,
    Object? lng = _undefined,
  }) =>
      _then(Query$GetOrderDetails$order$points(
        lat: lat == _undefined || lat == null ? _instance.lat : (lat as double),
        lng: lng == _undefined || lng == null ? _instance.lng : (lng as double),
      ));
}

class _CopyWithStubImpl$Query$GetOrderDetails$order$points<TRes>
    implements CopyWith$Query$GetOrderDetails$order$points<TRes> {
  _CopyWithStubImpl$Query$GetOrderDetails$order$points(this._res);

  TRes _res;

  call({
    double? lat,
    double? lng,
  }) =>
      _res;
}

class Variables$Mutation$SubmitComplaint {
  factory Variables$Mutation$SubmitComplaint({
    required String id,
    required String subject,
    required String content,
  }) =>
      Variables$Mutation$SubmitComplaint._({
        r'id': id,
        r'subject': subject,
        r'content': content,
      });

  Variables$Mutation$SubmitComplaint._(this._$data);

  factory Variables$Mutation$SubmitComplaint.fromJson(
      Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$id = data['id'];
    result$data['id'] = (l$id as String);
    final l$subject = data['subject'];
    result$data['subject'] = (l$subject as String);
    final l$content = data['content'];
    result$data['content'] = (l$content as String);
    return Variables$Mutation$SubmitComplaint._(result$data);
  }

  Map<String, dynamic> _$data;

  String get id => (_$data['id'] as String);
  String get subject => (_$data['subject'] as String);
  String get content => (_$data['content'] as String);
  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$id = id;
    result$data['id'] = l$id;
    final l$subject = subject;
    result$data['subject'] = l$subject;
    final l$content = content;
    result$data['content'] = l$content;
    return result$data;
  }

  CopyWith$Variables$Mutation$SubmitComplaint<
          Variables$Mutation$SubmitComplaint>
      get copyWith => CopyWith$Variables$Mutation$SubmitComplaint(
            this,
            (i) => i,
          );
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Variables$Mutation$SubmitComplaint) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
      return false;
    }
    final l$subject = subject;
    final lOther$subject = other.subject;
    if (l$subject != lOther$subject) {
      return false;
    }
    final l$content = content;
    final lOther$content = other.content;
    if (l$content != lOther$content) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$subject = subject;
    final l$content = content;
    return Object.hashAll([
      l$id,
      l$subject,
      l$content,
    ]);
  }
}

abstract class CopyWith$Variables$Mutation$SubmitComplaint<TRes> {
  factory CopyWith$Variables$Mutation$SubmitComplaint(
    Variables$Mutation$SubmitComplaint instance,
    TRes Function(Variables$Mutation$SubmitComplaint) then,
  ) = _CopyWithImpl$Variables$Mutation$SubmitComplaint;

  factory CopyWith$Variables$Mutation$SubmitComplaint.stub(TRes res) =
      _CopyWithStubImpl$Variables$Mutation$SubmitComplaint;

  TRes call({
    String? id,
    String? subject,
    String? content,
  });
}

class _CopyWithImpl$Variables$Mutation$SubmitComplaint<TRes>
    implements CopyWith$Variables$Mutation$SubmitComplaint<TRes> {
  _CopyWithImpl$Variables$Mutation$SubmitComplaint(
    this._instance,
    this._then,
  );

  final Variables$Mutation$SubmitComplaint _instance;

  final TRes Function(Variables$Mutation$SubmitComplaint) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? subject = _undefined,
    Object? content = _undefined,
  }) =>
      _then(Variables$Mutation$SubmitComplaint._({
        ..._instance._$data,
        if (id != _undefined && id != null) 'id': (id as String),
        if (subject != _undefined && subject != null)
          'subject': (subject as String),
        if (content != _undefined && content != null)
          'content': (content as String),
      }));
}

class _CopyWithStubImpl$Variables$Mutation$SubmitComplaint<TRes>
    implements CopyWith$Variables$Mutation$SubmitComplaint<TRes> {
  _CopyWithStubImpl$Variables$Mutation$SubmitComplaint(this._res);

  TRes _res;

  call({
    String? id,
    String? subject,
    String? content,
  }) =>
      _res;
}

class Mutation$SubmitComplaint {
  Mutation$SubmitComplaint({required this.createOneComplaint});

  factory Mutation$SubmitComplaint.fromJson(Map<String, dynamic> json) {
    final l$createOneComplaint = json['createOneComplaint'];
    return Mutation$SubmitComplaint(
        createOneComplaint:
            Mutation$SubmitComplaint$createOneComplaint.fromJson(
                (l$createOneComplaint as Map<String, dynamic>)));
  }

  final Mutation$SubmitComplaint$createOneComplaint createOneComplaint;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$createOneComplaint = createOneComplaint;
    _resultData['createOneComplaint'] = l$createOneComplaint.toJson();
    return _resultData;
  }

  @override
  int get hashCode {
    final l$createOneComplaint = createOneComplaint;
    return Object.hashAll([l$createOneComplaint]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Mutation$SubmitComplaint) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$createOneComplaint = createOneComplaint;
    final lOther$createOneComplaint = other.createOneComplaint;
    if (l$createOneComplaint != lOther$createOneComplaint) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Mutation$SubmitComplaint
    on Mutation$SubmitComplaint {
  CopyWith$Mutation$SubmitComplaint<Mutation$SubmitComplaint> get copyWith =>
      CopyWith$Mutation$SubmitComplaint(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$SubmitComplaint<TRes> {
  factory CopyWith$Mutation$SubmitComplaint(
    Mutation$SubmitComplaint instance,
    TRes Function(Mutation$SubmitComplaint) then,
  ) = _CopyWithImpl$Mutation$SubmitComplaint;

  factory CopyWith$Mutation$SubmitComplaint.stub(TRes res) =
      _CopyWithStubImpl$Mutation$SubmitComplaint;

  TRes call({Mutation$SubmitComplaint$createOneComplaint? createOneComplaint});
  CopyWith$Mutation$SubmitComplaint$createOneComplaint<TRes>
      get createOneComplaint;
}

class _CopyWithImpl$Mutation$SubmitComplaint<TRes>
    implements CopyWith$Mutation$SubmitComplaint<TRes> {
  _CopyWithImpl$Mutation$SubmitComplaint(
    this._instance,
    this._then,
  );

  final Mutation$SubmitComplaint _instance;

  final TRes Function(Mutation$SubmitComplaint) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? createOneComplaint = _undefined}) =>
      _then(Mutation$SubmitComplaint(
          createOneComplaint:
              createOneComplaint == _undefined || createOneComplaint == null
                  ? _instance.createOneComplaint
                  : (createOneComplaint
                      as Mutation$SubmitComplaint$createOneComplaint)));
  CopyWith$Mutation$SubmitComplaint$createOneComplaint<TRes>
      get createOneComplaint {
    final local$createOneComplaint = _instance.createOneComplaint;
    return CopyWith$Mutation$SubmitComplaint$createOneComplaint(
        local$createOneComplaint, (e) => call(createOneComplaint: e));
  }
}

class _CopyWithStubImpl$Mutation$SubmitComplaint<TRes>
    implements CopyWith$Mutation$SubmitComplaint<TRes> {
  _CopyWithStubImpl$Mutation$SubmitComplaint(this._res);

  TRes _res;

  call({Mutation$SubmitComplaint$createOneComplaint? createOneComplaint}) =>
      _res;
  CopyWith$Mutation$SubmitComplaint$createOneComplaint<TRes>
      get createOneComplaint =>
          CopyWith$Mutation$SubmitComplaint$createOneComplaint.stub(_res);
}

const documentNodeMutationSubmitComplaint = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.mutation,
    name: NameNode(value: 'SubmitComplaint'),
    variableDefinitions: [
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'id')),
        type: NamedTypeNode(
          name: NameNode(value: 'ID'),
          isNonNull: true,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      ),
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'subject')),
        type: NamedTypeNode(
          name: NameNode(value: 'String'),
          isNonNull: true,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      ),
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'content')),
        type: NamedTypeNode(
          name: NameNode(value: 'String'),
          isNonNull: true,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      ),
    ],
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
        name: NameNode(value: 'createOneComplaint'),
        alias: null,
        arguments: [
          ArgumentNode(
            name: NameNode(value: 'input'),
            value: ObjectValueNode(fields: [
              ObjectFieldNode(
                name: NameNode(value: 'complaint'),
                value: ObjectValueNode(fields: [
                  ObjectFieldNode(
                    name: NameNode(value: 'requestId'),
                    value: VariableNode(name: NameNode(value: 'id')),
                  ),
                  ObjectFieldNode(
                    name: NameNode(value: 'requestedByDriver'),
                    value: BooleanValueNode(value: false),
                  ),
                  ObjectFieldNode(
                    name: NameNode(value: 'subject'),
                    value: VariableNode(name: NameNode(value: 'subject')),
                  ),
                  ObjectFieldNode(
                    name: NameNode(value: 'content'),
                    value: VariableNode(name: NameNode(value: 'content')),
                  ),
                ]),
              )
            ]),
          )
        ],
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
      )
    ]),
  ),
]);
Mutation$SubmitComplaint _parserFn$Mutation$SubmitComplaint(
        Map<String, dynamic> data) =>
    Mutation$SubmitComplaint.fromJson(data);
typedef OnMutationCompleted$Mutation$SubmitComplaint = FutureOr<void> Function(
  Map<String, dynamic>?,
  Mutation$SubmitComplaint?,
);

class Options$Mutation$SubmitComplaint
    extends graphql.MutationOptions<Mutation$SubmitComplaint> {
  Options$Mutation$SubmitComplaint({
    String? operationName,
    required Variables$Mutation$SubmitComplaint variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Mutation$SubmitComplaint? typedOptimisticResult,
    graphql.Context? context,
    OnMutationCompleted$Mutation$SubmitComplaint? onCompleted,
    graphql.OnMutationUpdate<Mutation$SubmitComplaint>? update,
    graphql.OnError? onError,
  })  : onCompletedWithParsed = onCompleted,
        super(
          variables: variables.toJson(),
          operationName: operationName,
          fetchPolicy: fetchPolicy,
          errorPolicy: errorPolicy,
          cacheRereadPolicy: cacheRereadPolicy,
          optimisticResult: optimisticResult ?? typedOptimisticResult?.toJson(),
          context: context,
          onCompleted: onCompleted == null
              ? null
              : (data) => onCompleted(
                    data,
                    data == null
                        ? null
                        : _parserFn$Mutation$SubmitComplaint(data),
                  ),
          update: update,
          onError: onError,
          document: documentNodeMutationSubmitComplaint,
          parserFn: _parserFn$Mutation$SubmitComplaint,
        );

  final OnMutationCompleted$Mutation$SubmitComplaint? onCompletedWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onCompleted == null
            ? super.properties
            : super.properties.where((property) => property != onCompleted),
        onCompletedWithParsed,
      ];
}

class WatchOptions$Mutation$SubmitComplaint
    extends graphql.WatchQueryOptions<Mutation$SubmitComplaint> {
  WatchOptions$Mutation$SubmitComplaint({
    String? operationName,
    required Variables$Mutation$SubmitComplaint variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Mutation$SubmitComplaint? typedOptimisticResult,
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
          document: documentNodeMutationSubmitComplaint,
          pollInterval: pollInterval,
          eagerlyFetchResults: eagerlyFetchResults,
          carryForwardDataOnException: carryForwardDataOnException,
          fetchResults: fetchResults,
          parserFn: _parserFn$Mutation$SubmitComplaint,
        );
}

extension ClientExtension$Mutation$SubmitComplaint on graphql.GraphQLClient {
  Future<graphql.QueryResult<Mutation$SubmitComplaint>> mutate$SubmitComplaint(
          Options$Mutation$SubmitComplaint options) async =>
      await this.mutate(options);
  graphql.ObservableQuery<Mutation$SubmitComplaint>
      watchMutation$SubmitComplaint(
              WatchOptions$Mutation$SubmitComplaint options) =>
          this.watchMutation(options);
}

class Mutation$SubmitComplaint$HookResult {
  Mutation$SubmitComplaint$HookResult(
    this.runMutation,
    this.result,
  );

  final RunMutation$Mutation$SubmitComplaint runMutation;

  final graphql.QueryResult<Mutation$SubmitComplaint> result;
}

Mutation$SubmitComplaint$HookResult useMutation$SubmitComplaint(
    [WidgetOptions$Mutation$SubmitComplaint? options]) {
  final result = graphql_flutter
      .useMutation(options ?? WidgetOptions$Mutation$SubmitComplaint());
  return Mutation$SubmitComplaint$HookResult(
    (variables, {optimisticResult, typedOptimisticResult}) =>
        result.runMutation(
      variables.toJson(),
      optimisticResult: optimisticResult ?? typedOptimisticResult?.toJson(),
    ),
    result.result,
  );
}

graphql.ObservableQuery<Mutation$SubmitComplaint>
    useWatchMutation$SubmitComplaint(
            WatchOptions$Mutation$SubmitComplaint options) =>
        graphql_flutter.useWatchMutation(options);

class WidgetOptions$Mutation$SubmitComplaint
    extends graphql.MutationOptions<Mutation$SubmitComplaint> {
  WidgetOptions$Mutation$SubmitComplaint({
    String? operationName,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Mutation$SubmitComplaint? typedOptimisticResult,
    graphql.Context? context,
    OnMutationCompleted$Mutation$SubmitComplaint? onCompleted,
    graphql.OnMutationUpdate<Mutation$SubmitComplaint>? update,
    graphql.OnError? onError,
  })  : onCompletedWithParsed = onCompleted,
        super(
          operationName: operationName,
          fetchPolicy: fetchPolicy,
          errorPolicy: errorPolicy,
          cacheRereadPolicy: cacheRereadPolicy,
          optimisticResult: optimisticResult ?? typedOptimisticResult?.toJson(),
          context: context,
          onCompleted: onCompleted == null
              ? null
              : (data) => onCompleted(
                    data,
                    data == null
                        ? null
                        : _parserFn$Mutation$SubmitComplaint(data),
                  ),
          update: update,
          onError: onError,
          document: documentNodeMutationSubmitComplaint,
          parserFn: _parserFn$Mutation$SubmitComplaint,
        );

  final OnMutationCompleted$Mutation$SubmitComplaint? onCompletedWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onCompleted == null
            ? super.properties
            : super.properties.where((property) => property != onCompleted),
        onCompletedWithParsed,
      ];
}

typedef RunMutation$Mutation$SubmitComplaint
    = graphql.MultiSourceResult<Mutation$SubmitComplaint> Function(
  Variables$Mutation$SubmitComplaint, {
  Object? optimisticResult,
  Mutation$SubmitComplaint? typedOptimisticResult,
});
typedef Builder$Mutation$SubmitComplaint = widgets.Widget Function(
  RunMutation$Mutation$SubmitComplaint,
  graphql.QueryResult<Mutation$SubmitComplaint>?,
);

class Mutation$SubmitComplaint$Widget
    extends graphql_flutter.Mutation<Mutation$SubmitComplaint> {
  Mutation$SubmitComplaint$Widget({
    widgets.Key? key,
    WidgetOptions$Mutation$SubmitComplaint? options,
    required Builder$Mutation$SubmitComplaint builder,
  }) : super(
          key: key,
          options: options ?? WidgetOptions$Mutation$SubmitComplaint(),
          builder: (
            run,
            result,
          ) =>
              builder(
            (
              variables, {
              optimisticResult,
              typedOptimisticResult,
            }) =>
                run(
              variables.toJson(),
              optimisticResult:
                  optimisticResult ?? typedOptimisticResult?.toJson(),
            ),
            result,
          ),
        );
}

class Mutation$SubmitComplaint$createOneComplaint {
  Mutation$SubmitComplaint$createOneComplaint({required this.id});

  factory Mutation$SubmitComplaint$createOneComplaint.fromJson(
      Map<String, dynamic> json) {
    final l$id = json['id'];
    return Mutation$SubmitComplaint$createOneComplaint(id: (l$id as String));
  }

  final String id;

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
    if (!(other is Mutation$SubmitComplaint$createOneComplaint) ||
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

extension UtilityExtension$Mutation$SubmitComplaint$createOneComplaint
    on Mutation$SubmitComplaint$createOneComplaint {
  CopyWith$Mutation$SubmitComplaint$createOneComplaint<
          Mutation$SubmitComplaint$createOneComplaint>
      get copyWith => CopyWith$Mutation$SubmitComplaint$createOneComplaint(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Mutation$SubmitComplaint$createOneComplaint<TRes> {
  factory CopyWith$Mutation$SubmitComplaint$createOneComplaint(
    Mutation$SubmitComplaint$createOneComplaint instance,
    TRes Function(Mutation$SubmitComplaint$createOneComplaint) then,
  ) = _CopyWithImpl$Mutation$SubmitComplaint$createOneComplaint;

  factory CopyWith$Mutation$SubmitComplaint$createOneComplaint.stub(TRes res) =
      _CopyWithStubImpl$Mutation$SubmitComplaint$createOneComplaint;

  TRes call({String? id});
}

class _CopyWithImpl$Mutation$SubmitComplaint$createOneComplaint<TRes>
    implements CopyWith$Mutation$SubmitComplaint$createOneComplaint<TRes> {
  _CopyWithImpl$Mutation$SubmitComplaint$createOneComplaint(
    this._instance,
    this._then,
  );

  final Mutation$SubmitComplaint$createOneComplaint _instance;

  final TRes Function(Mutation$SubmitComplaint$createOneComplaint) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? id = _undefined}) =>
      _then(Mutation$SubmitComplaint$createOneComplaint(
          id: id == _undefined || id == null ? _instance.id : (id as String)));
}

class _CopyWithStubImpl$Mutation$SubmitComplaint$createOneComplaint<TRes>
    implements CopyWith$Mutation$SubmitComplaint$createOneComplaint<TRes> {
  _CopyWithStubImpl$Mutation$SubmitComplaint$createOneComplaint(this._res);

  TRes _res;

  call({String? id}) => _res;
}
