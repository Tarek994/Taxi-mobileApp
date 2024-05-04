import '../schema.gql.dart';
import 'dart:async';
import 'package:flutter/widgets.dart' as widgets;
import 'package:gql/ast.dart';
import 'package:graphql/client.dart' as graphql;
import 'package:graphql_flutter/graphql_flutter.dart' as graphql_flutter;
import 'package:ridy/graphql/scalars/timestamp.dart';

class Query$Wallet {
  Query$Wallet({
    required this.driverWallets,
    required this.driverTransacions,
  });

  factory Query$Wallet.fromJson(Map<String, dynamic> json) {
    final l$driverWallets = json['driverWallets'];
    final l$driverTransacions = json['driverTransacions'];
    return Query$Wallet(
      driverWallets: (l$driverWallets as List<dynamic>)
          .map((e) =>
              Query$Wallet$driverWallets.fromJson((e as Map<String, dynamic>)))
          .toList(),
      driverTransacions: Query$Wallet$driverTransacions.fromJson(
          (l$driverTransacions as Map<String, dynamic>)),
    );
  }

  final List<Query$Wallet$driverWallets> driverWallets;

  final Query$Wallet$driverTransacions driverTransacions;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$driverWallets = driverWallets;
    _resultData['driverWallets'] =
        l$driverWallets.map((e) => e.toJson()).toList();
    final l$driverTransacions = driverTransacions;
    _resultData['driverTransacions'] = l$driverTransacions.toJson();
    return _resultData;
  }

  @override
  int get hashCode {
    final l$driverWallets = driverWallets;
    final l$driverTransacions = driverTransacions;
    return Object.hashAll([
      Object.hashAll(l$driverWallets.map((v) => v)),
      l$driverTransacions,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$Wallet) || runtimeType != other.runtimeType) {
      return false;
    }
    final l$driverWallets = driverWallets;
    final lOther$driverWallets = other.driverWallets;
    if (l$driverWallets.length != lOther$driverWallets.length) {
      return false;
    }
    for (int i = 0; i < l$driverWallets.length; i++) {
      final l$driverWallets$entry = l$driverWallets[i];
      final lOther$driverWallets$entry = lOther$driverWallets[i];
      if (l$driverWallets$entry != lOther$driverWallets$entry) {
        return false;
      }
    }
    final l$driverTransacions = driverTransacions;
    final lOther$driverTransacions = other.driverTransacions;
    if (l$driverTransacions != lOther$driverTransacions) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Query$Wallet on Query$Wallet {
  CopyWith$Query$Wallet<Query$Wallet> get copyWith => CopyWith$Query$Wallet(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$Wallet<TRes> {
  factory CopyWith$Query$Wallet(
    Query$Wallet instance,
    TRes Function(Query$Wallet) then,
  ) = _CopyWithImpl$Query$Wallet;

  factory CopyWith$Query$Wallet.stub(TRes res) = _CopyWithStubImpl$Query$Wallet;

  TRes call({
    List<Query$Wallet$driverWallets>? driverWallets,
    Query$Wallet$driverTransacions? driverTransacions,
  });
  TRes driverWallets(
      Iterable<Query$Wallet$driverWallets> Function(
              Iterable<
                  CopyWith$Query$Wallet$driverWallets<
                      Query$Wallet$driverWallets>>)
          _fn);
  CopyWith$Query$Wallet$driverTransacions<TRes> get driverTransacions;
}

class _CopyWithImpl$Query$Wallet<TRes> implements CopyWith$Query$Wallet<TRes> {
  _CopyWithImpl$Query$Wallet(
    this._instance,
    this._then,
  );

  final Query$Wallet _instance;

  final TRes Function(Query$Wallet) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? driverWallets = _undefined,
    Object? driverTransacions = _undefined,
  }) =>
      _then(Query$Wallet(
        driverWallets: driverWallets == _undefined || driverWallets == null
            ? _instance.driverWallets
            : (driverWallets as List<Query$Wallet$driverWallets>),
        driverTransacions:
            driverTransacions == _undefined || driverTransacions == null
                ? _instance.driverTransacions
                : (driverTransacions as Query$Wallet$driverTransacions),
      ));
  TRes driverWallets(
          Iterable<Query$Wallet$driverWallets> Function(
                  Iterable<
                      CopyWith$Query$Wallet$driverWallets<
                          Query$Wallet$driverWallets>>)
              _fn) =>
      call(
          driverWallets: _fn(_instance.driverWallets
              .map((e) => CopyWith$Query$Wallet$driverWallets(
                    e,
                    (i) => i,
                  ))).toList());
  CopyWith$Query$Wallet$driverTransacions<TRes> get driverTransacions {
    final local$driverTransacions = _instance.driverTransacions;
    return CopyWith$Query$Wallet$driverTransacions(
        local$driverTransacions, (e) => call(driverTransacions: e));
  }
}

class _CopyWithStubImpl$Query$Wallet<TRes>
    implements CopyWith$Query$Wallet<TRes> {
  _CopyWithStubImpl$Query$Wallet(this._res);

  TRes _res;

  call({
    List<Query$Wallet$driverWallets>? driverWallets,
    Query$Wallet$driverTransacions? driverTransacions,
  }) =>
      _res;
  driverWallets(_fn) => _res;
  CopyWith$Query$Wallet$driverTransacions<TRes> get driverTransacions =>
      CopyWith$Query$Wallet$driverTransacions.stub(_res);
}

const documentNodeQueryWallet = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.query,
    name: NameNode(value: 'Wallet'),
    variableDefinitions: [],
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
        name: NameNode(value: 'driverWallets'),
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
            name: NameNode(value: 'balance'),
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
        ]),
      ),
      FieldNode(
        name: NameNode(value: 'driverTransacions'),
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
                    name: NameNode(value: 'createdAt'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: null,
                  ),
                  FieldNode(
                    name: NameNode(value: 'amount'),
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
                    name: NameNode(value: 'refrenceNumber'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: null,
                  ),
                  FieldNode(
                    name: NameNode(value: 'deductType'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: null,
                  ),
                  FieldNode(
                    name: NameNode(value: 'action'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: null,
                  ),
                  FieldNode(
                    name: NameNode(value: 'rechargeType'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: null,
                  ),
                ]),
              )
            ]),
          )
        ]),
      ),
    ]),
  ),
]);
Query$Wallet _parserFn$Query$Wallet(Map<String, dynamic> data) =>
    Query$Wallet.fromJson(data);
typedef OnQueryComplete$Query$Wallet = FutureOr<void> Function(
  Map<String, dynamic>?,
  Query$Wallet?,
);

class Options$Query$Wallet extends graphql.QueryOptions<Query$Wallet> {
  Options$Query$Wallet({
    String? operationName,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Query$Wallet? typedOptimisticResult,
    Duration? pollInterval,
    graphql.Context? context,
    OnQueryComplete$Query$Wallet? onComplete,
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
                    data == null ? null : _parserFn$Query$Wallet(data),
                  ),
          onError: onError,
          document: documentNodeQueryWallet,
          parserFn: _parserFn$Query$Wallet,
        );

  final OnQueryComplete$Query$Wallet? onCompleteWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onComplete == null
            ? super.properties
            : super.properties.where((property) => property != onComplete),
        onCompleteWithParsed,
      ];
}

class WatchOptions$Query$Wallet
    extends graphql.WatchQueryOptions<Query$Wallet> {
  WatchOptions$Query$Wallet({
    String? operationName,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Query$Wallet? typedOptimisticResult,
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
          document: documentNodeQueryWallet,
          pollInterval: pollInterval,
          eagerlyFetchResults: eagerlyFetchResults,
          carryForwardDataOnException: carryForwardDataOnException,
          fetchResults: fetchResults,
          parserFn: _parserFn$Query$Wallet,
        );
}

class FetchMoreOptions$Query$Wallet extends graphql.FetchMoreOptions {
  FetchMoreOptions$Query$Wallet({required graphql.UpdateQuery updateQuery})
      : super(
          updateQuery: updateQuery,
          document: documentNodeQueryWallet,
        );
}

extension ClientExtension$Query$Wallet on graphql.GraphQLClient {
  Future<graphql.QueryResult<Query$Wallet>> query$Wallet(
          [Options$Query$Wallet? options]) async =>
      await this.query(options ?? Options$Query$Wallet());
  graphql.ObservableQuery<Query$Wallet> watchQuery$Wallet(
          [WatchOptions$Query$Wallet? options]) =>
      this.watchQuery(options ?? WatchOptions$Query$Wallet());
  void writeQuery$Wallet({
    required Query$Wallet data,
    bool broadcast = true,
  }) =>
      this.writeQuery(
        graphql.Request(
            operation: graphql.Operation(document: documentNodeQueryWallet)),
        data: data.toJson(),
        broadcast: broadcast,
      );
  Query$Wallet? readQuery$Wallet({bool optimistic = true}) {
    final result = this.readQuery(
      graphql.Request(
          operation: graphql.Operation(document: documentNodeQueryWallet)),
      optimistic: optimistic,
    );
    return result == null ? null : Query$Wallet.fromJson(result);
  }
}

graphql_flutter.QueryHookResult<Query$Wallet> useQuery$Wallet(
        [Options$Query$Wallet? options]) =>
    graphql_flutter.useQuery(options ?? Options$Query$Wallet());
graphql.ObservableQuery<Query$Wallet> useWatchQuery$Wallet(
        [WatchOptions$Query$Wallet? options]) =>
    graphql_flutter.useWatchQuery(options ?? WatchOptions$Query$Wallet());

class Query$Wallet$Widget extends graphql_flutter.Query<Query$Wallet> {
  Query$Wallet$Widget({
    widgets.Key? key,
    Options$Query$Wallet? options,
    required graphql_flutter.QueryBuilder<Query$Wallet> builder,
  }) : super(
          key: key,
          options: options ?? Options$Query$Wallet(),
          builder: builder,
        );
}

class Query$Wallet$driverWallets {
  Query$Wallet$driverWallets({
    required this.id,
    required this.balance,
    required this.currency,
  });

  factory Query$Wallet$driverWallets.fromJson(Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$balance = json['balance'];
    final l$currency = json['currency'];
    return Query$Wallet$driverWallets(
      id: (l$id as String),
      balance: (l$balance as num).toDouble(),
      currency: (l$currency as String),
    );
  }

  final String id;

  final double balance;

  final String currency;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = l$id;
    final l$balance = balance;
    _resultData['balance'] = l$balance;
    final l$currency = currency;
    _resultData['currency'] = l$currency;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$balance = balance;
    final l$currency = currency;
    return Object.hashAll([
      l$id,
      l$balance,
      l$currency,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$Wallet$driverWallets) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
      return false;
    }
    final l$balance = balance;
    final lOther$balance = other.balance;
    if (l$balance != lOther$balance) {
      return false;
    }
    final l$currency = currency;
    final lOther$currency = other.currency;
    if (l$currency != lOther$currency) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Query$Wallet$driverWallets
    on Query$Wallet$driverWallets {
  CopyWith$Query$Wallet$driverWallets<Query$Wallet$driverWallets>
      get copyWith => CopyWith$Query$Wallet$driverWallets(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$Wallet$driverWallets<TRes> {
  factory CopyWith$Query$Wallet$driverWallets(
    Query$Wallet$driverWallets instance,
    TRes Function(Query$Wallet$driverWallets) then,
  ) = _CopyWithImpl$Query$Wallet$driverWallets;

  factory CopyWith$Query$Wallet$driverWallets.stub(TRes res) =
      _CopyWithStubImpl$Query$Wallet$driverWallets;

  TRes call({
    String? id,
    double? balance,
    String? currency,
  });
}

class _CopyWithImpl$Query$Wallet$driverWallets<TRes>
    implements CopyWith$Query$Wallet$driverWallets<TRes> {
  _CopyWithImpl$Query$Wallet$driverWallets(
    this._instance,
    this._then,
  );

  final Query$Wallet$driverWallets _instance;

  final TRes Function(Query$Wallet$driverWallets) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? balance = _undefined,
    Object? currency = _undefined,
  }) =>
      _then(Query$Wallet$driverWallets(
        id: id == _undefined || id == null ? _instance.id : (id as String),
        balance: balance == _undefined || balance == null
            ? _instance.balance
            : (balance as double),
        currency: currency == _undefined || currency == null
            ? _instance.currency
            : (currency as String),
      ));
}

class _CopyWithStubImpl$Query$Wallet$driverWallets<TRes>
    implements CopyWith$Query$Wallet$driverWallets<TRes> {
  _CopyWithStubImpl$Query$Wallet$driverWallets(this._res);

  TRes _res;

  call({
    String? id,
    double? balance,
    String? currency,
  }) =>
      _res;
}

class Query$Wallet$driverTransacions {
  Query$Wallet$driverTransacions({required this.edges});

  factory Query$Wallet$driverTransacions.fromJson(Map<String, dynamic> json) {
    final l$edges = json['edges'];
    return Query$Wallet$driverTransacions(
        edges: (l$edges as List<dynamic>)
            .map((e) => Query$Wallet$driverTransacions$edges.fromJson(
                (e as Map<String, dynamic>)))
            .toList());
  }

  final List<Query$Wallet$driverTransacions$edges> edges;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$edges = edges;
    _resultData['edges'] = l$edges.map((e) => e.toJson()).toList();
    return _resultData;
  }

  @override
  int get hashCode {
    final l$edges = edges;
    return Object.hashAll([Object.hashAll(l$edges.map((v) => v))]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$Wallet$driverTransacions) ||
        runtimeType != other.runtimeType) {
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
    return true;
  }
}

extension UtilityExtension$Query$Wallet$driverTransacions
    on Query$Wallet$driverTransacions {
  CopyWith$Query$Wallet$driverTransacions<Query$Wallet$driverTransacions>
      get copyWith => CopyWith$Query$Wallet$driverTransacions(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$Wallet$driverTransacions<TRes> {
  factory CopyWith$Query$Wallet$driverTransacions(
    Query$Wallet$driverTransacions instance,
    TRes Function(Query$Wallet$driverTransacions) then,
  ) = _CopyWithImpl$Query$Wallet$driverTransacions;

  factory CopyWith$Query$Wallet$driverTransacions.stub(TRes res) =
      _CopyWithStubImpl$Query$Wallet$driverTransacions;

  TRes call({List<Query$Wallet$driverTransacions$edges>? edges});
  TRes edges(
      Iterable<Query$Wallet$driverTransacions$edges> Function(
              Iterable<
                  CopyWith$Query$Wallet$driverTransacions$edges<
                      Query$Wallet$driverTransacions$edges>>)
          _fn);
}

class _CopyWithImpl$Query$Wallet$driverTransacions<TRes>
    implements CopyWith$Query$Wallet$driverTransacions<TRes> {
  _CopyWithImpl$Query$Wallet$driverTransacions(
    this._instance,
    this._then,
  );

  final Query$Wallet$driverTransacions _instance;

  final TRes Function(Query$Wallet$driverTransacions) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? edges = _undefined}) =>
      _then(Query$Wallet$driverTransacions(
          edges: edges == _undefined || edges == null
              ? _instance.edges
              : (edges as List<Query$Wallet$driverTransacions$edges>)));
  TRes edges(
          Iterable<Query$Wallet$driverTransacions$edges> Function(
                  Iterable<
                      CopyWith$Query$Wallet$driverTransacions$edges<
                          Query$Wallet$driverTransacions$edges>>)
              _fn) =>
      call(
          edges: _fn(_instance.edges
              .map((e) => CopyWith$Query$Wallet$driverTransacions$edges(
                    e,
                    (i) => i,
                  ))).toList());
}

class _CopyWithStubImpl$Query$Wallet$driverTransacions<TRes>
    implements CopyWith$Query$Wallet$driverTransacions<TRes> {
  _CopyWithStubImpl$Query$Wallet$driverTransacions(this._res);

  TRes _res;

  call({List<Query$Wallet$driverTransacions$edges>? edges}) => _res;
  edges(_fn) => _res;
}

class Query$Wallet$driverTransacions$edges {
  Query$Wallet$driverTransacions$edges({required this.node});

  factory Query$Wallet$driverTransacions$edges.fromJson(
      Map<String, dynamic> json) {
    final l$node = json['node'];
    return Query$Wallet$driverTransacions$edges(
        node: Query$Wallet$driverTransacions$edges$node.fromJson(
            (l$node as Map<String, dynamic>)));
  }

  final Query$Wallet$driverTransacions$edges$node node;

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
    if (!(other is Query$Wallet$driverTransacions$edges) ||
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

extension UtilityExtension$Query$Wallet$driverTransacions$edges
    on Query$Wallet$driverTransacions$edges {
  CopyWith$Query$Wallet$driverTransacions$edges<
          Query$Wallet$driverTransacions$edges>
      get copyWith => CopyWith$Query$Wallet$driverTransacions$edges(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$Wallet$driverTransacions$edges<TRes> {
  factory CopyWith$Query$Wallet$driverTransacions$edges(
    Query$Wallet$driverTransacions$edges instance,
    TRes Function(Query$Wallet$driverTransacions$edges) then,
  ) = _CopyWithImpl$Query$Wallet$driverTransacions$edges;

  factory CopyWith$Query$Wallet$driverTransacions$edges.stub(TRes res) =
      _CopyWithStubImpl$Query$Wallet$driverTransacions$edges;

  TRes call({Query$Wallet$driverTransacions$edges$node? node});
  CopyWith$Query$Wallet$driverTransacions$edges$node<TRes> get node;
}

class _CopyWithImpl$Query$Wallet$driverTransacions$edges<TRes>
    implements CopyWith$Query$Wallet$driverTransacions$edges<TRes> {
  _CopyWithImpl$Query$Wallet$driverTransacions$edges(
    this._instance,
    this._then,
  );

  final Query$Wallet$driverTransacions$edges _instance;

  final TRes Function(Query$Wallet$driverTransacions$edges) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? node = _undefined}) =>
      _then(Query$Wallet$driverTransacions$edges(
          node: node == _undefined || node == null
              ? _instance.node
              : (node as Query$Wallet$driverTransacions$edges$node)));
  CopyWith$Query$Wallet$driverTransacions$edges$node<TRes> get node {
    final local$node = _instance.node;
    return CopyWith$Query$Wallet$driverTransacions$edges$node(
        local$node, (e) => call(node: e));
  }
}

class _CopyWithStubImpl$Query$Wallet$driverTransacions$edges<TRes>
    implements CopyWith$Query$Wallet$driverTransacions$edges<TRes> {
  _CopyWithStubImpl$Query$Wallet$driverTransacions$edges(this._res);

  TRes _res;

  call({Query$Wallet$driverTransacions$edges$node? node}) => _res;
  CopyWith$Query$Wallet$driverTransacions$edges$node<TRes> get node =>
      CopyWith$Query$Wallet$driverTransacions$edges$node.stub(_res);
}

class Query$Wallet$driverTransacions$edges$node {
  Query$Wallet$driverTransacions$edges$node({
    required this.createdAt,
    required this.amount,
    required this.currency,
    this.refrenceNumber,
    this.deductType,
    required this.action,
    this.rechargeType,
  });

  factory Query$Wallet$driverTransacions$edges$node.fromJson(
      Map<String, dynamic> json) {
    final l$createdAt = json['createdAt'];
    final l$amount = json['amount'];
    final l$currency = json['currency'];
    final l$refrenceNumber = json['refrenceNumber'];
    final l$deductType = json['deductType'];
    final l$action = json['action'];
    final l$rechargeType = json['rechargeType'];
    return Query$Wallet$driverTransacions$edges$node(
      createdAt: fromGraphQLTimestampToDartDateTime(l$createdAt),
      amount: (l$amount as num).toDouble(),
      currency: (l$currency as String),
      refrenceNumber: (l$refrenceNumber as String?),
      deductType: l$deductType == null
          ? null
          : fromJson$Enum$DriverDeductTransactionType((l$deductType as String)),
      action: fromJson$Enum$TransactionAction((l$action as String)),
      rechargeType: l$rechargeType == null
          ? null
          : fromJson$Enum$DriverRechargeTransactionType(
              (l$rechargeType as String)),
    );
  }

  final DateTime createdAt;

  final double amount;

  final String currency;

  final String? refrenceNumber;

  final Enum$DriverDeductTransactionType? deductType;

  final Enum$TransactionAction action;

  final Enum$DriverRechargeTransactionType? rechargeType;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$createdAt = createdAt;
    _resultData['createdAt'] = fromDartDateTimeToGraphQLTimestamp(l$createdAt);
    final l$amount = amount;
    _resultData['amount'] = l$amount;
    final l$currency = currency;
    _resultData['currency'] = l$currency;
    final l$refrenceNumber = refrenceNumber;
    _resultData['refrenceNumber'] = l$refrenceNumber;
    final l$deductType = deductType;
    _resultData['deductType'] = l$deductType == null
        ? null
        : toJson$Enum$DriverDeductTransactionType(l$deductType);
    final l$action = action;
    _resultData['action'] = toJson$Enum$TransactionAction(l$action);
    final l$rechargeType = rechargeType;
    _resultData['rechargeType'] = l$rechargeType == null
        ? null
        : toJson$Enum$DriverRechargeTransactionType(l$rechargeType);
    return _resultData;
  }

  @override
  int get hashCode {
    final l$createdAt = createdAt;
    final l$amount = amount;
    final l$currency = currency;
    final l$refrenceNumber = refrenceNumber;
    final l$deductType = deductType;
    final l$action = action;
    final l$rechargeType = rechargeType;
    return Object.hashAll([
      l$createdAt,
      l$amount,
      l$currency,
      l$refrenceNumber,
      l$deductType,
      l$action,
      l$rechargeType,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$Wallet$driverTransacions$edges$node) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$createdAt = createdAt;
    final lOther$createdAt = other.createdAt;
    if (l$createdAt != lOther$createdAt) {
      return false;
    }
    final l$amount = amount;
    final lOther$amount = other.amount;
    if (l$amount != lOther$amount) {
      return false;
    }
    final l$currency = currency;
    final lOther$currency = other.currency;
    if (l$currency != lOther$currency) {
      return false;
    }
    final l$refrenceNumber = refrenceNumber;
    final lOther$refrenceNumber = other.refrenceNumber;
    if (l$refrenceNumber != lOther$refrenceNumber) {
      return false;
    }
    final l$deductType = deductType;
    final lOther$deductType = other.deductType;
    if (l$deductType != lOther$deductType) {
      return false;
    }
    final l$action = action;
    final lOther$action = other.action;
    if (l$action != lOther$action) {
      return false;
    }
    final l$rechargeType = rechargeType;
    final lOther$rechargeType = other.rechargeType;
    if (l$rechargeType != lOther$rechargeType) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Query$Wallet$driverTransacions$edges$node
    on Query$Wallet$driverTransacions$edges$node {
  CopyWith$Query$Wallet$driverTransacions$edges$node<
          Query$Wallet$driverTransacions$edges$node>
      get copyWith => CopyWith$Query$Wallet$driverTransacions$edges$node(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$Wallet$driverTransacions$edges$node<TRes> {
  factory CopyWith$Query$Wallet$driverTransacions$edges$node(
    Query$Wallet$driverTransacions$edges$node instance,
    TRes Function(Query$Wallet$driverTransacions$edges$node) then,
  ) = _CopyWithImpl$Query$Wallet$driverTransacions$edges$node;

  factory CopyWith$Query$Wallet$driverTransacions$edges$node.stub(TRes res) =
      _CopyWithStubImpl$Query$Wallet$driverTransacions$edges$node;

  TRes call({
    DateTime? createdAt,
    double? amount,
    String? currency,
    String? refrenceNumber,
    Enum$DriverDeductTransactionType? deductType,
    Enum$TransactionAction? action,
    Enum$DriverRechargeTransactionType? rechargeType,
  });
}

class _CopyWithImpl$Query$Wallet$driverTransacions$edges$node<TRes>
    implements CopyWith$Query$Wallet$driverTransacions$edges$node<TRes> {
  _CopyWithImpl$Query$Wallet$driverTransacions$edges$node(
    this._instance,
    this._then,
  );

  final Query$Wallet$driverTransacions$edges$node _instance;

  final TRes Function(Query$Wallet$driverTransacions$edges$node) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? createdAt = _undefined,
    Object? amount = _undefined,
    Object? currency = _undefined,
    Object? refrenceNumber = _undefined,
    Object? deductType = _undefined,
    Object? action = _undefined,
    Object? rechargeType = _undefined,
  }) =>
      _then(Query$Wallet$driverTransacions$edges$node(
        createdAt: createdAt == _undefined || createdAt == null
            ? _instance.createdAt
            : (createdAt as DateTime),
        amount: amount == _undefined || amount == null
            ? _instance.amount
            : (amount as double),
        currency: currency == _undefined || currency == null
            ? _instance.currency
            : (currency as String),
        refrenceNumber: refrenceNumber == _undefined
            ? _instance.refrenceNumber
            : (refrenceNumber as String?),
        deductType: deductType == _undefined
            ? _instance.deductType
            : (deductType as Enum$DriverDeductTransactionType?),
        action: action == _undefined || action == null
            ? _instance.action
            : (action as Enum$TransactionAction),
        rechargeType: rechargeType == _undefined
            ? _instance.rechargeType
            : (rechargeType as Enum$DriverRechargeTransactionType?),
      ));
}

class _CopyWithStubImpl$Query$Wallet$driverTransacions$edges$node<TRes>
    implements CopyWith$Query$Wallet$driverTransacions$edges$node<TRes> {
  _CopyWithStubImpl$Query$Wallet$driverTransacions$edges$node(this._res);

  TRes _res;

  call({
    DateTime? createdAt,
    double? amount,
    String? currency,
    String? refrenceNumber,
    Enum$DriverDeductTransactionType? deductType,
    Enum$TransactionAction? action,
    Enum$DriverRechargeTransactionType? rechargeType,
  }) =>
      _res;
}

class Query$PaymentGateways {
  Query$PaymentGateways({required this.paymentGateways});

  factory Query$PaymentGateways.fromJson(Map<String, dynamic> json) {
    final l$paymentGateways = json['paymentGateways'];
    return Query$PaymentGateways(
        paymentGateways: (l$paymentGateways as List<dynamic>)
            .map((e) => Query$PaymentGateways$paymentGateways.fromJson(
                (e as Map<String, dynamic>)))
            .toList());
  }

  final List<Query$PaymentGateways$paymentGateways> paymentGateways;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$paymentGateways = paymentGateways;
    _resultData['paymentGateways'] =
        l$paymentGateways.map((e) => e.toJson()).toList();
    return _resultData;
  }

  @override
  int get hashCode {
    final l$paymentGateways = paymentGateways;
    return Object.hashAll([Object.hashAll(l$paymentGateways.map((v) => v))]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$PaymentGateways) || runtimeType != other.runtimeType) {
      return false;
    }
    final l$paymentGateways = paymentGateways;
    final lOther$paymentGateways = other.paymentGateways;
    if (l$paymentGateways.length != lOther$paymentGateways.length) {
      return false;
    }
    for (int i = 0; i < l$paymentGateways.length; i++) {
      final l$paymentGateways$entry = l$paymentGateways[i];
      final lOther$paymentGateways$entry = lOther$paymentGateways[i];
      if (l$paymentGateways$entry != lOther$paymentGateways$entry) {
        return false;
      }
    }
    return true;
  }
}

extension UtilityExtension$Query$PaymentGateways on Query$PaymentGateways {
  CopyWith$Query$PaymentGateways<Query$PaymentGateways> get copyWith =>
      CopyWith$Query$PaymentGateways(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$PaymentGateways<TRes> {
  factory CopyWith$Query$PaymentGateways(
    Query$PaymentGateways instance,
    TRes Function(Query$PaymentGateways) then,
  ) = _CopyWithImpl$Query$PaymentGateways;

  factory CopyWith$Query$PaymentGateways.stub(TRes res) =
      _CopyWithStubImpl$Query$PaymentGateways;

  TRes call({List<Query$PaymentGateways$paymentGateways>? paymentGateways});
  TRes paymentGateways(
      Iterable<Query$PaymentGateways$paymentGateways> Function(
              Iterable<
                  CopyWith$Query$PaymentGateways$paymentGateways<
                      Query$PaymentGateways$paymentGateways>>)
          _fn);
}

class _CopyWithImpl$Query$PaymentGateways<TRes>
    implements CopyWith$Query$PaymentGateways<TRes> {
  _CopyWithImpl$Query$PaymentGateways(
    this._instance,
    this._then,
  );

  final Query$PaymentGateways _instance;

  final TRes Function(Query$PaymentGateways) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? paymentGateways = _undefined}) =>
      _then(Query$PaymentGateways(
          paymentGateways:
              paymentGateways == _undefined || paymentGateways == null
                  ? _instance.paymentGateways
                  : (paymentGateways
                      as List<Query$PaymentGateways$paymentGateways>)));
  TRes paymentGateways(
          Iterable<Query$PaymentGateways$paymentGateways> Function(
                  Iterable<
                      CopyWith$Query$PaymentGateways$paymentGateways<
                          Query$PaymentGateways$paymentGateways>>)
              _fn) =>
      call(
          paymentGateways: _fn(_instance.paymentGateways
              .map((e) => CopyWith$Query$PaymentGateways$paymentGateways(
                    e,
                    (i) => i,
                  ))).toList());
}

class _CopyWithStubImpl$Query$PaymentGateways<TRes>
    implements CopyWith$Query$PaymentGateways<TRes> {
  _CopyWithStubImpl$Query$PaymentGateways(this._res);

  TRes _res;

  call({List<Query$PaymentGateways$paymentGateways>? paymentGateways}) => _res;
  paymentGateways(_fn) => _res;
}

const documentNodeQueryPaymentGateways = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.query,
    name: NameNode(value: 'PaymentGateways'),
    variableDefinitions: [],
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
        name: NameNode(value: 'paymentGateways'),
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
            name: NameNode(value: 'title'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'type'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'publicKey'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'media'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: SelectionSetNode(selections: [
              FieldNode(
                name: NameNode(value: 'address'),
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
]);
Query$PaymentGateways _parserFn$Query$PaymentGateways(
        Map<String, dynamic> data) =>
    Query$PaymentGateways.fromJson(data);
typedef OnQueryComplete$Query$PaymentGateways = FutureOr<void> Function(
  Map<String, dynamic>?,
  Query$PaymentGateways?,
);

class Options$Query$PaymentGateways
    extends graphql.QueryOptions<Query$PaymentGateways> {
  Options$Query$PaymentGateways({
    String? operationName,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Query$PaymentGateways? typedOptimisticResult,
    Duration? pollInterval,
    graphql.Context? context,
    OnQueryComplete$Query$PaymentGateways? onComplete,
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
                    data == null ? null : _parserFn$Query$PaymentGateways(data),
                  ),
          onError: onError,
          document: documentNodeQueryPaymentGateways,
          parserFn: _parserFn$Query$PaymentGateways,
        );

  final OnQueryComplete$Query$PaymentGateways? onCompleteWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onComplete == null
            ? super.properties
            : super.properties.where((property) => property != onComplete),
        onCompleteWithParsed,
      ];
}

class WatchOptions$Query$PaymentGateways
    extends graphql.WatchQueryOptions<Query$PaymentGateways> {
  WatchOptions$Query$PaymentGateways({
    String? operationName,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Query$PaymentGateways? typedOptimisticResult,
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
          document: documentNodeQueryPaymentGateways,
          pollInterval: pollInterval,
          eagerlyFetchResults: eagerlyFetchResults,
          carryForwardDataOnException: carryForwardDataOnException,
          fetchResults: fetchResults,
          parserFn: _parserFn$Query$PaymentGateways,
        );
}

class FetchMoreOptions$Query$PaymentGateways extends graphql.FetchMoreOptions {
  FetchMoreOptions$Query$PaymentGateways(
      {required graphql.UpdateQuery updateQuery})
      : super(
          updateQuery: updateQuery,
          document: documentNodeQueryPaymentGateways,
        );
}

extension ClientExtension$Query$PaymentGateways on graphql.GraphQLClient {
  Future<graphql.QueryResult<Query$PaymentGateways>> query$PaymentGateways(
          [Options$Query$PaymentGateways? options]) async =>
      await this.query(options ?? Options$Query$PaymentGateways());
  graphql.ObservableQuery<Query$PaymentGateways> watchQuery$PaymentGateways(
          [WatchOptions$Query$PaymentGateways? options]) =>
      this.watchQuery(options ?? WatchOptions$Query$PaymentGateways());
  void writeQuery$PaymentGateways({
    required Query$PaymentGateways data,
    bool broadcast = true,
  }) =>
      this.writeQuery(
        graphql.Request(
            operation:
                graphql.Operation(document: documentNodeQueryPaymentGateways)),
        data: data.toJson(),
        broadcast: broadcast,
      );
  Query$PaymentGateways? readQuery$PaymentGateways({bool optimistic = true}) {
    final result = this.readQuery(
      graphql.Request(
          operation:
              graphql.Operation(document: documentNodeQueryPaymentGateways)),
      optimistic: optimistic,
    );
    return result == null ? null : Query$PaymentGateways.fromJson(result);
  }
}

graphql_flutter.QueryHookResult<Query$PaymentGateways> useQuery$PaymentGateways(
        [Options$Query$PaymentGateways? options]) =>
    graphql_flutter.useQuery(options ?? Options$Query$PaymentGateways());
graphql.ObservableQuery<Query$PaymentGateways> useWatchQuery$PaymentGateways(
        [WatchOptions$Query$PaymentGateways? options]) =>
    graphql_flutter
        .useWatchQuery(options ?? WatchOptions$Query$PaymentGateways());

class Query$PaymentGateways$Widget
    extends graphql_flutter.Query<Query$PaymentGateways> {
  Query$PaymentGateways$Widget({
    widgets.Key? key,
    Options$Query$PaymentGateways? options,
    required graphql_flutter.QueryBuilder<Query$PaymentGateways> builder,
  }) : super(
          key: key,
          options: options ?? Options$Query$PaymentGateways(),
          builder: builder,
        );
}

class Query$PaymentGateways$paymentGateways {
  Query$PaymentGateways$paymentGateways({
    required this.id,
    required this.title,
    required this.type,
    this.publicKey,
    this.media,
  });

  factory Query$PaymentGateways$paymentGateways.fromJson(
      Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$title = json['title'];
    final l$type = json['type'];
    final l$publicKey = json['publicKey'];
    final l$media = json['media'];
    return Query$PaymentGateways$paymentGateways(
      id: (l$id as String),
      title: (l$title as String),
      type: fromJson$Enum$PaymentGatewayType((l$type as String)),
      publicKey: (l$publicKey as String?),
      media: l$media == null
          ? null
          : Query$PaymentGateways$paymentGateways$media.fromJson(
              (l$media as Map<String, dynamic>)),
    );
  }

  final String id;

  final String title;

  final Enum$PaymentGatewayType type;

  final String? publicKey;

  final Query$PaymentGateways$paymentGateways$media? media;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = l$id;
    final l$title = title;
    _resultData['title'] = l$title;
    final l$type = type;
    _resultData['type'] = toJson$Enum$PaymentGatewayType(l$type);
    final l$publicKey = publicKey;
    _resultData['publicKey'] = l$publicKey;
    final l$media = media;
    _resultData['media'] = l$media?.toJson();
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$title = title;
    final l$type = type;
    final l$publicKey = publicKey;
    final l$media = media;
    return Object.hashAll([
      l$id,
      l$title,
      l$type,
      l$publicKey,
      l$media,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$PaymentGateways$paymentGateways) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
      return false;
    }
    final l$title = title;
    final lOther$title = other.title;
    if (l$title != lOther$title) {
      return false;
    }
    final l$type = type;
    final lOther$type = other.type;
    if (l$type != lOther$type) {
      return false;
    }
    final l$publicKey = publicKey;
    final lOther$publicKey = other.publicKey;
    if (l$publicKey != lOther$publicKey) {
      return false;
    }
    final l$media = media;
    final lOther$media = other.media;
    if (l$media != lOther$media) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Query$PaymentGateways$paymentGateways
    on Query$PaymentGateways$paymentGateways {
  CopyWith$Query$PaymentGateways$paymentGateways<
          Query$PaymentGateways$paymentGateways>
      get copyWith => CopyWith$Query$PaymentGateways$paymentGateways(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$PaymentGateways$paymentGateways<TRes> {
  factory CopyWith$Query$PaymentGateways$paymentGateways(
    Query$PaymentGateways$paymentGateways instance,
    TRes Function(Query$PaymentGateways$paymentGateways) then,
  ) = _CopyWithImpl$Query$PaymentGateways$paymentGateways;

  factory CopyWith$Query$PaymentGateways$paymentGateways.stub(TRes res) =
      _CopyWithStubImpl$Query$PaymentGateways$paymentGateways;

  TRes call({
    String? id,
    String? title,
    Enum$PaymentGatewayType? type,
    String? publicKey,
    Query$PaymentGateways$paymentGateways$media? media,
  });
  CopyWith$Query$PaymentGateways$paymentGateways$media<TRes> get media;
}

class _CopyWithImpl$Query$PaymentGateways$paymentGateways<TRes>
    implements CopyWith$Query$PaymentGateways$paymentGateways<TRes> {
  _CopyWithImpl$Query$PaymentGateways$paymentGateways(
    this._instance,
    this._then,
  );

  final Query$PaymentGateways$paymentGateways _instance;

  final TRes Function(Query$PaymentGateways$paymentGateways) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? title = _undefined,
    Object? type = _undefined,
    Object? publicKey = _undefined,
    Object? media = _undefined,
  }) =>
      _then(Query$PaymentGateways$paymentGateways(
        id: id == _undefined || id == null ? _instance.id : (id as String),
        title: title == _undefined || title == null
            ? _instance.title
            : (title as String),
        type: type == _undefined || type == null
            ? _instance.type
            : (type as Enum$PaymentGatewayType),
        publicKey: publicKey == _undefined
            ? _instance.publicKey
            : (publicKey as String?),
        media: media == _undefined
            ? _instance.media
            : (media as Query$PaymentGateways$paymentGateways$media?),
      ));
  CopyWith$Query$PaymentGateways$paymentGateways$media<TRes> get media {
    final local$media = _instance.media;
    return local$media == null
        ? CopyWith$Query$PaymentGateways$paymentGateways$media.stub(
            _then(_instance))
        : CopyWith$Query$PaymentGateways$paymentGateways$media(
            local$media, (e) => call(media: e));
  }
}

class _CopyWithStubImpl$Query$PaymentGateways$paymentGateways<TRes>
    implements CopyWith$Query$PaymentGateways$paymentGateways<TRes> {
  _CopyWithStubImpl$Query$PaymentGateways$paymentGateways(this._res);

  TRes _res;

  call({
    String? id,
    String? title,
    Enum$PaymentGatewayType? type,
    String? publicKey,
    Query$PaymentGateways$paymentGateways$media? media,
  }) =>
      _res;
  CopyWith$Query$PaymentGateways$paymentGateways$media<TRes> get media =>
      CopyWith$Query$PaymentGateways$paymentGateways$media.stub(_res);
}

class Query$PaymentGateways$paymentGateways$media {
  Query$PaymentGateways$paymentGateways$media({required this.address});

  factory Query$PaymentGateways$paymentGateways$media.fromJson(
      Map<String, dynamic> json) {
    final l$address = json['address'];
    return Query$PaymentGateways$paymentGateways$media(
        address: (l$address as String));
  }

  final String address;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$address = address;
    _resultData['address'] = l$address;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$address = address;
    return Object.hashAll([l$address]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$PaymentGateways$paymentGateways$media) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$address = address;
    final lOther$address = other.address;
    if (l$address != lOther$address) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Query$PaymentGateways$paymentGateways$media
    on Query$PaymentGateways$paymentGateways$media {
  CopyWith$Query$PaymentGateways$paymentGateways$media<
          Query$PaymentGateways$paymentGateways$media>
      get copyWith => CopyWith$Query$PaymentGateways$paymentGateways$media(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$PaymentGateways$paymentGateways$media<TRes> {
  factory CopyWith$Query$PaymentGateways$paymentGateways$media(
    Query$PaymentGateways$paymentGateways$media instance,
    TRes Function(Query$PaymentGateways$paymentGateways$media) then,
  ) = _CopyWithImpl$Query$PaymentGateways$paymentGateways$media;

  factory CopyWith$Query$PaymentGateways$paymentGateways$media.stub(TRes res) =
      _CopyWithStubImpl$Query$PaymentGateways$paymentGateways$media;

  TRes call({String? address});
}

class _CopyWithImpl$Query$PaymentGateways$paymentGateways$media<TRes>
    implements CopyWith$Query$PaymentGateways$paymentGateways$media<TRes> {
  _CopyWithImpl$Query$PaymentGateways$paymentGateways$media(
    this._instance,
    this._then,
  );

  final Query$PaymentGateways$paymentGateways$media _instance;

  final TRes Function(Query$PaymentGateways$paymentGateways$media) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? address = _undefined}) =>
      _then(Query$PaymentGateways$paymentGateways$media(
          address: address == _undefined || address == null
              ? _instance.address
              : (address as String)));
}

class _CopyWithStubImpl$Query$PaymentGateways$paymentGateways$media<TRes>
    implements CopyWith$Query$PaymentGateways$paymentGateways$media<TRes> {
  _CopyWithStubImpl$Query$PaymentGateways$paymentGateways$media(this._res);

  TRes _res;

  call({String? address}) => _res;
}

class Variables$Mutation$TopUpWallet {
  factory Variables$Mutation$TopUpWallet(
          {required Input$TopUpWalletInput input}) =>
      Variables$Mutation$TopUpWallet._({
        r'input': input,
      });

  Variables$Mutation$TopUpWallet._(this._$data);

  factory Variables$Mutation$TopUpWallet.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$input = data['input'];
    result$data['input'] =
        Input$TopUpWalletInput.fromJson((l$input as Map<String, dynamic>));
    return Variables$Mutation$TopUpWallet._(result$data);
  }

  Map<String, dynamic> _$data;

  Input$TopUpWalletInput get input =>
      (_$data['input'] as Input$TopUpWalletInput);
  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$input = input;
    result$data['input'] = l$input.toJson();
    return result$data;
  }

  CopyWith$Variables$Mutation$TopUpWallet<Variables$Mutation$TopUpWallet>
      get copyWith => CopyWith$Variables$Mutation$TopUpWallet(
            this,
            (i) => i,
          );
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Variables$Mutation$TopUpWallet) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$input = input;
    final lOther$input = other.input;
    if (l$input != lOther$input) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$input = input;
    return Object.hashAll([l$input]);
  }
}

abstract class CopyWith$Variables$Mutation$TopUpWallet<TRes> {
  factory CopyWith$Variables$Mutation$TopUpWallet(
    Variables$Mutation$TopUpWallet instance,
    TRes Function(Variables$Mutation$TopUpWallet) then,
  ) = _CopyWithImpl$Variables$Mutation$TopUpWallet;

  factory CopyWith$Variables$Mutation$TopUpWallet.stub(TRes res) =
      _CopyWithStubImpl$Variables$Mutation$TopUpWallet;

  TRes call({Input$TopUpWalletInput? input});
}

class _CopyWithImpl$Variables$Mutation$TopUpWallet<TRes>
    implements CopyWith$Variables$Mutation$TopUpWallet<TRes> {
  _CopyWithImpl$Variables$Mutation$TopUpWallet(
    this._instance,
    this._then,
  );

  final Variables$Mutation$TopUpWallet _instance;

  final TRes Function(Variables$Mutation$TopUpWallet) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? input = _undefined}) =>
      _then(Variables$Mutation$TopUpWallet._({
        ..._instance._$data,
        if (input != _undefined && input != null)
          'input': (input as Input$TopUpWalletInput),
      }));
}

class _CopyWithStubImpl$Variables$Mutation$TopUpWallet<TRes>
    implements CopyWith$Variables$Mutation$TopUpWallet<TRes> {
  _CopyWithStubImpl$Variables$Mutation$TopUpWallet(this._res);

  TRes _res;

  call({Input$TopUpWalletInput? input}) => _res;
}

class Mutation$TopUpWallet {
  Mutation$TopUpWallet({required this.topUpWallet});

  factory Mutation$TopUpWallet.fromJson(Map<String, dynamic> json) {
    final l$topUpWallet = json['topUpWallet'];
    return Mutation$TopUpWallet(
        topUpWallet: Mutation$TopUpWallet$topUpWallet.fromJson(
            (l$topUpWallet as Map<String, dynamic>)));
  }

  final Mutation$TopUpWallet$topUpWallet topUpWallet;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$topUpWallet = topUpWallet;
    _resultData['topUpWallet'] = l$topUpWallet.toJson();
    return _resultData;
  }

  @override
  int get hashCode {
    final l$topUpWallet = topUpWallet;
    return Object.hashAll([l$topUpWallet]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Mutation$TopUpWallet) || runtimeType != other.runtimeType) {
      return false;
    }
    final l$topUpWallet = topUpWallet;
    final lOther$topUpWallet = other.topUpWallet;
    if (l$topUpWallet != lOther$topUpWallet) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Mutation$TopUpWallet on Mutation$TopUpWallet {
  CopyWith$Mutation$TopUpWallet<Mutation$TopUpWallet> get copyWith =>
      CopyWith$Mutation$TopUpWallet(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$TopUpWallet<TRes> {
  factory CopyWith$Mutation$TopUpWallet(
    Mutation$TopUpWallet instance,
    TRes Function(Mutation$TopUpWallet) then,
  ) = _CopyWithImpl$Mutation$TopUpWallet;

  factory CopyWith$Mutation$TopUpWallet.stub(TRes res) =
      _CopyWithStubImpl$Mutation$TopUpWallet;

  TRes call({Mutation$TopUpWallet$topUpWallet? topUpWallet});
  CopyWith$Mutation$TopUpWallet$topUpWallet<TRes> get topUpWallet;
}

class _CopyWithImpl$Mutation$TopUpWallet<TRes>
    implements CopyWith$Mutation$TopUpWallet<TRes> {
  _CopyWithImpl$Mutation$TopUpWallet(
    this._instance,
    this._then,
  );

  final Mutation$TopUpWallet _instance;

  final TRes Function(Mutation$TopUpWallet) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? topUpWallet = _undefined}) => _then(Mutation$TopUpWallet(
      topUpWallet: topUpWallet == _undefined || topUpWallet == null
          ? _instance.topUpWallet
          : (topUpWallet as Mutation$TopUpWallet$topUpWallet)));
  CopyWith$Mutation$TopUpWallet$topUpWallet<TRes> get topUpWallet {
    final local$topUpWallet = _instance.topUpWallet;
    return CopyWith$Mutation$TopUpWallet$topUpWallet(
        local$topUpWallet, (e) => call(topUpWallet: e));
  }
}

class _CopyWithStubImpl$Mutation$TopUpWallet<TRes>
    implements CopyWith$Mutation$TopUpWallet<TRes> {
  _CopyWithStubImpl$Mutation$TopUpWallet(this._res);

  TRes _res;

  call({Mutation$TopUpWallet$topUpWallet? topUpWallet}) => _res;
  CopyWith$Mutation$TopUpWallet$topUpWallet<TRes> get topUpWallet =>
      CopyWith$Mutation$TopUpWallet$topUpWallet.stub(_res);
}

const documentNodeMutationTopUpWallet = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.mutation,
    name: NameNode(value: 'TopUpWallet'),
    variableDefinitions: [
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'input')),
        type: NamedTypeNode(
          name: NameNode(value: 'TopUpWalletInput'),
          isNonNull: true,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      )
    ],
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
        name: NameNode(value: 'topUpWallet'),
        alias: null,
        arguments: [
          ArgumentNode(
            name: NameNode(value: 'input'),
            value: VariableNode(name: NameNode(value: 'input')),
          )
        ],
        directives: [],
        selectionSet: SelectionSetNode(selections: [
          FieldNode(
            name: NameNode(value: 'status'),
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
Mutation$TopUpWallet _parserFn$Mutation$TopUpWallet(
        Map<String, dynamic> data) =>
    Mutation$TopUpWallet.fromJson(data);
typedef OnMutationCompleted$Mutation$TopUpWallet = FutureOr<void> Function(
  Map<String, dynamic>?,
  Mutation$TopUpWallet?,
);

class Options$Mutation$TopUpWallet
    extends graphql.MutationOptions<Mutation$TopUpWallet> {
  Options$Mutation$TopUpWallet({
    String? operationName,
    required Variables$Mutation$TopUpWallet variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Mutation$TopUpWallet? typedOptimisticResult,
    graphql.Context? context,
    OnMutationCompleted$Mutation$TopUpWallet? onCompleted,
    graphql.OnMutationUpdate<Mutation$TopUpWallet>? update,
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
                    data == null ? null : _parserFn$Mutation$TopUpWallet(data),
                  ),
          update: update,
          onError: onError,
          document: documentNodeMutationTopUpWallet,
          parserFn: _parserFn$Mutation$TopUpWallet,
        );

  final OnMutationCompleted$Mutation$TopUpWallet? onCompletedWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onCompleted == null
            ? super.properties
            : super.properties.where((property) => property != onCompleted),
        onCompletedWithParsed,
      ];
}

class WatchOptions$Mutation$TopUpWallet
    extends graphql.WatchQueryOptions<Mutation$TopUpWallet> {
  WatchOptions$Mutation$TopUpWallet({
    String? operationName,
    required Variables$Mutation$TopUpWallet variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Mutation$TopUpWallet? typedOptimisticResult,
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
          document: documentNodeMutationTopUpWallet,
          pollInterval: pollInterval,
          eagerlyFetchResults: eagerlyFetchResults,
          carryForwardDataOnException: carryForwardDataOnException,
          fetchResults: fetchResults,
          parserFn: _parserFn$Mutation$TopUpWallet,
        );
}

extension ClientExtension$Mutation$TopUpWallet on graphql.GraphQLClient {
  Future<graphql.QueryResult<Mutation$TopUpWallet>> mutate$TopUpWallet(
          Options$Mutation$TopUpWallet options) async =>
      await this.mutate(options);
  graphql.ObservableQuery<Mutation$TopUpWallet> watchMutation$TopUpWallet(
          WatchOptions$Mutation$TopUpWallet options) =>
      this.watchMutation(options);
}

class Mutation$TopUpWallet$HookResult {
  Mutation$TopUpWallet$HookResult(
    this.runMutation,
    this.result,
  );

  final RunMutation$Mutation$TopUpWallet runMutation;

  final graphql.QueryResult<Mutation$TopUpWallet> result;
}

Mutation$TopUpWallet$HookResult useMutation$TopUpWallet(
    [WidgetOptions$Mutation$TopUpWallet? options]) {
  final result = graphql_flutter
      .useMutation(options ?? WidgetOptions$Mutation$TopUpWallet());
  return Mutation$TopUpWallet$HookResult(
    (variables, {optimisticResult, typedOptimisticResult}) =>
        result.runMutation(
      variables.toJson(),
      optimisticResult: optimisticResult ?? typedOptimisticResult?.toJson(),
    ),
    result.result,
  );
}

graphql.ObservableQuery<Mutation$TopUpWallet> useWatchMutation$TopUpWallet(
        WatchOptions$Mutation$TopUpWallet options) =>
    graphql_flutter.useWatchMutation(options);

class WidgetOptions$Mutation$TopUpWallet
    extends graphql.MutationOptions<Mutation$TopUpWallet> {
  WidgetOptions$Mutation$TopUpWallet({
    String? operationName,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Mutation$TopUpWallet? typedOptimisticResult,
    graphql.Context? context,
    OnMutationCompleted$Mutation$TopUpWallet? onCompleted,
    graphql.OnMutationUpdate<Mutation$TopUpWallet>? update,
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
                    data == null ? null : _parserFn$Mutation$TopUpWallet(data),
                  ),
          update: update,
          onError: onError,
          document: documentNodeMutationTopUpWallet,
          parserFn: _parserFn$Mutation$TopUpWallet,
        );

  final OnMutationCompleted$Mutation$TopUpWallet? onCompletedWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onCompleted == null
            ? super.properties
            : super.properties.where((property) => property != onCompleted),
        onCompletedWithParsed,
      ];
}

typedef RunMutation$Mutation$TopUpWallet
    = graphql.MultiSourceResult<Mutation$TopUpWallet> Function(
  Variables$Mutation$TopUpWallet, {
  Object? optimisticResult,
  Mutation$TopUpWallet? typedOptimisticResult,
});
typedef Builder$Mutation$TopUpWallet = widgets.Widget Function(
  RunMutation$Mutation$TopUpWallet,
  graphql.QueryResult<Mutation$TopUpWallet>?,
);

class Mutation$TopUpWallet$Widget
    extends graphql_flutter.Mutation<Mutation$TopUpWallet> {
  Mutation$TopUpWallet$Widget({
    widgets.Key? key,
    WidgetOptions$Mutation$TopUpWallet? options,
    required Builder$Mutation$TopUpWallet builder,
  }) : super(
          key: key,
          options: options ?? WidgetOptions$Mutation$TopUpWallet(),
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

class Mutation$TopUpWallet$topUpWallet {
  Mutation$TopUpWallet$topUpWallet({
    required this.status,
    required this.url,
  });

  factory Mutation$TopUpWallet$topUpWallet.fromJson(Map<String, dynamic> json) {
    final l$status = json['status'];
    final l$url = json['url'];
    return Mutation$TopUpWallet$topUpWallet(
      status: fromJson$Enum$TopUpWalletStatus((l$status as String)),
      url: (l$url as String),
    );
  }

  final Enum$TopUpWalletStatus status;

  final String url;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$status = status;
    _resultData['status'] = toJson$Enum$TopUpWalletStatus(l$status);
    final l$url = url;
    _resultData['url'] = l$url;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$status = status;
    final l$url = url;
    return Object.hashAll([
      l$status,
      l$url,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Mutation$TopUpWallet$topUpWallet) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$status = status;
    final lOther$status = other.status;
    if (l$status != lOther$status) {
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

extension UtilityExtension$Mutation$TopUpWallet$topUpWallet
    on Mutation$TopUpWallet$topUpWallet {
  CopyWith$Mutation$TopUpWallet$topUpWallet<Mutation$TopUpWallet$topUpWallet>
      get copyWith => CopyWith$Mutation$TopUpWallet$topUpWallet(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Mutation$TopUpWallet$topUpWallet<TRes> {
  factory CopyWith$Mutation$TopUpWallet$topUpWallet(
    Mutation$TopUpWallet$topUpWallet instance,
    TRes Function(Mutation$TopUpWallet$topUpWallet) then,
  ) = _CopyWithImpl$Mutation$TopUpWallet$topUpWallet;

  factory CopyWith$Mutation$TopUpWallet$topUpWallet.stub(TRes res) =
      _CopyWithStubImpl$Mutation$TopUpWallet$topUpWallet;

  TRes call({
    Enum$TopUpWalletStatus? status,
    String? url,
  });
}

class _CopyWithImpl$Mutation$TopUpWallet$topUpWallet<TRes>
    implements CopyWith$Mutation$TopUpWallet$topUpWallet<TRes> {
  _CopyWithImpl$Mutation$TopUpWallet$topUpWallet(
    this._instance,
    this._then,
  );

  final Mutation$TopUpWallet$topUpWallet _instance;

  final TRes Function(Mutation$TopUpWallet$topUpWallet) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? status = _undefined,
    Object? url = _undefined,
  }) =>
      _then(Mutation$TopUpWallet$topUpWallet(
        status: status == _undefined || status == null
            ? _instance.status
            : (status as Enum$TopUpWalletStatus),
        url: url == _undefined || url == null ? _instance.url : (url as String),
      ));
}

class _CopyWithStubImpl$Mutation$TopUpWallet$topUpWallet<TRes>
    implements CopyWith$Mutation$TopUpWallet$topUpWallet<TRes> {
  _CopyWithStubImpl$Mutation$TopUpWallet$topUpWallet(this._res);

  TRes _res;

  call({
    Enum$TopUpWalletStatus? status,
    String? url,
  }) =>
      _res;
}
