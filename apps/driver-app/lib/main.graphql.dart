import 'dart:async';
import 'graphql/order.fragment.graphql.dart';
import 'package:flutter/widgets.dart' as widgets;
import 'package:gql/ast.dart';
import 'package:graphql/client.dart' as graphql;
import 'package:graphql_flutter/graphql_flutter.dart' as graphql_flutter;
import 'package:ridy/graphql/scalars/timestamp.dart';
import 'schema.gql.dart';

class Variables$Query$Me {
  factory Variables$Query$Me({required int versionCode}) =>
      Variables$Query$Me._({
        r'versionCode': versionCode,
      });

  Variables$Query$Me._(this._$data);

  factory Variables$Query$Me.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$versionCode = data['versionCode'];
    result$data['versionCode'] = (l$versionCode as int);
    return Variables$Query$Me._(result$data);
  }

  Map<String, dynamic> _$data;

  int get versionCode => (_$data['versionCode'] as int);
  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$versionCode = versionCode;
    result$data['versionCode'] = l$versionCode;
    return result$data;
  }

  CopyWith$Variables$Query$Me<Variables$Query$Me> get copyWith =>
      CopyWith$Variables$Query$Me(
        this,
        (i) => i,
      );
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Variables$Query$Me) || runtimeType != other.runtimeType) {
      return false;
    }
    final l$versionCode = versionCode;
    final lOther$versionCode = other.versionCode;
    if (l$versionCode != lOther$versionCode) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$versionCode = versionCode;
    return Object.hashAll([l$versionCode]);
  }
}

abstract class CopyWith$Variables$Query$Me<TRes> {
  factory CopyWith$Variables$Query$Me(
    Variables$Query$Me instance,
    TRes Function(Variables$Query$Me) then,
  ) = _CopyWithImpl$Variables$Query$Me;

  factory CopyWith$Variables$Query$Me.stub(TRes res) =
      _CopyWithStubImpl$Variables$Query$Me;

  TRes call({int? versionCode});
}

class _CopyWithImpl$Variables$Query$Me<TRes>
    implements CopyWith$Variables$Query$Me<TRes> {
  _CopyWithImpl$Variables$Query$Me(
    this._instance,
    this._then,
  );

  final Variables$Query$Me _instance;

  final TRes Function(Variables$Query$Me) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? versionCode = _undefined}) => _then(Variables$Query$Me._({
        ..._instance._$data,
        if (versionCode != _undefined && versionCode != null)
          'versionCode': (versionCode as int),
      }));
}

class _CopyWithStubImpl$Variables$Query$Me<TRes>
    implements CopyWith$Variables$Query$Me<TRes> {
  _CopyWithStubImpl$Variables$Query$Me(this._res);

  TRes _res;

  call({int? versionCode}) => _res;
}

class Query$Me {
  Query$Me({
    this.driver,
    required this.requireUpdate,
  });

  factory Query$Me.fromJson(Map<String, dynamic> json) {
    final l$driver = json['driver'];
    final l$requireUpdate = json['requireUpdate'];
    return Query$Me(
      driver: l$driver == null
          ? null
          : Query$Me$driver.fromJson((l$driver as Map<String, dynamic>)),
      requireUpdate: fromJson$Enum$VersionStatus((l$requireUpdate as String)),
    );
  }

  final Query$Me$driver? driver;

  final Enum$VersionStatus requireUpdate;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$driver = driver;
    _resultData['driver'] = l$driver?.toJson();
    final l$requireUpdate = requireUpdate;
    _resultData['requireUpdate'] = toJson$Enum$VersionStatus(l$requireUpdate);
    return _resultData;
  }

  @override
  int get hashCode {
    final l$driver = driver;
    final l$requireUpdate = requireUpdate;
    return Object.hashAll([
      l$driver,
      l$requireUpdate,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$Me) || runtimeType != other.runtimeType) {
      return false;
    }
    final l$driver = driver;
    final lOther$driver = other.driver;
    if (l$driver != lOther$driver) {
      return false;
    }
    final l$requireUpdate = requireUpdate;
    final lOther$requireUpdate = other.requireUpdate;
    if (l$requireUpdate != lOther$requireUpdate) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Query$Me on Query$Me {
  CopyWith$Query$Me<Query$Me> get copyWith => CopyWith$Query$Me(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$Me<TRes> {
  factory CopyWith$Query$Me(
    Query$Me instance,
    TRes Function(Query$Me) then,
  ) = _CopyWithImpl$Query$Me;

  factory CopyWith$Query$Me.stub(TRes res) = _CopyWithStubImpl$Query$Me;

  TRes call({
    Query$Me$driver? driver,
    Enum$VersionStatus? requireUpdate,
  });
  CopyWith$Query$Me$driver<TRes> get driver;
}

class _CopyWithImpl$Query$Me<TRes> implements CopyWith$Query$Me<TRes> {
  _CopyWithImpl$Query$Me(
    this._instance,
    this._then,
  );

  final Query$Me _instance;

  final TRes Function(Query$Me) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? driver = _undefined,
    Object? requireUpdate = _undefined,
  }) =>
      _then(Query$Me(
        driver: driver == _undefined
            ? _instance.driver
            : (driver as Query$Me$driver?),
        requireUpdate: requireUpdate == _undefined || requireUpdate == null
            ? _instance.requireUpdate
            : (requireUpdate as Enum$VersionStatus),
      ));
  CopyWith$Query$Me$driver<TRes> get driver {
    final local$driver = _instance.driver;
    return local$driver == null
        ? CopyWith$Query$Me$driver.stub(_then(_instance))
        : CopyWith$Query$Me$driver(local$driver, (e) => call(driver: e));
  }
}

class _CopyWithStubImpl$Query$Me<TRes> implements CopyWith$Query$Me<TRes> {
  _CopyWithStubImpl$Query$Me(this._res);

  TRes _res;

  call({
    Query$Me$driver? driver,
    Enum$VersionStatus? requireUpdate,
  }) =>
      _res;
  CopyWith$Query$Me$driver<TRes> get driver =>
      CopyWith$Query$Me$driver.stub(_res);
}

const documentNodeQueryMe = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.query,
    name: NameNode(value: 'Me'),
    variableDefinitions: [
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'versionCode')),
        type: NamedTypeNode(
          name: NameNode(value: 'Int'),
          isNonNull: true,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      )
    ],
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
        name: NameNode(value: 'driver'),
        alias: null,
        arguments: [
          ArgumentNode(
            name: NameNode(value: 'id'),
            value: IntValueNode(value: '1'),
          )
        ],
        directives: [],
        selectionSet: SelectionSetNode(selections: [
          FieldNode(
            name: NameNode(value: 'mobileNumber'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'firstName'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'lastName'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'searchDistance'),
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
          FieldNode(
            name: NameNode(value: 'softRejectionNote'),
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
            name: NameNode(value: 'currentOrders'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: SelectionSetNode(selections: [
              FragmentSpreadNode(
                name: NameNode(value: 'CurrentOrder'),
                directives: [],
              ),
              FieldNode(
                name: NameNode(value: 'id'),
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
                name: NameNode(value: 'expectedTimestamp'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
              FieldNode(
                name: NameNode(value: 'destinationArrivedTo'),
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
                name: NameNode(value: 'currency'),
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
                name: NameNode(value: 'costAfterCoupon'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
              FieldNode(
                name: NameNode(value: 'paidAmount'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
              FieldNode(
                name: NameNode(value: 'etaPickup'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
              FieldNode(
                name: NameNode(value: 'tipAmount'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
              FieldNode(
                name: NameNode(value: 'directions'),
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
              FieldNode(
                name: NameNode(value: 'options'),
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
                    name: NameNode(value: 'name'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: null,
                  ),
                  FieldNode(
                    name: NameNode(value: 'icon'),
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
                name: NameNode(value: 'rider'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: SelectionSetNode(selections: [
                  FieldNode(
                    name: NameNode(value: 'mobileNumber'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: null,
                  ),
                  FieldNode(
                    name: NameNode(value: 'firstName'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: null,
                  ),
                  FieldNode(
                    name: NameNode(value: 'lastName'),
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
                  FieldNode(
                    name: NameNode(value: 'wallets'),
                    alias: null,
                    arguments: [],
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
                        name: NameNode(value: 'balance'),
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
                name: NameNode(value: 'driverLastSeenMessagesAt'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
              FieldNode(
                name: NameNode(value: 'conversations'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: SelectionSetNode(selections: [
                  FieldNode(
                    name: NameNode(value: 'sentAt'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: null,
                  )
                ]),
              ),
            ]),
          ),
          FieldNode(
            name: NameNode(value: 'wallets'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: SelectionSetNode(selections: [
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
            name: NameNode(value: 'isWalletHidden'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FragmentSpreadNode(
            name: NameNode(value: 'BasicProfile'),
            directives: [],
          ),
        ]),
      ),
      FieldNode(
        name: NameNode(value: 'requireUpdate'),
        alias: null,
        arguments: [
          ArgumentNode(
            name: NameNode(value: 'versionCode'),
            value: VariableNode(name: NameNode(value: 'versionCode')),
          )
        ],
        directives: [],
        selectionSet: null,
      ),
    ]),
  ),
  fragmentDefinitionCurrentOrder,
  fragmentDefinitionPoint,
  fragmentDefinitionBasicProfile,
]);
Query$Me _parserFn$Query$Me(Map<String, dynamic> data) =>
    Query$Me.fromJson(data);
typedef OnQueryComplete$Query$Me = FutureOr<void> Function(
  Map<String, dynamic>?,
  Query$Me?,
);

class Options$Query$Me extends graphql.QueryOptions<Query$Me> {
  Options$Query$Me({
    String? operationName,
    required Variables$Query$Me variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Query$Me? typedOptimisticResult,
    Duration? pollInterval,
    graphql.Context? context,
    OnQueryComplete$Query$Me? onComplete,
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
                    data == null ? null : _parserFn$Query$Me(data),
                  ),
          onError: onError,
          document: documentNodeQueryMe,
          parserFn: _parserFn$Query$Me,
        );

  final OnQueryComplete$Query$Me? onCompleteWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onComplete == null
            ? super.properties
            : super.properties.where((property) => property != onComplete),
        onCompleteWithParsed,
      ];
}

class WatchOptions$Query$Me extends graphql.WatchQueryOptions<Query$Me> {
  WatchOptions$Query$Me({
    String? operationName,
    required Variables$Query$Me variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Query$Me? typedOptimisticResult,
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
          document: documentNodeQueryMe,
          pollInterval: pollInterval,
          eagerlyFetchResults: eagerlyFetchResults,
          carryForwardDataOnException: carryForwardDataOnException,
          fetchResults: fetchResults,
          parserFn: _parserFn$Query$Me,
        );
}

class FetchMoreOptions$Query$Me extends graphql.FetchMoreOptions {
  FetchMoreOptions$Query$Me({
    required graphql.UpdateQuery updateQuery,
    required Variables$Query$Me variables,
  }) : super(
          updateQuery: updateQuery,
          variables: variables.toJson(),
          document: documentNodeQueryMe,
        );
}

extension ClientExtension$Query$Me on graphql.GraphQLClient {
  Future<graphql.QueryResult<Query$Me>> query$Me(
          Options$Query$Me options) async =>
      await this.query(options);
  graphql.ObservableQuery<Query$Me> watchQuery$Me(
          WatchOptions$Query$Me options) =>
      this.watchQuery(options);
  void writeQuery$Me({
    required Query$Me data,
    required Variables$Query$Me variables,
    bool broadcast = true,
  }) =>
      this.writeQuery(
        graphql.Request(
          operation: graphql.Operation(document: documentNodeQueryMe),
          variables: variables.toJson(),
        ),
        data: data.toJson(),
        broadcast: broadcast,
      );
  Query$Me? readQuery$Me({
    required Variables$Query$Me variables,
    bool optimistic = true,
  }) {
    final result = this.readQuery(
      graphql.Request(
        operation: graphql.Operation(document: documentNodeQueryMe),
        variables: variables.toJson(),
      ),
      optimistic: optimistic,
    );
    return result == null ? null : Query$Me.fromJson(result);
  }
}

graphql_flutter.QueryHookResult<Query$Me> useQuery$Me(
        Options$Query$Me options) =>
    graphql_flutter.useQuery(options);
graphql.ObservableQuery<Query$Me> useWatchQuery$Me(
        WatchOptions$Query$Me options) =>
    graphql_flutter.useWatchQuery(options);

class Query$Me$Widget extends graphql_flutter.Query<Query$Me> {
  Query$Me$Widget({
    widgets.Key? key,
    required Options$Query$Me options,
    required graphql_flutter.QueryBuilder<Query$Me> builder,
  }) : super(
          key: key,
          options: options,
          builder: builder,
        );
}

class Query$Me$driver implements Fragment$BasicProfile {
  Query$Me$driver({
    required this.mobileNumber,
    this.firstName,
    this.lastName,
    this.searchDistance,
    this.media,
    this.softRejectionNote,
    required this.status,
    required this.currentOrders,
    required this.wallets,
    required this.isWalletHidden,
  });

  factory Query$Me$driver.fromJson(Map<String, dynamic> json) {
    final l$mobileNumber = json['mobileNumber'];
    final l$firstName = json['firstName'];
    final l$lastName = json['lastName'];
    final l$searchDistance = json['searchDistance'];
    final l$media = json['media'];
    final l$softRejectionNote = json['softRejectionNote'];
    final l$status = json['status'];
    final l$currentOrders = json['currentOrders'];
    final l$wallets = json['wallets'];
    final l$isWalletHidden = json['isWalletHidden'];
    return Query$Me$driver(
      mobileNumber: (l$mobileNumber as String),
      firstName: (l$firstName as String?),
      lastName: (l$lastName as String?),
      searchDistance: (l$searchDistance as int?),
      media: l$media == null
          ? null
          : Query$Me$driver$media.fromJson((l$media as Map<String, dynamic>)),
      softRejectionNote: (l$softRejectionNote as String?),
      status: fromJson$Enum$DriverStatus((l$status as String)),
      currentOrders: (l$currentOrders as List<dynamic>)
          .map((e) => Query$Me$driver$currentOrders.fromJson(
              (e as Map<String, dynamic>)))
          .toList(),
      wallets: (l$wallets as List<dynamic>)
          .map((e) =>
              Query$Me$driver$wallets.fromJson((e as Map<String, dynamic>)))
          .toList(),
      isWalletHidden: (l$isWalletHidden as bool),
    );
  }

  final String mobileNumber;

  final String? firstName;

  final String? lastName;

  final int? searchDistance;

  final Query$Me$driver$media? media;

  final String? softRejectionNote;

  final Enum$DriverStatus status;

  final List<Query$Me$driver$currentOrders> currentOrders;

  final List<Query$Me$driver$wallets> wallets;

  final bool isWalletHidden;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$mobileNumber = mobileNumber;
    _resultData['mobileNumber'] = l$mobileNumber;
    final l$firstName = firstName;
    _resultData['firstName'] = l$firstName;
    final l$lastName = lastName;
    _resultData['lastName'] = l$lastName;
    final l$searchDistance = searchDistance;
    _resultData['searchDistance'] = l$searchDistance;
    final l$media = media;
    _resultData['media'] = l$media?.toJson();
    final l$softRejectionNote = softRejectionNote;
    _resultData['softRejectionNote'] = l$softRejectionNote;
    final l$status = status;
    _resultData['status'] = toJson$Enum$DriverStatus(l$status);
    final l$currentOrders = currentOrders;
    _resultData['currentOrders'] =
        l$currentOrders.map((e) => e.toJson()).toList();
    final l$wallets = wallets;
    _resultData['wallets'] = l$wallets.map((e) => e.toJson()).toList();
    final l$isWalletHidden = isWalletHidden;
    _resultData['isWalletHidden'] = l$isWalletHidden;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$mobileNumber = mobileNumber;
    final l$firstName = firstName;
    final l$lastName = lastName;
    final l$searchDistance = searchDistance;
    final l$media = media;
    final l$softRejectionNote = softRejectionNote;
    final l$status = status;
    final l$currentOrders = currentOrders;
    final l$wallets = wallets;
    final l$isWalletHidden = isWalletHidden;
    return Object.hashAll([
      l$mobileNumber,
      l$firstName,
      l$lastName,
      l$searchDistance,
      l$media,
      l$softRejectionNote,
      l$status,
      Object.hashAll(l$currentOrders.map((v) => v)),
      Object.hashAll(l$wallets.map((v) => v)),
      l$isWalletHidden,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$Me$driver) || runtimeType != other.runtimeType) {
      return false;
    }
    final l$mobileNumber = mobileNumber;
    final lOther$mobileNumber = other.mobileNumber;
    if (l$mobileNumber != lOther$mobileNumber) {
      return false;
    }
    final l$firstName = firstName;
    final lOther$firstName = other.firstName;
    if (l$firstName != lOther$firstName) {
      return false;
    }
    final l$lastName = lastName;
    final lOther$lastName = other.lastName;
    if (l$lastName != lOther$lastName) {
      return false;
    }
    final l$searchDistance = searchDistance;
    final lOther$searchDistance = other.searchDistance;
    if (l$searchDistance != lOther$searchDistance) {
      return false;
    }
    final l$media = media;
    final lOther$media = other.media;
    if (l$media != lOther$media) {
      return false;
    }
    final l$softRejectionNote = softRejectionNote;
    final lOther$softRejectionNote = other.softRejectionNote;
    if (l$softRejectionNote != lOther$softRejectionNote) {
      return false;
    }
    final l$status = status;
    final lOther$status = other.status;
    if (l$status != lOther$status) {
      return false;
    }
    final l$currentOrders = currentOrders;
    final lOther$currentOrders = other.currentOrders;
    if (l$currentOrders.length != lOther$currentOrders.length) {
      return false;
    }
    for (int i = 0; i < l$currentOrders.length; i++) {
      final l$currentOrders$entry = l$currentOrders[i];
      final lOther$currentOrders$entry = lOther$currentOrders[i];
      if (l$currentOrders$entry != lOther$currentOrders$entry) {
        return false;
      }
    }
    final l$wallets = wallets;
    final lOther$wallets = other.wallets;
    if (l$wallets.length != lOther$wallets.length) {
      return false;
    }
    for (int i = 0; i < l$wallets.length; i++) {
      final l$wallets$entry = l$wallets[i];
      final lOther$wallets$entry = lOther$wallets[i];
      if (l$wallets$entry != lOther$wallets$entry) {
        return false;
      }
    }
    final l$isWalletHidden = isWalletHidden;
    final lOther$isWalletHidden = other.isWalletHidden;
    if (l$isWalletHidden != lOther$isWalletHidden) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Query$Me$driver on Query$Me$driver {
  CopyWith$Query$Me$driver<Query$Me$driver> get copyWith =>
      CopyWith$Query$Me$driver(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$Me$driver<TRes> {
  factory CopyWith$Query$Me$driver(
    Query$Me$driver instance,
    TRes Function(Query$Me$driver) then,
  ) = _CopyWithImpl$Query$Me$driver;

  factory CopyWith$Query$Me$driver.stub(TRes res) =
      _CopyWithStubImpl$Query$Me$driver;

  TRes call({
    String? mobileNumber,
    String? firstName,
    String? lastName,
    int? searchDistance,
    Query$Me$driver$media? media,
    String? softRejectionNote,
    Enum$DriverStatus? status,
    List<Query$Me$driver$currentOrders>? currentOrders,
    List<Query$Me$driver$wallets>? wallets,
    bool? isWalletHidden,
  });
  CopyWith$Query$Me$driver$media<TRes> get media;
  TRes currentOrders(
      Iterable<Query$Me$driver$currentOrders> Function(
              Iterable<
                  CopyWith$Query$Me$driver$currentOrders<
                      Query$Me$driver$currentOrders>>)
          _fn);
  TRes wallets(
      Iterable<Query$Me$driver$wallets> Function(
              Iterable<
                  CopyWith$Query$Me$driver$wallets<Query$Me$driver$wallets>>)
          _fn);
}

class _CopyWithImpl$Query$Me$driver<TRes>
    implements CopyWith$Query$Me$driver<TRes> {
  _CopyWithImpl$Query$Me$driver(
    this._instance,
    this._then,
  );

  final Query$Me$driver _instance;

  final TRes Function(Query$Me$driver) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? mobileNumber = _undefined,
    Object? firstName = _undefined,
    Object? lastName = _undefined,
    Object? searchDistance = _undefined,
    Object? media = _undefined,
    Object? softRejectionNote = _undefined,
    Object? status = _undefined,
    Object? currentOrders = _undefined,
    Object? wallets = _undefined,
    Object? isWalletHidden = _undefined,
  }) =>
      _then(Query$Me$driver(
        mobileNumber: mobileNumber == _undefined || mobileNumber == null
            ? _instance.mobileNumber
            : (mobileNumber as String),
        firstName: firstName == _undefined
            ? _instance.firstName
            : (firstName as String?),
        lastName:
            lastName == _undefined ? _instance.lastName : (lastName as String?),
        searchDistance: searchDistance == _undefined
            ? _instance.searchDistance
            : (searchDistance as int?),
        media: media == _undefined
            ? _instance.media
            : (media as Query$Me$driver$media?),
        softRejectionNote: softRejectionNote == _undefined
            ? _instance.softRejectionNote
            : (softRejectionNote as String?),
        status: status == _undefined || status == null
            ? _instance.status
            : (status as Enum$DriverStatus),
        currentOrders: currentOrders == _undefined || currentOrders == null
            ? _instance.currentOrders
            : (currentOrders as List<Query$Me$driver$currentOrders>),
        wallets: wallets == _undefined || wallets == null
            ? _instance.wallets
            : (wallets as List<Query$Me$driver$wallets>),
        isWalletHidden: isWalletHidden == _undefined || isWalletHidden == null
            ? _instance.isWalletHidden
            : (isWalletHidden as bool),
      ));
  CopyWith$Query$Me$driver$media<TRes> get media {
    final local$media = _instance.media;
    return local$media == null
        ? CopyWith$Query$Me$driver$media.stub(_then(_instance))
        : CopyWith$Query$Me$driver$media(local$media, (e) => call(media: e));
  }

  TRes currentOrders(
          Iterable<Query$Me$driver$currentOrders> Function(
                  Iterable<
                      CopyWith$Query$Me$driver$currentOrders<
                          Query$Me$driver$currentOrders>>)
              _fn) =>
      call(
          currentOrders: _fn(_instance.currentOrders
              .map((e) => CopyWith$Query$Me$driver$currentOrders(
                    e,
                    (i) => i,
                  ))).toList());
  TRes wallets(
          Iterable<Query$Me$driver$wallets> Function(
                  Iterable<
                      CopyWith$Query$Me$driver$wallets<
                          Query$Me$driver$wallets>>)
              _fn) =>
      call(
          wallets:
              _fn(_instance.wallets.map((e) => CopyWith$Query$Me$driver$wallets(
                    e,
                    (i) => i,
                  ))).toList());
}

class _CopyWithStubImpl$Query$Me$driver<TRes>
    implements CopyWith$Query$Me$driver<TRes> {
  _CopyWithStubImpl$Query$Me$driver(this._res);

  TRes _res;

  call({
    String? mobileNumber,
    String? firstName,
    String? lastName,
    int? searchDistance,
    Query$Me$driver$media? media,
    String? softRejectionNote,
    Enum$DriverStatus? status,
    List<Query$Me$driver$currentOrders>? currentOrders,
    List<Query$Me$driver$wallets>? wallets,
    bool? isWalletHidden,
  }) =>
      _res;
  CopyWith$Query$Me$driver$media<TRes> get media =>
      CopyWith$Query$Me$driver$media.stub(_res);
  currentOrders(_fn) => _res;
  wallets(_fn) => _res;
}

class Query$Me$driver$media implements Fragment$BasicProfile$media {
  Query$Me$driver$media({required this.address});

  factory Query$Me$driver$media.fromJson(Map<String, dynamic> json) {
    final l$address = json['address'];
    return Query$Me$driver$media(address: (l$address as String));
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
    if (!(other is Query$Me$driver$media) || runtimeType != other.runtimeType) {
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

extension UtilityExtension$Query$Me$driver$media on Query$Me$driver$media {
  CopyWith$Query$Me$driver$media<Query$Me$driver$media> get copyWith =>
      CopyWith$Query$Me$driver$media(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$Me$driver$media<TRes> {
  factory CopyWith$Query$Me$driver$media(
    Query$Me$driver$media instance,
    TRes Function(Query$Me$driver$media) then,
  ) = _CopyWithImpl$Query$Me$driver$media;

  factory CopyWith$Query$Me$driver$media.stub(TRes res) =
      _CopyWithStubImpl$Query$Me$driver$media;

  TRes call({String? address});
}

class _CopyWithImpl$Query$Me$driver$media<TRes>
    implements CopyWith$Query$Me$driver$media<TRes> {
  _CopyWithImpl$Query$Me$driver$media(
    this._instance,
    this._then,
  );

  final Query$Me$driver$media _instance;

  final TRes Function(Query$Me$driver$media) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? address = _undefined}) => _then(Query$Me$driver$media(
      address: address == _undefined || address == null
          ? _instance.address
          : (address as String)));
}

class _CopyWithStubImpl$Query$Me$driver$media<TRes>
    implements CopyWith$Query$Me$driver$media<TRes> {
  _CopyWithStubImpl$Query$Me$driver$media(this._res);

  TRes _res;

  call({String? address}) => _res;
}

class Query$Me$driver$currentOrders implements Fragment$CurrentOrder {
  Query$Me$driver$currentOrders({
    required this.id,
    required this.createdOn,
    required this.expectedTimestamp,
    required this.status,
    required this.currency,
    required this.costBest,
    required this.costAfterCoupon,
    required this.destinationArrivedTo,
    required this.paidAmount,
    this.etaPickup,
    required this.tipAmount,
    this.directions,
    required this.points,
    this.service,
    required this.options,
    required this.addresses,
    this.rider,
    required this.driverLastSeenMessagesAt,
    required this.conversations,
  });

  factory Query$Me$driver$currentOrders.fromJson(Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$createdOn = json['createdOn'];
    final l$expectedTimestamp = json['expectedTimestamp'];
    final l$status = json['status'];
    final l$currency = json['currency'];
    final l$costBest = json['costBest'];
    final l$costAfterCoupon = json['costAfterCoupon'];
    final l$destinationArrivedTo = json['destinationArrivedTo'];
    final l$paidAmount = json['paidAmount'];
    final l$etaPickup = json['etaPickup'];
    final l$tipAmount = json['tipAmount'];
    final l$directions = json['directions'];
    final l$points = json['points'];
    final l$service = json['service'];
    final l$options = json['options'];
    final l$addresses = json['addresses'];
    final l$rider = json['rider'];
    final l$driverLastSeenMessagesAt = json['driverLastSeenMessagesAt'];
    final l$conversations = json['conversations'];
    return Query$Me$driver$currentOrders(
      id: (l$id as String),
      createdOn: fromGraphQLTimestampToDartDateTime(l$createdOn),
      expectedTimestamp:
          fromGraphQLTimestampToDartDateTime(l$expectedTimestamp),
      status: fromJson$Enum$OrderStatus((l$status as String)),
      currency: (l$currency as String),
      costBest: (l$costBest as num).toDouble(),
      costAfterCoupon: (l$costAfterCoupon as num).toDouble(),
      destinationArrivedTo: (l$destinationArrivedTo as int),
      paidAmount: (l$paidAmount as num).toDouble(),
      etaPickup: l$etaPickup == null
          ? null
          : fromGraphQLTimestampToDartDateTime(l$etaPickup),
      tipAmount: (l$tipAmount as num).toDouble(),
      directions: (l$directions as List<dynamic>?)
          ?.map((e) => Query$Me$driver$currentOrders$directions.fromJson(
              (e as Map<String, dynamic>)))
          .toList(),
      points: (l$points as List<dynamic>)
          .map((e) => Query$Me$driver$currentOrders$points.fromJson(
              (e as Map<String, dynamic>)))
          .toList(),
      service: l$service == null
          ? null
          : Query$Me$driver$currentOrders$service.fromJson(
              (l$service as Map<String, dynamic>)),
      options: (l$options as List<dynamic>)
          .map((e) => Query$Me$driver$currentOrders$options.fromJson(
              (e as Map<String, dynamic>)))
          .toList(),
      addresses:
          (l$addresses as List<dynamic>).map((e) => (e as String)).toList(),
      rider: l$rider == null
          ? null
          : Query$Me$driver$currentOrders$rider.fromJson(
              (l$rider as Map<String, dynamic>)),
      driverLastSeenMessagesAt:
          fromGraphQLTimestampToDartDateTime(l$driverLastSeenMessagesAt),
      conversations: (l$conversations as List<dynamic>)
          .map((e) => Query$Me$driver$currentOrders$conversations.fromJson(
              (e as Map<String, dynamic>)))
          .toList(),
    );
  }

  final String id;

  final DateTime createdOn;

  final DateTime expectedTimestamp;

  final Enum$OrderStatus status;

  final String currency;

  final double costBest;

  final double costAfterCoupon;

  final int destinationArrivedTo;

  final double paidAmount;

  final DateTime? etaPickup;

  final double tipAmount;

  final List<Query$Me$driver$currentOrders$directions>? directions;

  final List<Query$Me$driver$currentOrders$points> points;

  final Query$Me$driver$currentOrders$service? service;

  final List<Query$Me$driver$currentOrders$options> options;

  final List<String> addresses;

  final Query$Me$driver$currentOrders$rider? rider;

  final DateTime driverLastSeenMessagesAt;

  final List<Query$Me$driver$currentOrders$conversations> conversations;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = l$id;
    final l$createdOn = createdOn;
    _resultData['createdOn'] = fromDartDateTimeToGraphQLTimestamp(l$createdOn);
    final l$expectedTimestamp = expectedTimestamp;
    _resultData['expectedTimestamp'] =
        fromDartDateTimeToGraphQLTimestamp(l$expectedTimestamp);
    final l$status = status;
    _resultData['status'] = toJson$Enum$OrderStatus(l$status);
    final l$currency = currency;
    _resultData['currency'] = l$currency;
    final l$costBest = costBest;
    _resultData['costBest'] = l$costBest;
    final l$costAfterCoupon = costAfterCoupon;
    _resultData['costAfterCoupon'] = l$costAfterCoupon;
    final l$destinationArrivedTo = destinationArrivedTo;
    _resultData['destinationArrivedTo'] = l$destinationArrivedTo;
    final l$paidAmount = paidAmount;
    _resultData['paidAmount'] = l$paidAmount;
    final l$etaPickup = etaPickup;
    _resultData['etaPickup'] = l$etaPickup == null
        ? null
        : fromDartDateTimeToGraphQLTimestamp(l$etaPickup);
    final l$tipAmount = tipAmount;
    _resultData['tipAmount'] = l$tipAmount;
    final l$directions = directions;
    _resultData['directions'] = l$directions?.map((e) => e.toJson()).toList();
    final l$points = points;
    _resultData['points'] = l$points.map((e) => e.toJson()).toList();
    final l$service = service;
    _resultData['service'] = l$service?.toJson();
    final l$options = options;
    _resultData['options'] = l$options.map((e) => e.toJson()).toList();
    final l$addresses = addresses;
    _resultData['addresses'] = l$addresses.map((e) => e).toList();
    final l$rider = rider;
    _resultData['rider'] = l$rider?.toJson();
    final l$driverLastSeenMessagesAt = driverLastSeenMessagesAt;
    _resultData['driverLastSeenMessagesAt'] =
        fromDartDateTimeToGraphQLTimestamp(l$driverLastSeenMessagesAt);
    final l$conversations = conversations;
    _resultData['conversations'] =
        l$conversations.map((e) => e.toJson()).toList();
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$createdOn = createdOn;
    final l$expectedTimestamp = expectedTimestamp;
    final l$status = status;
    final l$currency = currency;
    final l$costBest = costBest;
    final l$costAfterCoupon = costAfterCoupon;
    final l$destinationArrivedTo = destinationArrivedTo;
    final l$paidAmount = paidAmount;
    final l$etaPickup = etaPickup;
    final l$tipAmount = tipAmount;
    final l$directions = directions;
    final l$points = points;
    final l$service = service;
    final l$options = options;
    final l$addresses = addresses;
    final l$rider = rider;
    final l$driverLastSeenMessagesAt = driverLastSeenMessagesAt;
    final l$conversations = conversations;
    return Object.hashAll([
      l$id,
      l$createdOn,
      l$expectedTimestamp,
      l$status,
      l$currency,
      l$costBest,
      l$costAfterCoupon,
      l$destinationArrivedTo,
      l$paidAmount,
      l$etaPickup,
      l$tipAmount,
      l$directions == null ? null : Object.hashAll(l$directions.map((v) => v)),
      Object.hashAll(l$points.map((v) => v)),
      l$service,
      Object.hashAll(l$options.map((v) => v)),
      Object.hashAll(l$addresses.map((v) => v)),
      l$rider,
      l$driverLastSeenMessagesAt,
      Object.hashAll(l$conversations.map((v) => v)),
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$Me$driver$currentOrders) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
      return false;
    }
    final l$createdOn = createdOn;
    final lOther$createdOn = other.createdOn;
    if (l$createdOn != lOther$createdOn) {
      return false;
    }
    final l$expectedTimestamp = expectedTimestamp;
    final lOther$expectedTimestamp = other.expectedTimestamp;
    if (l$expectedTimestamp != lOther$expectedTimestamp) {
      return false;
    }
    final l$status = status;
    final lOther$status = other.status;
    if (l$status != lOther$status) {
      return false;
    }
    final l$currency = currency;
    final lOther$currency = other.currency;
    if (l$currency != lOther$currency) {
      return false;
    }
    final l$costBest = costBest;
    final lOther$costBest = other.costBest;
    if (l$costBest != lOther$costBest) {
      return false;
    }
    final l$costAfterCoupon = costAfterCoupon;
    final lOther$costAfterCoupon = other.costAfterCoupon;
    if (l$costAfterCoupon != lOther$costAfterCoupon) {
      return false;
    }
    final l$destinationArrivedTo = destinationArrivedTo;
    final lOther$destinationArrivedTo = other.destinationArrivedTo;
    if (l$destinationArrivedTo != lOther$destinationArrivedTo) {
      return false;
    }
    final l$paidAmount = paidAmount;
    final lOther$paidAmount = other.paidAmount;
    if (l$paidAmount != lOther$paidAmount) {
      return false;
    }
    final l$etaPickup = etaPickup;
    final lOther$etaPickup = other.etaPickup;
    if (l$etaPickup != lOther$etaPickup) {
      return false;
    }
    final l$tipAmount = tipAmount;
    final lOther$tipAmount = other.tipAmount;
    if (l$tipAmount != lOther$tipAmount) {
      return false;
    }
    final l$directions = directions;
    final lOther$directions = other.directions;
    if (l$directions != null && lOther$directions != null) {
      if (l$directions.length != lOther$directions.length) {
        return false;
      }
      for (int i = 0; i < l$directions.length; i++) {
        final l$directions$entry = l$directions[i];
        final lOther$directions$entry = lOther$directions[i];
        if (l$directions$entry != lOther$directions$entry) {
          return false;
        }
      }
    } else if (l$directions != lOther$directions) {
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
    final l$service = service;
    final lOther$service = other.service;
    if (l$service != lOther$service) {
      return false;
    }
    final l$options = options;
    final lOther$options = other.options;
    if (l$options.length != lOther$options.length) {
      return false;
    }
    for (int i = 0; i < l$options.length; i++) {
      final l$options$entry = l$options[i];
      final lOther$options$entry = lOther$options[i];
      if (l$options$entry != lOther$options$entry) {
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
    final l$rider = rider;
    final lOther$rider = other.rider;
    if (l$rider != lOther$rider) {
      return false;
    }
    final l$driverLastSeenMessagesAt = driverLastSeenMessagesAt;
    final lOther$driverLastSeenMessagesAt = other.driverLastSeenMessagesAt;
    if (l$driverLastSeenMessagesAt != lOther$driverLastSeenMessagesAt) {
      return false;
    }
    final l$conversations = conversations;
    final lOther$conversations = other.conversations;
    if (l$conversations.length != lOther$conversations.length) {
      return false;
    }
    for (int i = 0; i < l$conversations.length; i++) {
      final l$conversations$entry = l$conversations[i];
      final lOther$conversations$entry = lOther$conversations[i];
      if (l$conversations$entry != lOther$conversations$entry) {
        return false;
      }
    }
    return true;
  }
}

extension UtilityExtension$Query$Me$driver$currentOrders
    on Query$Me$driver$currentOrders {
  CopyWith$Query$Me$driver$currentOrders<Query$Me$driver$currentOrders>
      get copyWith => CopyWith$Query$Me$driver$currentOrders(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$Me$driver$currentOrders<TRes> {
  factory CopyWith$Query$Me$driver$currentOrders(
    Query$Me$driver$currentOrders instance,
    TRes Function(Query$Me$driver$currentOrders) then,
  ) = _CopyWithImpl$Query$Me$driver$currentOrders;

  factory CopyWith$Query$Me$driver$currentOrders.stub(TRes res) =
      _CopyWithStubImpl$Query$Me$driver$currentOrders;

  TRes call({
    String? id,
    DateTime? createdOn,
    DateTime? expectedTimestamp,
    Enum$OrderStatus? status,
    String? currency,
    double? costBest,
    double? costAfterCoupon,
    int? destinationArrivedTo,
    double? paidAmount,
    DateTime? etaPickup,
    double? tipAmount,
    List<Query$Me$driver$currentOrders$directions>? directions,
    List<Query$Me$driver$currentOrders$points>? points,
    Query$Me$driver$currentOrders$service? service,
    List<Query$Me$driver$currentOrders$options>? options,
    List<String>? addresses,
    Query$Me$driver$currentOrders$rider? rider,
    DateTime? driverLastSeenMessagesAt,
    List<Query$Me$driver$currentOrders$conversations>? conversations,
  });
  TRes directions(
      Iterable<Query$Me$driver$currentOrders$directions>? Function(
              Iterable<
                  CopyWith$Query$Me$driver$currentOrders$directions<
                      Query$Me$driver$currentOrders$directions>>?)
          _fn);
  TRes points(
      Iterable<Query$Me$driver$currentOrders$points> Function(
              Iterable<
                  CopyWith$Query$Me$driver$currentOrders$points<
                      Query$Me$driver$currentOrders$points>>)
          _fn);
  CopyWith$Query$Me$driver$currentOrders$service<TRes> get service;
  TRes options(
      Iterable<Query$Me$driver$currentOrders$options> Function(
              Iterable<
                  CopyWith$Query$Me$driver$currentOrders$options<
                      Query$Me$driver$currentOrders$options>>)
          _fn);
  CopyWith$Query$Me$driver$currentOrders$rider<TRes> get rider;
  TRes conversations(
      Iterable<Query$Me$driver$currentOrders$conversations> Function(
              Iterable<
                  CopyWith$Query$Me$driver$currentOrders$conversations<
                      Query$Me$driver$currentOrders$conversations>>)
          _fn);
}

class _CopyWithImpl$Query$Me$driver$currentOrders<TRes>
    implements CopyWith$Query$Me$driver$currentOrders<TRes> {
  _CopyWithImpl$Query$Me$driver$currentOrders(
    this._instance,
    this._then,
  );

  final Query$Me$driver$currentOrders _instance;

  final TRes Function(Query$Me$driver$currentOrders) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? createdOn = _undefined,
    Object? expectedTimestamp = _undefined,
    Object? status = _undefined,
    Object? currency = _undefined,
    Object? costBest = _undefined,
    Object? costAfterCoupon = _undefined,
    Object? destinationArrivedTo = _undefined,
    Object? paidAmount = _undefined,
    Object? etaPickup = _undefined,
    Object? tipAmount = _undefined,
    Object? directions = _undefined,
    Object? points = _undefined,
    Object? service = _undefined,
    Object? options = _undefined,
    Object? addresses = _undefined,
    Object? rider = _undefined,
    Object? driverLastSeenMessagesAt = _undefined,
    Object? conversations = _undefined,
  }) =>
      _then(Query$Me$driver$currentOrders(
        id: id == _undefined || id == null ? _instance.id : (id as String),
        createdOn: createdOn == _undefined || createdOn == null
            ? _instance.createdOn
            : (createdOn as DateTime),
        expectedTimestamp:
            expectedTimestamp == _undefined || expectedTimestamp == null
                ? _instance.expectedTimestamp
                : (expectedTimestamp as DateTime),
        status: status == _undefined || status == null
            ? _instance.status
            : (status as Enum$OrderStatus),
        currency: currency == _undefined || currency == null
            ? _instance.currency
            : (currency as String),
        costBest: costBest == _undefined || costBest == null
            ? _instance.costBest
            : (costBest as double),
        costAfterCoupon:
            costAfterCoupon == _undefined || costAfterCoupon == null
                ? _instance.costAfterCoupon
                : (costAfterCoupon as double),
        destinationArrivedTo:
            destinationArrivedTo == _undefined || destinationArrivedTo == null
                ? _instance.destinationArrivedTo
                : (destinationArrivedTo as int),
        paidAmount: paidAmount == _undefined || paidAmount == null
            ? _instance.paidAmount
            : (paidAmount as double),
        etaPickup: etaPickup == _undefined
            ? _instance.etaPickup
            : (etaPickup as DateTime?),
        tipAmount: tipAmount == _undefined || tipAmount == null
            ? _instance.tipAmount
            : (tipAmount as double),
        directions: directions == _undefined
            ? _instance.directions
            : (directions as List<Query$Me$driver$currentOrders$directions>?),
        points: points == _undefined || points == null
            ? _instance.points
            : (points as List<Query$Me$driver$currentOrders$points>),
        service: service == _undefined
            ? _instance.service
            : (service as Query$Me$driver$currentOrders$service?),
        options: options == _undefined || options == null
            ? _instance.options
            : (options as List<Query$Me$driver$currentOrders$options>),
        addresses: addresses == _undefined || addresses == null
            ? _instance.addresses
            : (addresses as List<String>),
        rider: rider == _undefined
            ? _instance.rider
            : (rider as Query$Me$driver$currentOrders$rider?),
        driverLastSeenMessagesAt: driverLastSeenMessagesAt == _undefined ||
                driverLastSeenMessagesAt == null
            ? _instance.driverLastSeenMessagesAt
            : (driverLastSeenMessagesAt as DateTime),
        conversations: conversations == _undefined || conversations == null
            ? _instance.conversations
            : (conversations
                as List<Query$Me$driver$currentOrders$conversations>),
      ));
  TRes directions(
          Iterable<Query$Me$driver$currentOrders$directions>? Function(
                  Iterable<
                      CopyWith$Query$Me$driver$currentOrders$directions<
                          Query$Me$driver$currentOrders$directions>>?)
              _fn) =>
      call(
          directions: _fn(_instance.directions
              ?.map((e) => CopyWith$Query$Me$driver$currentOrders$directions(
                    e,
                    (i) => i,
                  )))?.toList());
  TRes points(
          Iterable<Query$Me$driver$currentOrders$points> Function(
                  Iterable<
                      CopyWith$Query$Me$driver$currentOrders$points<
                          Query$Me$driver$currentOrders$points>>)
              _fn) =>
      call(
          points: _fn(_instance.points
              .map((e) => CopyWith$Query$Me$driver$currentOrders$points(
                    e,
                    (i) => i,
                  ))).toList());
  CopyWith$Query$Me$driver$currentOrders$service<TRes> get service {
    final local$service = _instance.service;
    return local$service == null
        ? CopyWith$Query$Me$driver$currentOrders$service.stub(_then(_instance))
        : CopyWith$Query$Me$driver$currentOrders$service(
            local$service, (e) => call(service: e));
  }

  TRes options(
          Iterable<Query$Me$driver$currentOrders$options> Function(
                  Iterable<
                      CopyWith$Query$Me$driver$currentOrders$options<
                          Query$Me$driver$currentOrders$options>>)
              _fn) =>
      call(
          options: _fn(_instance.options
              .map((e) => CopyWith$Query$Me$driver$currentOrders$options(
                    e,
                    (i) => i,
                  ))).toList());
  CopyWith$Query$Me$driver$currentOrders$rider<TRes> get rider {
    final local$rider = _instance.rider;
    return local$rider == null
        ? CopyWith$Query$Me$driver$currentOrders$rider.stub(_then(_instance))
        : CopyWith$Query$Me$driver$currentOrders$rider(
            local$rider, (e) => call(rider: e));
  }

  TRes conversations(
          Iterable<Query$Me$driver$currentOrders$conversations> Function(
                  Iterable<
                      CopyWith$Query$Me$driver$currentOrders$conversations<
                          Query$Me$driver$currentOrders$conversations>>)
              _fn) =>
      call(
          conversations: _fn(_instance.conversations
              .map((e) => CopyWith$Query$Me$driver$currentOrders$conversations(
                    e,
                    (i) => i,
                  ))).toList());
}

class _CopyWithStubImpl$Query$Me$driver$currentOrders<TRes>
    implements CopyWith$Query$Me$driver$currentOrders<TRes> {
  _CopyWithStubImpl$Query$Me$driver$currentOrders(this._res);

  TRes _res;

  call({
    String? id,
    DateTime? createdOn,
    DateTime? expectedTimestamp,
    Enum$OrderStatus? status,
    String? currency,
    double? costBest,
    double? costAfterCoupon,
    int? destinationArrivedTo,
    double? paidAmount,
    DateTime? etaPickup,
    double? tipAmount,
    List<Query$Me$driver$currentOrders$directions>? directions,
    List<Query$Me$driver$currentOrders$points>? points,
    Query$Me$driver$currentOrders$service? service,
    List<Query$Me$driver$currentOrders$options>? options,
    List<String>? addresses,
    Query$Me$driver$currentOrders$rider? rider,
    DateTime? driverLastSeenMessagesAt,
    List<Query$Me$driver$currentOrders$conversations>? conversations,
  }) =>
      _res;
  directions(_fn) => _res;
  points(_fn) => _res;
  CopyWith$Query$Me$driver$currentOrders$service<TRes> get service =>
      CopyWith$Query$Me$driver$currentOrders$service.stub(_res);
  options(_fn) => _res;
  CopyWith$Query$Me$driver$currentOrders$rider<TRes> get rider =>
      CopyWith$Query$Me$driver$currentOrders$rider.stub(_res);
  conversations(_fn) => _res;
}

class Query$Me$driver$currentOrders$directions implements Fragment$Point {
  Query$Me$driver$currentOrders$directions({
    required this.lat,
    required this.lng,
  });

  factory Query$Me$driver$currentOrders$directions.fromJson(
      Map<String, dynamic> json) {
    final l$lat = json['lat'];
    final l$lng = json['lng'];
    return Query$Me$driver$currentOrders$directions(
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
    if (!(other is Query$Me$driver$currentOrders$directions) ||
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

extension UtilityExtension$Query$Me$driver$currentOrders$directions
    on Query$Me$driver$currentOrders$directions {
  CopyWith$Query$Me$driver$currentOrders$directions<
          Query$Me$driver$currentOrders$directions>
      get copyWith => CopyWith$Query$Me$driver$currentOrders$directions(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$Me$driver$currentOrders$directions<TRes> {
  factory CopyWith$Query$Me$driver$currentOrders$directions(
    Query$Me$driver$currentOrders$directions instance,
    TRes Function(Query$Me$driver$currentOrders$directions) then,
  ) = _CopyWithImpl$Query$Me$driver$currentOrders$directions;

  factory CopyWith$Query$Me$driver$currentOrders$directions.stub(TRes res) =
      _CopyWithStubImpl$Query$Me$driver$currentOrders$directions;

  TRes call({
    double? lat,
    double? lng,
  });
}

class _CopyWithImpl$Query$Me$driver$currentOrders$directions<TRes>
    implements CopyWith$Query$Me$driver$currentOrders$directions<TRes> {
  _CopyWithImpl$Query$Me$driver$currentOrders$directions(
    this._instance,
    this._then,
  );

  final Query$Me$driver$currentOrders$directions _instance;

  final TRes Function(Query$Me$driver$currentOrders$directions) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? lat = _undefined,
    Object? lng = _undefined,
  }) =>
      _then(Query$Me$driver$currentOrders$directions(
        lat: lat == _undefined || lat == null ? _instance.lat : (lat as double),
        lng: lng == _undefined || lng == null ? _instance.lng : (lng as double),
      ));
}

class _CopyWithStubImpl$Query$Me$driver$currentOrders$directions<TRes>
    implements CopyWith$Query$Me$driver$currentOrders$directions<TRes> {
  _CopyWithStubImpl$Query$Me$driver$currentOrders$directions(this._res);

  TRes _res;

  call({
    double? lat,
    double? lng,
  }) =>
      _res;
}

class Query$Me$driver$currentOrders$points implements Fragment$Point {
  Query$Me$driver$currentOrders$points({
    required this.lat,
    required this.lng,
  });

  factory Query$Me$driver$currentOrders$points.fromJson(
      Map<String, dynamic> json) {
    final l$lat = json['lat'];
    final l$lng = json['lng'];
    return Query$Me$driver$currentOrders$points(
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
    if (!(other is Query$Me$driver$currentOrders$points) ||
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

extension UtilityExtension$Query$Me$driver$currentOrders$points
    on Query$Me$driver$currentOrders$points {
  CopyWith$Query$Me$driver$currentOrders$points<
          Query$Me$driver$currentOrders$points>
      get copyWith => CopyWith$Query$Me$driver$currentOrders$points(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$Me$driver$currentOrders$points<TRes> {
  factory CopyWith$Query$Me$driver$currentOrders$points(
    Query$Me$driver$currentOrders$points instance,
    TRes Function(Query$Me$driver$currentOrders$points) then,
  ) = _CopyWithImpl$Query$Me$driver$currentOrders$points;

  factory CopyWith$Query$Me$driver$currentOrders$points.stub(TRes res) =
      _CopyWithStubImpl$Query$Me$driver$currentOrders$points;

  TRes call({
    double? lat,
    double? lng,
  });
}

class _CopyWithImpl$Query$Me$driver$currentOrders$points<TRes>
    implements CopyWith$Query$Me$driver$currentOrders$points<TRes> {
  _CopyWithImpl$Query$Me$driver$currentOrders$points(
    this._instance,
    this._then,
  );

  final Query$Me$driver$currentOrders$points _instance;

  final TRes Function(Query$Me$driver$currentOrders$points) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? lat = _undefined,
    Object? lng = _undefined,
  }) =>
      _then(Query$Me$driver$currentOrders$points(
        lat: lat == _undefined || lat == null ? _instance.lat : (lat as double),
        lng: lng == _undefined || lng == null ? _instance.lng : (lng as double),
      ));
}

class _CopyWithStubImpl$Query$Me$driver$currentOrders$points<TRes>
    implements CopyWith$Query$Me$driver$currentOrders$points<TRes> {
  _CopyWithStubImpl$Query$Me$driver$currentOrders$points(this._res);

  TRes _res;

  call({
    double? lat,
    double? lng,
  }) =>
      _res;
}

class Query$Me$driver$currentOrders$service
    implements Fragment$CurrentOrder$service {
  Query$Me$driver$currentOrders$service({required this.name});

  factory Query$Me$driver$currentOrders$service.fromJson(
      Map<String, dynamic> json) {
    final l$name = json['name'];
    return Query$Me$driver$currentOrders$service(name: (l$name as String));
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
    if (!(other is Query$Me$driver$currentOrders$service) ||
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

extension UtilityExtension$Query$Me$driver$currentOrders$service
    on Query$Me$driver$currentOrders$service {
  CopyWith$Query$Me$driver$currentOrders$service<
          Query$Me$driver$currentOrders$service>
      get copyWith => CopyWith$Query$Me$driver$currentOrders$service(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$Me$driver$currentOrders$service<TRes> {
  factory CopyWith$Query$Me$driver$currentOrders$service(
    Query$Me$driver$currentOrders$service instance,
    TRes Function(Query$Me$driver$currentOrders$service) then,
  ) = _CopyWithImpl$Query$Me$driver$currentOrders$service;

  factory CopyWith$Query$Me$driver$currentOrders$service.stub(TRes res) =
      _CopyWithStubImpl$Query$Me$driver$currentOrders$service;

  TRes call({String? name});
}

class _CopyWithImpl$Query$Me$driver$currentOrders$service<TRes>
    implements CopyWith$Query$Me$driver$currentOrders$service<TRes> {
  _CopyWithImpl$Query$Me$driver$currentOrders$service(
    this._instance,
    this._then,
  );

  final Query$Me$driver$currentOrders$service _instance;

  final TRes Function(Query$Me$driver$currentOrders$service) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? name = _undefined}) =>
      _then(Query$Me$driver$currentOrders$service(
          name: name == _undefined || name == null
              ? _instance.name
              : (name as String)));
}

class _CopyWithStubImpl$Query$Me$driver$currentOrders$service<TRes>
    implements CopyWith$Query$Me$driver$currentOrders$service<TRes> {
  _CopyWithStubImpl$Query$Me$driver$currentOrders$service(this._res);

  TRes _res;

  call({String? name}) => _res;
}

class Query$Me$driver$currentOrders$options
    implements Fragment$CurrentOrder$options {
  Query$Me$driver$currentOrders$options({
    required this.id,
    required this.name,
    required this.icon,
  });

  factory Query$Me$driver$currentOrders$options.fromJson(
      Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$name = json['name'];
    final l$icon = json['icon'];
    return Query$Me$driver$currentOrders$options(
      id: (l$id as String),
      name: (l$name as String),
      icon: fromJson$Enum$ServiceOptionIcon((l$icon as String)),
    );
  }

  final String id;

  final String name;

  final Enum$ServiceOptionIcon icon;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = l$id;
    final l$name = name;
    _resultData['name'] = l$name;
    final l$icon = icon;
    _resultData['icon'] = toJson$Enum$ServiceOptionIcon(l$icon);
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$name = name;
    final l$icon = icon;
    return Object.hashAll([
      l$id,
      l$name,
      l$icon,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$Me$driver$currentOrders$options) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
      return false;
    }
    final l$name = name;
    final lOther$name = other.name;
    if (l$name != lOther$name) {
      return false;
    }
    final l$icon = icon;
    final lOther$icon = other.icon;
    if (l$icon != lOther$icon) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Query$Me$driver$currentOrders$options
    on Query$Me$driver$currentOrders$options {
  CopyWith$Query$Me$driver$currentOrders$options<
          Query$Me$driver$currentOrders$options>
      get copyWith => CopyWith$Query$Me$driver$currentOrders$options(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$Me$driver$currentOrders$options<TRes> {
  factory CopyWith$Query$Me$driver$currentOrders$options(
    Query$Me$driver$currentOrders$options instance,
    TRes Function(Query$Me$driver$currentOrders$options) then,
  ) = _CopyWithImpl$Query$Me$driver$currentOrders$options;

  factory CopyWith$Query$Me$driver$currentOrders$options.stub(TRes res) =
      _CopyWithStubImpl$Query$Me$driver$currentOrders$options;

  TRes call({
    String? id,
    String? name,
    Enum$ServiceOptionIcon? icon,
  });
}

class _CopyWithImpl$Query$Me$driver$currentOrders$options<TRes>
    implements CopyWith$Query$Me$driver$currentOrders$options<TRes> {
  _CopyWithImpl$Query$Me$driver$currentOrders$options(
    this._instance,
    this._then,
  );

  final Query$Me$driver$currentOrders$options _instance;

  final TRes Function(Query$Me$driver$currentOrders$options) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? name = _undefined,
    Object? icon = _undefined,
  }) =>
      _then(Query$Me$driver$currentOrders$options(
        id: id == _undefined || id == null ? _instance.id : (id as String),
        name: name == _undefined || name == null
            ? _instance.name
            : (name as String),
        icon: icon == _undefined || icon == null
            ? _instance.icon
            : (icon as Enum$ServiceOptionIcon),
      ));
}

class _CopyWithStubImpl$Query$Me$driver$currentOrders$options<TRes>
    implements CopyWith$Query$Me$driver$currentOrders$options<TRes> {
  _CopyWithStubImpl$Query$Me$driver$currentOrders$options(this._res);

  TRes _res;

  call({
    String? id,
    String? name,
    Enum$ServiceOptionIcon? icon,
  }) =>
      _res;
}

class Query$Me$driver$currentOrders$rider
    implements Fragment$CurrentOrder$rider {
  Query$Me$driver$currentOrders$rider({
    required this.mobileNumber,
    this.firstName,
    this.lastName,
    this.media,
    required this.wallets,
  });

  factory Query$Me$driver$currentOrders$rider.fromJson(
      Map<String, dynamic> json) {
    final l$mobileNumber = json['mobileNumber'];
    final l$firstName = json['firstName'];
    final l$lastName = json['lastName'];
    final l$media = json['media'];
    final l$wallets = json['wallets'];
    return Query$Me$driver$currentOrders$rider(
      mobileNumber: (l$mobileNumber as String),
      firstName: (l$firstName as String?),
      lastName: (l$lastName as String?),
      media: l$media == null
          ? null
          : Query$Me$driver$currentOrders$rider$media.fromJson(
              (l$media as Map<String, dynamic>)),
      wallets: (l$wallets as List<dynamic>)
          .map((e) => Query$Me$driver$currentOrders$rider$wallets.fromJson(
              (e as Map<String, dynamic>)))
          .toList(),
    );
  }

  final String mobileNumber;

  final String? firstName;

  final String? lastName;

  final Query$Me$driver$currentOrders$rider$media? media;

  final List<Query$Me$driver$currentOrders$rider$wallets> wallets;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$mobileNumber = mobileNumber;
    _resultData['mobileNumber'] = l$mobileNumber;
    final l$firstName = firstName;
    _resultData['firstName'] = l$firstName;
    final l$lastName = lastName;
    _resultData['lastName'] = l$lastName;
    final l$media = media;
    _resultData['media'] = l$media?.toJson();
    final l$wallets = wallets;
    _resultData['wallets'] = l$wallets.map((e) => e.toJson()).toList();
    return _resultData;
  }

  @override
  int get hashCode {
    final l$mobileNumber = mobileNumber;
    final l$firstName = firstName;
    final l$lastName = lastName;
    final l$media = media;
    final l$wallets = wallets;
    return Object.hashAll([
      l$mobileNumber,
      l$firstName,
      l$lastName,
      l$media,
      Object.hashAll(l$wallets.map((v) => v)),
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$Me$driver$currentOrders$rider) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$mobileNumber = mobileNumber;
    final lOther$mobileNumber = other.mobileNumber;
    if (l$mobileNumber != lOther$mobileNumber) {
      return false;
    }
    final l$firstName = firstName;
    final lOther$firstName = other.firstName;
    if (l$firstName != lOther$firstName) {
      return false;
    }
    final l$lastName = lastName;
    final lOther$lastName = other.lastName;
    if (l$lastName != lOther$lastName) {
      return false;
    }
    final l$media = media;
    final lOther$media = other.media;
    if (l$media != lOther$media) {
      return false;
    }
    final l$wallets = wallets;
    final lOther$wallets = other.wallets;
    if (l$wallets.length != lOther$wallets.length) {
      return false;
    }
    for (int i = 0; i < l$wallets.length; i++) {
      final l$wallets$entry = l$wallets[i];
      final lOther$wallets$entry = lOther$wallets[i];
      if (l$wallets$entry != lOther$wallets$entry) {
        return false;
      }
    }
    return true;
  }
}

extension UtilityExtension$Query$Me$driver$currentOrders$rider
    on Query$Me$driver$currentOrders$rider {
  CopyWith$Query$Me$driver$currentOrders$rider<
          Query$Me$driver$currentOrders$rider>
      get copyWith => CopyWith$Query$Me$driver$currentOrders$rider(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$Me$driver$currentOrders$rider<TRes> {
  factory CopyWith$Query$Me$driver$currentOrders$rider(
    Query$Me$driver$currentOrders$rider instance,
    TRes Function(Query$Me$driver$currentOrders$rider) then,
  ) = _CopyWithImpl$Query$Me$driver$currentOrders$rider;

  factory CopyWith$Query$Me$driver$currentOrders$rider.stub(TRes res) =
      _CopyWithStubImpl$Query$Me$driver$currentOrders$rider;

  TRes call({
    String? mobileNumber,
    String? firstName,
    String? lastName,
    Query$Me$driver$currentOrders$rider$media? media,
    List<Query$Me$driver$currentOrders$rider$wallets>? wallets,
  });
  CopyWith$Query$Me$driver$currentOrders$rider$media<TRes> get media;
  TRes wallets(
      Iterable<Query$Me$driver$currentOrders$rider$wallets> Function(
              Iterable<
                  CopyWith$Query$Me$driver$currentOrders$rider$wallets<
                      Query$Me$driver$currentOrders$rider$wallets>>)
          _fn);
}

class _CopyWithImpl$Query$Me$driver$currentOrders$rider<TRes>
    implements CopyWith$Query$Me$driver$currentOrders$rider<TRes> {
  _CopyWithImpl$Query$Me$driver$currentOrders$rider(
    this._instance,
    this._then,
  );

  final Query$Me$driver$currentOrders$rider _instance;

  final TRes Function(Query$Me$driver$currentOrders$rider) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? mobileNumber = _undefined,
    Object? firstName = _undefined,
    Object? lastName = _undefined,
    Object? media = _undefined,
    Object? wallets = _undefined,
  }) =>
      _then(Query$Me$driver$currentOrders$rider(
        mobileNumber: mobileNumber == _undefined || mobileNumber == null
            ? _instance.mobileNumber
            : (mobileNumber as String),
        firstName: firstName == _undefined
            ? _instance.firstName
            : (firstName as String?),
        lastName:
            lastName == _undefined ? _instance.lastName : (lastName as String?),
        media: media == _undefined
            ? _instance.media
            : (media as Query$Me$driver$currentOrders$rider$media?),
        wallets: wallets == _undefined || wallets == null
            ? _instance.wallets
            : (wallets as List<Query$Me$driver$currentOrders$rider$wallets>),
      ));
  CopyWith$Query$Me$driver$currentOrders$rider$media<TRes> get media {
    final local$media = _instance.media;
    return local$media == null
        ? CopyWith$Query$Me$driver$currentOrders$rider$media.stub(
            _then(_instance))
        : CopyWith$Query$Me$driver$currentOrders$rider$media(
            local$media, (e) => call(media: e));
  }

  TRes wallets(
          Iterable<Query$Me$driver$currentOrders$rider$wallets> Function(
                  Iterable<
                      CopyWith$Query$Me$driver$currentOrders$rider$wallets<
                          Query$Me$driver$currentOrders$rider$wallets>>)
              _fn) =>
      call(
          wallets: _fn(_instance.wallets
              .map((e) => CopyWith$Query$Me$driver$currentOrders$rider$wallets(
                    e,
                    (i) => i,
                  ))).toList());
}

class _CopyWithStubImpl$Query$Me$driver$currentOrders$rider<TRes>
    implements CopyWith$Query$Me$driver$currentOrders$rider<TRes> {
  _CopyWithStubImpl$Query$Me$driver$currentOrders$rider(this._res);

  TRes _res;

  call({
    String? mobileNumber,
    String? firstName,
    String? lastName,
    Query$Me$driver$currentOrders$rider$media? media,
    List<Query$Me$driver$currentOrders$rider$wallets>? wallets,
  }) =>
      _res;
  CopyWith$Query$Me$driver$currentOrders$rider$media<TRes> get media =>
      CopyWith$Query$Me$driver$currentOrders$rider$media.stub(_res);
  wallets(_fn) => _res;
}

class Query$Me$driver$currentOrders$rider$media
    implements Fragment$CurrentOrder$rider$media {
  Query$Me$driver$currentOrders$rider$media({required this.address});

  factory Query$Me$driver$currentOrders$rider$media.fromJson(
      Map<String, dynamic> json) {
    final l$address = json['address'];
    return Query$Me$driver$currentOrders$rider$media(
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
    if (!(other is Query$Me$driver$currentOrders$rider$media) ||
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

extension UtilityExtension$Query$Me$driver$currentOrders$rider$media
    on Query$Me$driver$currentOrders$rider$media {
  CopyWith$Query$Me$driver$currentOrders$rider$media<
          Query$Me$driver$currentOrders$rider$media>
      get copyWith => CopyWith$Query$Me$driver$currentOrders$rider$media(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$Me$driver$currentOrders$rider$media<TRes> {
  factory CopyWith$Query$Me$driver$currentOrders$rider$media(
    Query$Me$driver$currentOrders$rider$media instance,
    TRes Function(Query$Me$driver$currentOrders$rider$media) then,
  ) = _CopyWithImpl$Query$Me$driver$currentOrders$rider$media;

  factory CopyWith$Query$Me$driver$currentOrders$rider$media.stub(TRes res) =
      _CopyWithStubImpl$Query$Me$driver$currentOrders$rider$media;

  TRes call({String? address});
}

class _CopyWithImpl$Query$Me$driver$currentOrders$rider$media<TRes>
    implements CopyWith$Query$Me$driver$currentOrders$rider$media<TRes> {
  _CopyWithImpl$Query$Me$driver$currentOrders$rider$media(
    this._instance,
    this._then,
  );

  final Query$Me$driver$currentOrders$rider$media _instance;

  final TRes Function(Query$Me$driver$currentOrders$rider$media) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? address = _undefined}) =>
      _then(Query$Me$driver$currentOrders$rider$media(
          address: address == _undefined || address == null
              ? _instance.address
              : (address as String)));
}

class _CopyWithStubImpl$Query$Me$driver$currentOrders$rider$media<TRes>
    implements CopyWith$Query$Me$driver$currentOrders$rider$media<TRes> {
  _CopyWithStubImpl$Query$Me$driver$currentOrders$rider$media(this._res);

  TRes _res;

  call({String? address}) => _res;
}

class Query$Me$driver$currentOrders$rider$wallets
    implements Fragment$CurrentOrder$rider$wallets {
  Query$Me$driver$currentOrders$rider$wallets({
    required this.currency,
    required this.balance,
  });

  factory Query$Me$driver$currentOrders$rider$wallets.fromJson(
      Map<String, dynamic> json) {
    final l$currency = json['currency'];
    final l$balance = json['balance'];
    return Query$Me$driver$currentOrders$rider$wallets(
      currency: (l$currency as String),
      balance: (l$balance as num).toDouble(),
    );
  }

  final String currency;

  final double balance;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$currency = currency;
    _resultData['currency'] = l$currency;
    final l$balance = balance;
    _resultData['balance'] = l$balance;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$currency = currency;
    final l$balance = balance;
    return Object.hashAll([
      l$currency,
      l$balance,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$Me$driver$currentOrders$rider$wallets) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$currency = currency;
    final lOther$currency = other.currency;
    if (l$currency != lOther$currency) {
      return false;
    }
    final l$balance = balance;
    final lOther$balance = other.balance;
    if (l$balance != lOther$balance) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Query$Me$driver$currentOrders$rider$wallets
    on Query$Me$driver$currentOrders$rider$wallets {
  CopyWith$Query$Me$driver$currentOrders$rider$wallets<
          Query$Me$driver$currentOrders$rider$wallets>
      get copyWith => CopyWith$Query$Me$driver$currentOrders$rider$wallets(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$Me$driver$currentOrders$rider$wallets<TRes> {
  factory CopyWith$Query$Me$driver$currentOrders$rider$wallets(
    Query$Me$driver$currentOrders$rider$wallets instance,
    TRes Function(Query$Me$driver$currentOrders$rider$wallets) then,
  ) = _CopyWithImpl$Query$Me$driver$currentOrders$rider$wallets;

  factory CopyWith$Query$Me$driver$currentOrders$rider$wallets.stub(TRes res) =
      _CopyWithStubImpl$Query$Me$driver$currentOrders$rider$wallets;

  TRes call({
    String? currency,
    double? balance,
  });
}

class _CopyWithImpl$Query$Me$driver$currentOrders$rider$wallets<TRes>
    implements CopyWith$Query$Me$driver$currentOrders$rider$wallets<TRes> {
  _CopyWithImpl$Query$Me$driver$currentOrders$rider$wallets(
    this._instance,
    this._then,
  );

  final Query$Me$driver$currentOrders$rider$wallets _instance;

  final TRes Function(Query$Me$driver$currentOrders$rider$wallets) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? currency = _undefined,
    Object? balance = _undefined,
  }) =>
      _then(Query$Me$driver$currentOrders$rider$wallets(
        currency: currency == _undefined || currency == null
            ? _instance.currency
            : (currency as String),
        balance: balance == _undefined || balance == null
            ? _instance.balance
            : (balance as double),
      ));
}

class _CopyWithStubImpl$Query$Me$driver$currentOrders$rider$wallets<TRes>
    implements CopyWith$Query$Me$driver$currentOrders$rider$wallets<TRes> {
  _CopyWithStubImpl$Query$Me$driver$currentOrders$rider$wallets(this._res);

  TRes _res;

  call({
    String? currency,
    double? balance,
  }) =>
      _res;
}

class Query$Me$driver$currentOrders$conversations
    implements Fragment$CurrentOrder$conversations {
  Query$Me$driver$currentOrders$conversations({required this.sentAt});

  factory Query$Me$driver$currentOrders$conversations.fromJson(
      Map<String, dynamic> json) {
    final l$sentAt = json['sentAt'];
    return Query$Me$driver$currentOrders$conversations(
        sentAt: fromGraphQLTimestampToDartDateTime(l$sentAt));
  }

  final DateTime sentAt;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$sentAt = sentAt;
    _resultData['sentAt'] = fromDartDateTimeToGraphQLTimestamp(l$sentAt);
    return _resultData;
  }

  @override
  int get hashCode {
    final l$sentAt = sentAt;
    return Object.hashAll([l$sentAt]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$Me$driver$currentOrders$conversations) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$sentAt = sentAt;
    final lOther$sentAt = other.sentAt;
    if (l$sentAt != lOther$sentAt) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Query$Me$driver$currentOrders$conversations
    on Query$Me$driver$currentOrders$conversations {
  CopyWith$Query$Me$driver$currentOrders$conversations<
          Query$Me$driver$currentOrders$conversations>
      get copyWith => CopyWith$Query$Me$driver$currentOrders$conversations(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$Me$driver$currentOrders$conversations<TRes> {
  factory CopyWith$Query$Me$driver$currentOrders$conversations(
    Query$Me$driver$currentOrders$conversations instance,
    TRes Function(Query$Me$driver$currentOrders$conversations) then,
  ) = _CopyWithImpl$Query$Me$driver$currentOrders$conversations;

  factory CopyWith$Query$Me$driver$currentOrders$conversations.stub(TRes res) =
      _CopyWithStubImpl$Query$Me$driver$currentOrders$conversations;

  TRes call({DateTime? sentAt});
}

class _CopyWithImpl$Query$Me$driver$currentOrders$conversations<TRes>
    implements CopyWith$Query$Me$driver$currentOrders$conversations<TRes> {
  _CopyWithImpl$Query$Me$driver$currentOrders$conversations(
    this._instance,
    this._then,
  );

  final Query$Me$driver$currentOrders$conversations _instance;

  final TRes Function(Query$Me$driver$currentOrders$conversations) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? sentAt = _undefined}) =>
      _then(Query$Me$driver$currentOrders$conversations(
          sentAt: sentAt == _undefined || sentAt == null
              ? _instance.sentAt
              : (sentAt as DateTime)));
}

class _CopyWithStubImpl$Query$Me$driver$currentOrders$conversations<TRes>
    implements CopyWith$Query$Me$driver$currentOrders$conversations<TRes> {
  _CopyWithStubImpl$Query$Me$driver$currentOrders$conversations(this._res);

  TRes _res;

  call({DateTime? sentAt}) => _res;
}

class Query$Me$driver$wallets implements Fragment$BasicProfile$wallets {
  Query$Me$driver$wallets({
    required this.balance,
    required this.currency,
  });

  factory Query$Me$driver$wallets.fromJson(Map<String, dynamic> json) {
    final l$balance = json['balance'];
    final l$currency = json['currency'];
    return Query$Me$driver$wallets(
      balance: (l$balance as num).toDouble(),
      currency: (l$currency as String),
    );
  }

  final double balance;

  final String currency;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$balance = balance;
    _resultData['balance'] = l$balance;
    final l$currency = currency;
    _resultData['currency'] = l$currency;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$balance = balance;
    final l$currency = currency;
    return Object.hashAll([
      l$balance,
      l$currency,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$Me$driver$wallets) ||
        runtimeType != other.runtimeType) {
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

extension UtilityExtension$Query$Me$driver$wallets on Query$Me$driver$wallets {
  CopyWith$Query$Me$driver$wallets<Query$Me$driver$wallets> get copyWith =>
      CopyWith$Query$Me$driver$wallets(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$Me$driver$wallets<TRes> {
  factory CopyWith$Query$Me$driver$wallets(
    Query$Me$driver$wallets instance,
    TRes Function(Query$Me$driver$wallets) then,
  ) = _CopyWithImpl$Query$Me$driver$wallets;

  factory CopyWith$Query$Me$driver$wallets.stub(TRes res) =
      _CopyWithStubImpl$Query$Me$driver$wallets;

  TRes call({
    double? balance,
    String? currency,
  });
}

class _CopyWithImpl$Query$Me$driver$wallets<TRes>
    implements CopyWith$Query$Me$driver$wallets<TRes> {
  _CopyWithImpl$Query$Me$driver$wallets(
    this._instance,
    this._then,
  );

  final Query$Me$driver$wallets _instance;

  final TRes Function(Query$Me$driver$wallets) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? balance = _undefined,
    Object? currency = _undefined,
  }) =>
      _then(Query$Me$driver$wallets(
        balance: balance == _undefined || balance == null
            ? _instance.balance
            : (balance as double),
        currency: currency == _undefined || currency == null
            ? _instance.currency
            : (currency as String),
      ));
}

class _CopyWithStubImpl$Query$Me$driver$wallets<TRes>
    implements CopyWith$Query$Me$driver$wallets<TRes> {
  _CopyWithStubImpl$Query$Me$driver$wallets(this._res);

  TRes _res;

  call({
    double? balance,
    String? currency,
  }) =>
      _res;
}

class Query$AvailableOrders {
  Query$AvailableOrders({required this.availableOrders});

  factory Query$AvailableOrders.fromJson(Map<String, dynamic> json) {
    final l$availableOrders = json['availableOrders'];
    return Query$AvailableOrders(
        availableOrders: (l$availableOrders as List<dynamic>)
            .map((e) => Query$AvailableOrders$availableOrders.fromJson(
                (e as Map<String, dynamic>)))
            .toList());
  }

  final List<Query$AvailableOrders$availableOrders> availableOrders;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$availableOrders = availableOrders;
    _resultData['availableOrders'] =
        l$availableOrders.map((e) => e.toJson()).toList();
    return _resultData;
  }

  @override
  int get hashCode {
    final l$availableOrders = availableOrders;
    return Object.hashAll([Object.hashAll(l$availableOrders.map((v) => v))]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$AvailableOrders) || runtimeType != other.runtimeType) {
      return false;
    }
    final l$availableOrders = availableOrders;
    final lOther$availableOrders = other.availableOrders;
    if (l$availableOrders.length != lOther$availableOrders.length) {
      return false;
    }
    for (int i = 0; i < l$availableOrders.length; i++) {
      final l$availableOrders$entry = l$availableOrders[i];
      final lOther$availableOrders$entry = lOther$availableOrders[i];
      if (l$availableOrders$entry != lOther$availableOrders$entry) {
        return false;
      }
    }
    return true;
  }
}

extension UtilityExtension$Query$AvailableOrders on Query$AvailableOrders {
  CopyWith$Query$AvailableOrders<Query$AvailableOrders> get copyWith =>
      CopyWith$Query$AvailableOrders(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$AvailableOrders<TRes> {
  factory CopyWith$Query$AvailableOrders(
    Query$AvailableOrders instance,
    TRes Function(Query$AvailableOrders) then,
  ) = _CopyWithImpl$Query$AvailableOrders;

  factory CopyWith$Query$AvailableOrders.stub(TRes res) =
      _CopyWithStubImpl$Query$AvailableOrders;

  TRes call({List<Query$AvailableOrders$availableOrders>? availableOrders});
  TRes availableOrders(
      Iterable<Query$AvailableOrders$availableOrders> Function(
              Iterable<
                  CopyWith$Query$AvailableOrders$availableOrders<
                      Query$AvailableOrders$availableOrders>>)
          _fn);
}

class _CopyWithImpl$Query$AvailableOrders<TRes>
    implements CopyWith$Query$AvailableOrders<TRes> {
  _CopyWithImpl$Query$AvailableOrders(
    this._instance,
    this._then,
  );

  final Query$AvailableOrders _instance;

  final TRes Function(Query$AvailableOrders) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? availableOrders = _undefined}) =>
      _then(Query$AvailableOrders(
          availableOrders:
              availableOrders == _undefined || availableOrders == null
                  ? _instance.availableOrders
                  : (availableOrders
                      as List<Query$AvailableOrders$availableOrders>)));
  TRes availableOrders(
          Iterable<Query$AvailableOrders$availableOrders> Function(
                  Iterable<
                      CopyWith$Query$AvailableOrders$availableOrders<
                          Query$AvailableOrders$availableOrders>>)
              _fn) =>
      call(
          availableOrders: _fn(_instance.availableOrders
              .map((e) => CopyWith$Query$AvailableOrders$availableOrders(
                    e,
                    (i) => i,
                  ))).toList());
}

class _CopyWithStubImpl$Query$AvailableOrders<TRes>
    implements CopyWith$Query$AvailableOrders<TRes> {
  _CopyWithStubImpl$Query$AvailableOrders(this._res);

  TRes _res;

  call({List<Query$AvailableOrders$availableOrders>? availableOrders}) => _res;
  availableOrders(_fn) => _res;
}

const documentNodeQueryAvailableOrders = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.query,
    name: NameNode(value: 'AvailableOrders'),
    variableDefinitions: [],
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
        name: NameNode(value: 'availableOrders'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: SelectionSetNode(selections: [
          FragmentSpreadNode(
            name: NameNode(value: 'AvailableOrder'),
            directives: [],
          ),
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
            name: NameNode(value: 'currency'),
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
            name: NameNode(value: 'addresses'),
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
            name: NameNode(value: 'directions'),
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
            name: NameNode(value: 'options'),
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
              ),
              FieldNode(
                name: NameNode(value: 'icon'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
            ]),
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
        ]),
      )
    ]),
  ),
  fragmentDefinitionAvailableOrder,
  fragmentDefinitionPoint,
]);
Query$AvailableOrders _parserFn$Query$AvailableOrders(
        Map<String, dynamic> data) =>
    Query$AvailableOrders.fromJson(data);
typedef OnQueryComplete$Query$AvailableOrders = FutureOr<void> Function(
  Map<String, dynamic>?,
  Query$AvailableOrders?,
);

class Options$Query$AvailableOrders
    extends graphql.QueryOptions<Query$AvailableOrders> {
  Options$Query$AvailableOrders({
    String? operationName,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Query$AvailableOrders? typedOptimisticResult,
    Duration? pollInterval,
    graphql.Context? context,
    OnQueryComplete$Query$AvailableOrders? onComplete,
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
                    data == null ? null : _parserFn$Query$AvailableOrders(data),
                  ),
          onError: onError,
          document: documentNodeQueryAvailableOrders,
          parserFn: _parserFn$Query$AvailableOrders,
        );

  final OnQueryComplete$Query$AvailableOrders? onCompleteWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onComplete == null
            ? super.properties
            : super.properties.where((property) => property != onComplete),
        onCompleteWithParsed,
      ];
}

class WatchOptions$Query$AvailableOrders
    extends graphql.WatchQueryOptions<Query$AvailableOrders> {
  WatchOptions$Query$AvailableOrders({
    String? operationName,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Query$AvailableOrders? typedOptimisticResult,
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
          document: documentNodeQueryAvailableOrders,
          pollInterval: pollInterval,
          eagerlyFetchResults: eagerlyFetchResults,
          carryForwardDataOnException: carryForwardDataOnException,
          fetchResults: fetchResults,
          parserFn: _parserFn$Query$AvailableOrders,
        );
}

class FetchMoreOptions$Query$AvailableOrders extends graphql.FetchMoreOptions {
  FetchMoreOptions$Query$AvailableOrders(
      {required graphql.UpdateQuery updateQuery})
      : super(
          updateQuery: updateQuery,
          document: documentNodeQueryAvailableOrders,
        );
}

extension ClientExtension$Query$AvailableOrders on graphql.GraphQLClient {
  Future<graphql.QueryResult<Query$AvailableOrders>> query$AvailableOrders(
          [Options$Query$AvailableOrders? options]) async =>
      await this.query(options ?? Options$Query$AvailableOrders());
  graphql.ObservableQuery<Query$AvailableOrders> watchQuery$AvailableOrders(
          [WatchOptions$Query$AvailableOrders? options]) =>
      this.watchQuery(options ?? WatchOptions$Query$AvailableOrders());
  void writeQuery$AvailableOrders({
    required Query$AvailableOrders data,
    bool broadcast = true,
  }) =>
      this.writeQuery(
        graphql.Request(
            operation:
                graphql.Operation(document: documentNodeQueryAvailableOrders)),
        data: data.toJson(),
        broadcast: broadcast,
      );
  Query$AvailableOrders? readQuery$AvailableOrders({bool optimistic = true}) {
    final result = this.readQuery(
      graphql.Request(
          operation:
              graphql.Operation(document: documentNodeQueryAvailableOrders)),
      optimistic: optimistic,
    );
    return result == null ? null : Query$AvailableOrders.fromJson(result);
  }
}

graphql_flutter.QueryHookResult<Query$AvailableOrders> useQuery$AvailableOrders(
        [Options$Query$AvailableOrders? options]) =>
    graphql_flutter.useQuery(options ?? Options$Query$AvailableOrders());
graphql.ObservableQuery<Query$AvailableOrders> useWatchQuery$AvailableOrders(
        [WatchOptions$Query$AvailableOrders? options]) =>
    graphql_flutter
        .useWatchQuery(options ?? WatchOptions$Query$AvailableOrders());

class Query$AvailableOrders$Widget
    extends graphql_flutter.Query<Query$AvailableOrders> {
  Query$AvailableOrders$Widget({
    widgets.Key? key,
    Options$Query$AvailableOrders? options,
    required graphql_flutter.QueryBuilder<Query$AvailableOrders> builder,
  }) : super(
          key: key,
          options: options ?? Options$Query$AvailableOrders(),
          builder: builder,
        );
}

class Query$AvailableOrders$availableOrders implements Fragment$AvailableOrder {
  Query$AvailableOrders$availableOrders({
    required this.id,
    required this.status,
    required this.currency,
    required this.costBest,
    required this.addresses,
    required this.providerShare,
    required this.distanceBest,
    required this.durationBest,
    this.directions,
    required this.options,
    this.service,
    required this.points,
  });

  factory Query$AvailableOrders$availableOrders.fromJson(
      Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$status = json['status'];
    final l$currency = json['currency'];
    final l$costBest = json['costBest'];
    final l$addresses = json['addresses'];
    final l$providerShare = json['providerShare'];
    final l$distanceBest = json['distanceBest'];
    final l$durationBest = json['durationBest'];
    final l$directions = json['directions'];
    final l$options = json['options'];
    final l$service = json['service'];
    final l$points = json['points'];
    return Query$AvailableOrders$availableOrders(
      id: (l$id as String),
      status: fromJson$Enum$OrderStatus((l$status as String)),
      currency: (l$currency as String),
      costBest: (l$costBest as num).toDouble(),
      addresses:
          (l$addresses as List<dynamic>).map((e) => (e as String)).toList(),
      providerShare: (l$providerShare as num).toDouble(),
      distanceBest: (l$distanceBest as int),
      durationBest: (l$durationBest as int),
      directions: (l$directions as List<dynamic>?)
          ?.map((e) =>
              Query$AvailableOrders$availableOrders$directions.fromJson(
                  (e as Map<String, dynamic>)))
          .toList(),
      options: (l$options as List<dynamic>)
          .map((e) => Query$AvailableOrders$availableOrders$options.fromJson(
              (e as Map<String, dynamic>)))
          .toList(),
      service: l$service == null
          ? null
          : Query$AvailableOrders$availableOrders$service.fromJson(
              (l$service as Map<String, dynamic>)),
      points: (l$points as List<dynamic>)
          .map((e) => Query$AvailableOrders$availableOrders$points.fromJson(
              (e as Map<String, dynamic>)))
          .toList(),
    );
  }

  final String id;

  final Enum$OrderStatus status;

  final String currency;

  final double costBest;

  final List<String> addresses;

  final double providerShare;

  final int distanceBest;

  final int durationBest;

  final List<Query$AvailableOrders$availableOrders$directions>? directions;

  final List<Query$AvailableOrders$availableOrders$options> options;

  final Query$AvailableOrders$availableOrders$service? service;

  final List<Query$AvailableOrders$availableOrders$points> points;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = l$id;
    final l$status = status;
    _resultData['status'] = toJson$Enum$OrderStatus(l$status);
    final l$currency = currency;
    _resultData['currency'] = l$currency;
    final l$costBest = costBest;
    _resultData['costBest'] = l$costBest;
    final l$addresses = addresses;
    _resultData['addresses'] = l$addresses.map((e) => e).toList();
    final l$providerShare = providerShare;
    _resultData['providerShare'] = l$providerShare;
    final l$distanceBest = distanceBest;
    _resultData['distanceBest'] = l$distanceBest;
    final l$durationBest = durationBest;
    _resultData['durationBest'] = l$durationBest;
    final l$directions = directions;
    _resultData['directions'] = l$directions?.map((e) => e.toJson()).toList();
    final l$options = options;
    _resultData['options'] = l$options.map((e) => e.toJson()).toList();
    final l$service = service;
    _resultData['service'] = l$service?.toJson();
    final l$points = points;
    _resultData['points'] = l$points.map((e) => e.toJson()).toList();
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$status = status;
    final l$currency = currency;
    final l$costBest = costBest;
    final l$addresses = addresses;
    final l$providerShare = providerShare;
    final l$distanceBest = distanceBest;
    final l$durationBest = durationBest;
    final l$directions = directions;
    final l$options = options;
    final l$service = service;
    final l$points = points;
    return Object.hashAll([
      l$id,
      l$status,
      l$currency,
      l$costBest,
      Object.hashAll(l$addresses.map((v) => v)),
      l$providerShare,
      l$distanceBest,
      l$durationBest,
      l$directions == null ? null : Object.hashAll(l$directions.map((v) => v)),
      Object.hashAll(l$options.map((v) => v)),
      l$service,
      Object.hashAll(l$points.map((v) => v)),
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$AvailableOrders$availableOrders) ||
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
    final l$currency = currency;
    final lOther$currency = other.currency;
    if (l$currency != lOther$currency) {
      return false;
    }
    final l$costBest = costBest;
    final lOther$costBest = other.costBest;
    if (l$costBest != lOther$costBest) {
      return false;
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
    final l$providerShare = providerShare;
    final lOther$providerShare = other.providerShare;
    if (l$providerShare != lOther$providerShare) {
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
    final l$directions = directions;
    final lOther$directions = other.directions;
    if (l$directions != null && lOther$directions != null) {
      if (l$directions.length != lOther$directions.length) {
        return false;
      }
      for (int i = 0; i < l$directions.length; i++) {
        final l$directions$entry = l$directions[i];
        final lOther$directions$entry = lOther$directions[i];
        if (l$directions$entry != lOther$directions$entry) {
          return false;
        }
      }
    } else if (l$directions != lOther$directions) {
      return false;
    }
    final l$options = options;
    final lOther$options = other.options;
    if (l$options.length != lOther$options.length) {
      return false;
    }
    for (int i = 0; i < l$options.length; i++) {
      final l$options$entry = l$options[i];
      final lOther$options$entry = lOther$options[i];
      if (l$options$entry != lOther$options$entry) {
        return false;
      }
    }
    final l$service = service;
    final lOther$service = other.service;
    if (l$service != lOther$service) {
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
    return true;
  }
}

extension UtilityExtension$Query$AvailableOrders$availableOrders
    on Query$AvailableOrders$availableOrders {
  CopyWith$Query$AvailableOrders$availableOrders<
          Query$AvailableOrders$availableOrders>
      get copyWith => CopyWith$Query$AvailableOrders$availableOrders(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$AvailableOrders$availableOrders<TRes> {
  factory CopyWith$Query$AvailableOrders$availableOrders(
    Query$AvailableOrders$availableOrders instance,
    TRes Function(Query$AvailableOrders$availableOrders) then,
  ) = _CopyWithImpl$Query$AvailableOrders$availableOrders;

  factory CopyWith$Query$AvailableOrders$availableOrders.stub(TRes res) =
      _CopyWithStubImpl$Query$AvailableOrders$availableOrders;

  TRes call({
    String? id,
    Enum$OrderStatus? status,
    String? currency,
    double? costBest,
    List<String>? addresses,
    double? providerShare,
    int? distanceBest,
    int? durationBest,
    List<Query$AvailableOrders$availableOrders$directions>? directions,
    List<Query$AvailableOrders$availableOrders$options>? options,
    Query$AvailableOrders$availableOrders$service? service,
    List<Query$AvailableOrders$availableOrders$points>? points,
  });
  TRes directions(
      Iterable<Query$AvailableOrders$availableOrders$directions>? Function(
              Iterable<
                  CopyWith$Query$AvailableOrders$availableOrders$directions<
                      Query$AvailableOrders$availableOrders$directions>>?)
          _fn);
  TRes options(
      Iterable<Query$AvailableOrders$availableOrders$options> Function(
              Iterable<
                  CopyWith$Query$AvailableOrders$availableOrders$options<
                      Query$AvailableOrders$availableOrders$options>>)
          _fn);
  CopyWith$Query$AvailableOrders$availableOrders$service<TRes> get service;
  TRes points(
      Iterable<Query$AvailableOrders$availableOrders$points> Function(
              Iterable<
                  CopyWith$Query$AvailableOrders$availableOrders$points<
                      Query$AvailableOrders$availableOrders$points>>)
          _fn);
}

class _CopyWithImpl$Query$AvailableOrders$availableOrders<TRes>
    implements CopyWith$Query$AvailableOrders$availableOrders<TRes> {
  _CopyWithImpl$Query$AvailableOrders$availableOrders(
    this._instance,
    this._then,
  );

  final Query$AvailableOrders$availableOrders _instance;

  final TRes Function(Query$AvailableOrders$availableOrders) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? status = _undefined,
    Object? currency = _undefined,
    Object? costBest = _undefined,
    Object? addresses = _undefined,
    Object? providerShare = _undefined,
    Object? distanceBest = _undefined,
    Object? durationBest = _undefined,
    Object? directions = _undefined,
    Object? options = _undefined,
    Object? service = _undefined,
    Object? points = _undefined,
  }) =>
      _then(Query$AvailableOrders$availableOrders(
        id: id == _undefined || id == null ? _instance.id : (id as String),
        status: status == _undefined || status == null
            ? _instance.status
            : (status as Enum$OrderStatus),
        currency: currency == _undefined || currency == null
            ? _instance.currency
            : (currency as String),
        costBest: costBest == _undefined || costBest == null
            ? _instance.costBest
            : (costBest as double),
        addresses: addresses == _undefined || addresses == null
            ? _instance.addresses
            : (addresses as List<String>),
        providerShare: providerShare == _undefined || providerShare == null
            ? _instance.providerShare
            : (providerShare as double),
        distanceBest: distanceBest == _undefined || distanceBest == null
            ? _instance.distanceBest
            : (distanceBest as int),
        durationBest: durationBest == _undefined || durationBest == null
            ? _instance.durationBest
            : (durationBest as int),
        directions: directions == _undefined
            ? _instance.directions
            : (directions
                as List<Query$AvailableOrders$availableOrders$directions>?),
        options: options == _undefined || options == null
            ? _instance.options
            : (options as List<Query$AvailableOrders$availableOrders$options>),
        service: service == _undefined
            ? _instance.service
            : (service as Query$AvailableOrders$availableOrders$service?),
        points: points == _undefined || points == null
            ? _instance.points
            : (points as List<Query$AvailableOrders$availableOrders$points>),
      ));
  TRes directions(
          Iterable<Query$AvailableOrders$availableOrders$directions>? Function(
                  Iterable<
                      CopyWith$Query$AvailableOrders$availableOrders$directions<
                          Query$AvailableOrders$availableOrders$directions>>?)
              _fn) =>
      call(
          directions: _fn(_instance.directions?.map(
              (e) => CopyWith$Query$AvailableOrders$availableOrders$directions(
                    e,
                    (i) => i,
                  )))?.toList());
  TRes options(
          Iterable<Query$AvailableOrders$availableOrders$options> Function(
                  Iterable<
                      CopyWith$Query$AvailableOrders$availableOrders$options<
                          Query$AvailableOrders$availableOrders$options>>)
              _fn) =>
      call(
          options: _fn(_instance.options.map(
              (e) => CopyWith$Query$AvailableOrders$availableOrders$options(
                    e,
                    (i) => i,
                  ))).toList());
  CopyWith$Query$AvailableOrders$availableOrders$service<TRes> get service {
    final local$service = _instance.service;
    return local$service == null
        ? CopyWith$Query$AvailableOrders$availableOrders$service.stub(
            _then(_instance))
        : CopyWith$Query$AvailableOrders$availableOrders$service(
            local$service, (e) => call(service: e));
  }

  TRes points(
          Iterable<Query$AvailableOrders$availableOrders$points> Function(
                  Iterable<
                      CopyWith$Query$AvailableOrders$availableOrders$points<
                          Query$AvailableOrders$availableOrders$points>>)
              _fn) =>
      call(
          points: _fn(_instance.points
              .map((e) => CopyWith$Query$AvailableOrders$availableOrders$points(
                    e,
                    (i) => i,
                  ))).toList());
}

class _CopyWithStubImpl$Query$AvailableOrders$availableOrders<TRes>
    implements CopyWith$Query$AvailableOrders$availableOrders<TRes> {
  _CopyWithStubImpl$Query$AvailableOrders$availableOrders(this._res);

  TRes _res;

  call({
    String? id,
    Enum$OrderStatus? status,
    String? currency,
    double? costBest,
    List<String>? addresses,
    double? providerShare,
    int? distanceBest,
    int? durationBest,
    List<Query$AvailableOrders$availableOrders$directions>? directions,
    List<Query$AvailableOrders$availableOrders$options>? options,
    Query$AvailableOrders$availableOrders$service? service,
    List<Query$AvailableOrders$availableOrders$points>? points,
  }) =>
      _res;
  directions(_fn) => _res;
  options(_fn) => _res;
  CopyWith$Query$AvailableOrders$availableOrders$service<TRes> get service =>
      CopyWith$Query$AvailableOrders$availableOrders$service.stub(_res);
  points(_fn) => _res;
}

class Query$AvailableOrders$availableOrders$directions
    implements Fragment$Point {
  Query$AvailableOrders$availableOrders$directions({
    required this.lat,
    required this.lng,
  });

  factory Query$AvailableOrders$availableOrders$directions.fromJson(
      Map<String, dynamic> json) {
    final l$lat = json['lat'];
    final l$lng = json['lng'];
    return Query$AvailableOrders$availableOrders$directions(
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
    if (!(other is Query$AvailableOrders$availableOrders$directions) ||
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

extension UtilityExtension$Query$AvailableOrders$availableOrders$directions
    on Query$AvailableOrders$availableOrders$directions {
  CopyWith$Query$AvailableOrders$availableOrders$directions<
          Query$AvailableOrders$availableOrders$directions>
      get copyWith => CopyWith$Query$AvailableOrders$availableOrders$directions(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$AvailableOrders$availableOrders$directions<TRes> {
  factory CopyWith$Query$AvailableOrders$availableOrders$directions(
    Query$AvailableOrders$availableOrders$directions instance,
    TRes Function(Query$AvailableOrders$availableOrders$directions) then,
  ) = _CopyWithImpl$Query$AvailableOrders$availableOrders$directions;

  factory CopyWith$Query$AvailableOrders$availableOrders$directions.stub(
          TRes res) =
      _CopyWithStubImpl$Query$AvailableOrders$availableOrders$directions;

  TRes call({
    double? lat,
    double? lng,
  });
}

class _CopyWithImpl$Query$AvailableOrders$availableOrders$directions<TRes>
    implements CopyWith$Query$AvailableOrders$availableOrders$directions<TRes> {
  _CopyWithImpl$Query$AvailableOrders$availableOrders$directions(
    this._instance,
    this._then,
  );

  final Query$AvailableOrders$availableOrders$directions _instance;

  final TRes Function(Query$AvailableOrders$availableOrders$directions) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? lat = _undefined,
    Object? lng = _undefined,
  }) =>
      _then(Query$AvailableOrders$availableOrders$directions(
        lat: lat == _undefined || lat == null ? _instance.lat : (lat as double),
        lng: lng == _undefined || lng == null ? _instance.lng : (lng as double),
      ));
}

class _CopyWithStubImpl$Query$AvailableOrders$availableOrders$directions<TRes>
    implements CopyWith$Query$AvailableOrders$availableOrders$directions<TRes> {
  _CopyWithStubImpl$Query$AvailableOrders$availableOrders$directions(this._res);

  TRes _res;

  call({
    double? lat,
    double? lng,
  }) =>
      _res;
}

class Query$AvailableOrders$availableOrders$options
    implements Fragment$AvailableOrder$options {
  Query$AvailableOrders$availableOrders$options({
    required this.name,
    required this.icon,
  });

  factory Query$AvailableOrders$availableOrders$options.fromJson(
      Map<String, dynamic> json) {
    final l$name = json['name'];
    final l$icon = json['icon'];
    return Query$AvailableOrders$availableOrders$options(
      name: (l$name as String),
      icon: fromJson$Enum$ServiceOptionIcon((l$icon as String)),
    );
  }

  final String name;

  final Enum$ServiceOptionIcon icon;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$name = name;
    _resultData['name'] = l$name;
    final l$icon = icon;
    _resultData['icon'] = toJson$Enum$ServiceOptionIcon(l$icon);
    return _resultData;
  }

  @override
  int get hashCode {
    final l$name = name;
    final l$icon = icon;
    return Object.hashAll([
      l$name,
      l$icon,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$AvailableOrders$availableOrders$options) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$name = name;
    final lOther$name = other.name;
    if (l$name != lOther$name) {
      return false;
    }
    final l$icon = icon;
    final lOther$icon = other.icon;
    if (l$icon != lOther$icon) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Query$AvailableOrders$availableOrders$options
    on Query$AvailableOrders$availableOrders$options {
  CopyWith$Query$AvailableOrders$availableOrders$options<
          Query$AvailableOrders$availableOrders$options>
      get copyWith => CopyWith$Query$AvailableOrders$availableOrders$options(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$AvailableOrders$availableOrders$options<TRes> {
  factory CopyWith$Query$AvailableOrders$availableOrders$options(
    Query$AvailableOrders$availableOrders$options instance,
    TRes Function(Query$AvailableOrders$availableOrders$options) then,
  ) = _CopyWithImpl$Query$AvailableOrders$availableOrders$options;

  factory CopyWith$Query$AvailableOrders$availableOrders$options.stub(
          TRes res) =
      _CopyWithStubImpl$Query$AvailableOrders$availableOrders$options;

  TRes call({
    String? name,
    Enum$ServiceOptionIcon? icon,
  });
}

class _CopyWithImpl$Query$AvailableOrders$availableOrders$options<TRes>
    implements CopyWith$Query$AvailableOrders$availableOrders$options<TRes> {
  _CopyWithImpl$Query$AvailableOrders$availableOrders$options(
    this._instance,
    this._then,
  );

  final Query$AvailableOrders$availableOrders$options _instance;

  final TRes Function(Query$AvailableOrders$availableOrders$options) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? name = _undefined,
    Object? icon = _undefined,
  }) =>
      _then(Query$AvailableOrders$availableOrders$options(
        name: name == _undefined || name == null
            ? _instance.name
            : (name as String),
        icon: icon == _undefined || icon == null
            ? _instance.icon
            : (icon as Enum$ServiceOptionIcon),
      ));
}

class _CopyWithStubImpl$Query$AvailableOrders$availableOrders$options<TRes>
    implements CopyWith$Query$AvailableOrders$availableOrders$options<TRes> {
  _CopyWithStubImpl$Query$AvailableOrders$availableOrders$options(this._res);

  TRes _res;

  call({
    String? name,
    Enum$ServiceOptionIcon? icon,
  }) =>
      _res;
}

class Query$AvailableOrders$availableOrders$service
    implements Fragment$AvailableOrder$service {
  Query$AvailableOrders$availableOrders$service({required this.name});

  factory Query$AvailableOrders$availableOrders$service.fromJson(
      Map<String, dynamic> json) {
    final l$name = json['name'];
    return Query$AvailableOrders$availableOrders$service(
        name: (l$name as String));
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
    if (!(other is Query$AvailableOrders$availableOrders$service) ||
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

extension UtilityExtension$Query$AvailableOrders$availableOrders$service
    on Query$AvailableOrders$availableOrders$service {
  CopyWith$Query$AvailableOrders$availableOrders$service<
          Query$AvailableOrders$availableOrders$service>
      get copyWith => CopyWith$Query$AvailableOrders$availableOrders$service(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$AvailableOrders$availableOrders$service<TRes> {
  factory CopyWith$Query$AvailableOrders$availableOrders$service(
    Query$AvailableOrders$availableOrders$service instance,
    TRes Function(Query$AvailableOrders$availableOrders$service) then,
  ) = _CopyWithImpl$Query$AvailableOrders$availableOrders$service;

  factory CopyWith$Query$AvailableOrders$availableOrders$service.stub(
          TRes res) =
      _CopyWithStubImpl$Query$AvailableOrders$availableOrders$service;

  TRes call({String? name});
}

class _CopyWithImpl$Query$AvailableOrders$availableOrders$service<TRes>
    implements CopyWith$Query$AvailableOrders$availableOrders$service<TRes> {
  _CopyWithImpl$Query$AvailableOrders$availableOrders$service(
    this._instance,
    this._then,
  );

  final Query$AvailableOrders$availableOrders$service _instance;

  final TRes Function(Query$AvailableOrders$availableOrders$service) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? name = _undefined}) =>
      _then(Query$AvailableOrders$availableOrders$service(
          name: name == _undefined || name == null
              ? _instance.name
              : (name as String)));
}

class _CopyWithStubImpl$Query$AvailableOrders$availableOrders$service<TRes>
    implements CopyWith$Query$AvailableOrders$availableOrders$service<TRes> {
  _CopyWithStubImpl$Query$AvailableOrders$availableOrders$service(this._res);

  TRes _res;

  call({String? name}) => _res;
}

class Query$AvailableOrders$availableOrders$points implements Fragment$Point {
  Query$AvailableOrders$availableOrders$points({
    required this.lat,
    required this.lng,
  });

  factory Query$AvailableOrders$availableOrders$points.fromJson(
      Map<String, dynamic> json) {
    final l$lat = json['lat'];
    final l$lng = json['lng'];
    return Query$AvailableOrders$availableOrders$points(
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
    if (!(other is Query$AvailableOrders$availableOrders$points) ||
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

extension UtilityExtension$Query$AvailableOrders$availableOrders$points
    on Query$AvailableOrders$availableOrders$points {
  CopyWith$Query$AvailableOrders$availableOrders$points<
          Query$AvailableOrders$availableOrders$points>
      get copyWith => CopyWith$Query$AvailableOrders$availableOrders$points(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$AvailableOrders$availableOrders$points<TRes> {
  factory CopyWith$Query$AvailableOrders$availableOrders$points(
    Query$AvailableOrders$availableOrders$points instance,
    TRes Function(Query$AvailableOrders$availableOrders$points) then,
  ) = _CopyWithImpl$Query$AvailableOrders$availableOrders$points;

  factory CopyWith$Query$AvailableOrders$availableOrders$points.stub(TRes res) =
      _CopyWithStubImpl$Query$AvailableOrders$availableOrders$points;

  TRes call({
    double? lat,
    double? lng,
  });
}

class _CopyWithImpl$Query$AvailableOrders$availableOrders$points<TRes>
    implements CopyWith$Query$AvailableOrders$availableOrders$points<TRes> {
  _CopyWithImpl$Query$AvailableOrders$availableOrders$points(
    this._instance,
    this._then,
  );

  final Query$AvailableOrders$availableOrders$points _instance;

  final TRes Function(Query$AvailableOrders$availableOrders$points) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? lat = _undefined,
    Object? lng = _undefined,
  }) =>
      _then(Query$AvailableOrders$availableOrders$points(
        lat: lat == _undefined || lat == null ? _instance.lat : (lat as double),
        lng: lng == _undefined || lng == null ? _instance.lng : (lng as double),
      ));
}

class _CopyWithStubImpl$Query$AvailableOrders$availableOrders$points<TRes>
    implements CopyWith$Query$AvailableOrders$availableOrders$points<TRes> {
  _CopyWithStubImpl$Query$AvailableOrders$availableOrders$points(this._res);

  TRes _res;

  call({
    double? lat,
    double? lng,
  }) =>
      _res;
}

class Subscription$OrderCreated {
  Subscription$OrderCreated({required this.orderCreated});

  factory Subscription$OrderCreated.fromJson(Map<String, dynamic> json) {
    final l$orderCreated = json['orderCreated'];
    return Subscription$OrderCreated(
        orderCreated: Subscription$OrderCreated$orderCreated.fromJson(
            (l$orderCreated as Map<String, dynamic>)));
  }

  final Subscription$OrderCreated$orderCreated orderCreated;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$orderCreated = orderCreated;
    _resultData['orderCreated'] = l$orderCreated.toJson();
    return _resultData;
  }

  @override
  int get hashCode {
    final l$orderCreated = orderCreated;
    return Object.hashAll([l$orderCreated]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Subscription$OrderCreated) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$orderCreated = orderCreated;
    final lOther$orderCreated = other.orderCreated;
    if (l$orderCreated != lOther$orderCreated) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Subscription$OrderCreated
    on Subscription$OrderCreated {
  CopyWith$Subscription$OrderCreated<Subscription$OrderCreated> get copyWith =>
      CopyWith$Subscription$OrderCreated(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Subscription$OrderCreated<TRes> {
  factory CopyWith$Subscription$OrderCreated(
    Subscription$OrderCreated instance,
    TRes Function(Subscription$OrderCreated) then,
  ) = _CopyWithImpl$Subscription$OrderCreated;

  factory CopyWith$Subscription$OrderCreated.stub(TRes res) =
      _CopyWithStubImpl$Subscription$OrderCreated;

  TRes call({Subscription$OrderCreated$orderCreated? orderCreated});
  CopyWith$Subscription$OrderCreated$orderCreated<TRes> get orderCreated;
}

class _CopyWithImpl$Subscription$OrderCreated<TRes>
    implements CopyWith$Subscription$OrderCreated<TRes> {
  _CopyWithImpl$Subscription$OrderCreated(
    this._instance,
    this._then,
  );

  final Subscription$OrderCreated _instance;

  final TRes Function(Subscription$OrderCreated) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? orderCreated = _undefined}) => _then(
      Subscription$OrderCreated(
          orderCreated: orderCreated == _undefined || orderCreated == null
              ? _instance.orderCreated
              : (orderCreated as Subscription$OrderCreated$orderCreated)));
  CopyWith$Subscription$OrderCreated$orderCreated<TRes> get orderCreated {
    final local$orderCreated = _instance.orderCreated;
    return CopyWith$Subscription$OrderCreated$orderCreated(
        local$orderCreated, (e) => call(orderCreated: e));
  }
}

class _CopyWithStubImpl$Subscription$OrderCreated<TRes>
    implements CopyWith$Subscription$OrderCreated<TRes> {
  _CopyWithStubImpl$Subscription$OrderCreated(this._res);

  TRes _res;

  call({Subscription$OrderCreated$orderCreated? orderCreated}) => _res;
  CopyWith$Subscription$OrderCreated$orderCreated<TRes> get orderCreated =>
      CopyWith$Subscription$OrderCreated$orderCreated.stub(_res);
}

const documentNodeSubscriptionOrderCreated = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.subscription,
    name: NameNode(value: 'OrderCreated'),
    variableDefinitions: [],
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
        name: NameNode(value: 'orderCreated'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: SelectionSetNode(selections: [
          FragmentSpreadNode(
            name: NameNode(value: 'AvailableOrder'),
            directives: [],
          ),
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
            name: NameNode(value: 'currency'),
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
            name: NameNode(value: 'addresses'),
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
            name: NameNode(value: 'directions'),
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
            name: NameNode(value: 'options'),
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
              ),
              FieldNode(
                name: NameNode(value: 'icon'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
            ]),
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
        ]),
      )
    ]),
  ),
  fragmentDefinitionAvailableOrder,
  fragmentDefinitionPoint,
]);
Subscription$OrderCreated _parserFn$Subscription$OrderCreated(
        Map<String, dynamic> data) =>
    Subscription$OrderCreated.fromJson(data);

class Options$Subscription$OrderCreated
    extends graphql.SubscriptionOptions<Subscription$OrderCreated> {
  Options$Subscription$OrderCreated({
    String? operationName,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Subscription$OrderCreated? typedOptimisticResult,
    graphql.Context? context,
  }) : super(
          operationName: operationName,
          fetchPolicy: fetchPolicy,
          errorPolicy: errorPolicy,
          cacheRereadPolicy: cacheRereadPolicy,
          optimisticResult: optimisticResult ?? typedOptimisticResult?.toJson(),
          context: context,
          document: documentNodeSubscriptionOrderCreated,
          parserFn: _parserFn$Subscription$OrderCreated,
        );
}

class WatchOptions$Subscription$OrderCreated
    extends graphql.WatchQueryOptions<Subscription$OrderCreated> {
  WatchOptions$Subscription$OrderCreated({
    String? operationName,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Subscription$OrderCreated? typedOptimisticResult,
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
          document: documentNodeSubscriptionOrderCreated,
          pollInterval: pollInterval,
          eagerlyFetchResults: eagerlyFetchResults,
          carryForwardDataOnException: carryForwardDataOnException,
          fetchResults: fetchResults,
          parserFn: _parserFn$Subscription$OrderCreated,
        );
}

class FetchMoreOptions$Subscription$OrderCreated
    extends graphql.FetchMoreOptions {
  FetchMoreOptions$Subscription$OrderCreated(
      {required graphql.UpdateQuery updateQuery})
      : super(
          updateQuery: updateQuery,
          document: documentNodeSubscriptionOrderCreated,
        );
}

extension ClientExtension$Subscription$OrderCreated on graphql.GraphQLClient {
  Stream<graphql.QueryResult<Subscription$OrderCreated>> subscribe$OrderCreated(
          [Options$Subscription$OrderCreated? options]) =>
      this.subscribe(options ?? Options$Subscription$OrderCreated());
  graphql.ObservableQuery<Subscription$OrderCreated>
      watchSubscription$OrderCreated(
              [WatchOptions$Subscription$OrderCreated? options]) =>
          this.watchQuery(options ?? WatchOptions$Subscription$OrderCreated());
}

graphql.QueryResult<Subscription$OrderCreated> useSubscription$OrderCreated(
        Options$Subscription$OrderCreated options) =>
    graphql_flutter.useSubscription(options);

class Subscription$OrderCreated$Widget
    extends graphql_flutter.Subscription<Subscription$OrderCreated> {
  Subscription$OrderCreated$Widget({
    widgets.Key? key,
    Options$Subscription$OrderCreated? options,
    required graphql_flutter.SubscriptionBuilder<Subscription$OrderCreated>
        builder,
    graphql_flutter.OnSubscriptionResult<Subscription$OrderCreated>?
        onSubscriptionResult,
  }) : super(
          key: key,
          options: options ?? Options$Subscription$OrderCreated(),
          builder: builder,
          onSubscriptionResult: onSubscriptionResult,
        );
}

class Subscription$OrderCreated$orderCreated
    implements Fragment$AvailableOrder {
  Subscription$OrderCreated$orderCreated({
    required this.id,
    required this.status,
    required this.currency,
    required this.costBest,
    required this.addresses,
    required this.providerShare,
    required this.distanceBest,
    required this.durationBest,
    this.directions,
    required this.options,
    this.service,
    required this.points,
  });

  factory Subscription$OrderCreated$orderCreated.fromJson(
      Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$status = json['status'];
    final l$currency = json['currency'];
    final l$costBest = json['costBest'];
    final l$addresses = json['addresses'];
    final l$providerShare = json['providerShare'];
    final l$distanceBest = json['distanceBest'];
    final l$durationBest = json['durationBest'];
    final l$directions = json['directions'];
    final l$options = json['options'];
    final l$service = json['service'];
    final l$points = json['points'];
    return Subscription$OrderCreated$orderCreated(
      id: (l$id as String),
      status: fromJson$Enum$OrderStatus((l$status as String)),
      currency: (l$currency as String),
      costBest: (l$costBest as num).toDouble(),
      addresses:
          (l$addresses as List<dynamic>).map((e) => (e as String)).toList(),
      providerShare: (l$providerShare as num).toDouble(),
      distanceBest: (l$distanceBest as int),
      durationBest: (l$durationBest as int),
      directions: (l$directions as List<dynamic>?)
          ?.map((e) =>
              Subscription$OrderCreated$orderCreated$directions.fromJson(
                  (e as Map<String, dynamic>)))
          .toList(),
      options: (l$options as List<dynamic>)
          .map((e) => Subscription$OrderCreated$orderCreated$options.fromJson(
              (e as Map<String, dynamic>)))
          .toList(),
      service: l$service == null
          ? null
          : Subscription$OrderCreated$orderCreated$service.fromJson(
              (l$service as Map<String, dynamic>)),
      points: (l$points as List<dynamic>)
          .map((e) => Subscription$OrderCreated$orderCreated$points.fromJson(
              (e as Map<String, dynamic>)))
          .toList(),
    );
  }

  final String id;

  final Enum$OrderStatus status;

  final String currency;

  final double costBest;

  final List<String> addresses;

  final double providerShare;

  final int distanceBest;

  final int durationBest;

  final List<Subscription$OrderCreated$orderCreated$directions>? directions;

  final List<Subscription$OrderCreated$orderCreated$options> options;

  final Subscription$OrderCreated$orderCreated$service? service;

  final List<Subscription$OrderCreated$orderCreated$points> points;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = l$id;
    final l$status = status;
    _resultData['status'] = toJson$Enum$OrderStatus(l$status);
    final l$currency = currency;
    _resultData['currency'] = l$currency;
    final l$costBest = costBest;
    _resultData['costBest'] = l$costBest;
    final l$addresses = addresses;
    _resultData['addresses'] = l$addresses.map((e) => e).toList();
    final l$providerShare = providerShare;
    _resultData['providerShare'] = l$providerShare;
    final l$distanceBest = distanceBest;
    _resultData['distanceBest'] = l$distanceBest;
    final l$durationBest = durationBest;
    _resultData['durationBest'] = l$durationBest;
    final l$directions = directions;
    _resultData['directions'] = l$directions?.map((e) => e.toJson()).toList();
    final l$options = options;
    _resultData['options'] = l$options.map((e) => e.toJson()).toList();
    final l$service = service;
    _resultData['service'] = l$service?.toJson();
    final l$points = points;
    _resultData['points'] = l$points.map((e) => e.toJson()).toList();
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$status = status;
    final l$currency = currency;
    final l$costBest = costBest;
    final l$addresses = addresses;
    final l$providerShare = providerShare;
    final l$distanceBest = distanceBest;
    final l$durationBest = durationBest;
    final l$directions = directions;
    final l$options = options;
    final l$service = service;
    final l$points = points;
    return Object.hashAll([
      l$id,
      l$status,
      l$currency,
      l$costBest,
      Object.hashAll(l$addresses.map((v) => v)),
      l$providerShare,
      l$distanceBest,
      l$durationBest,
      l$directions == null ? null : Object.hashAll(l$directions.map((v) => v)),
      Object.hashAll(l$options.map((v) => v)),
      l$service,
      Object.hashAll(l$points.map((v) => v)),
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Subscription$OrderCreated$orderCreated) ||
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
    final l$currency = currency;
    final lOther$currency = other.currency;
    if (l$currency != lOther$currency) {
      return false;
    }
    final l$costBest = costBest;
    final lOther$costBest = other.costBest;
    if (l$costBest != lOther$costBest) {
      return false;
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
    final l$providerShare = providerShare;
    final lOther$providerShare = other.providerShare;
    if (l$providerShare != lOther$providerShare) {
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
    final l$directions = directions;
    final lOther$directions = other.directions;
    if (l$directions != null && lOther$directions != null) {
      if (l$directions.length != lOther$directions.length) {
        return false;
      }
      for (int i = 0; i < l$directions.length; i++) {
        final l$directions$entry = l$directions[i];
        final lOther$directions$entry = lOther$directions[i];
        if (l$directions$entry != lOther$directions$entry) {
          return false;
        }
      }
    } else if (l$directions != lOther$directions) {
      return false;
    }
    final l$options = options;
    final lOther$options = other.options;
    if (l$options.length != lOther$options.length) {
      return false;
    }
    for (int i = 0; i < l$options.length; i++) {
      final l$options$entry = l$options[i];
      final lOther$options$entry = lOther$options[i];
      if (l$options$entry != lOther$options$entry) {
        return false;
      }
    }
    final l$service = service;
    final lOther$service = other.service;
    if (l$service != lOther$service) {
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
    return true;
  }
}

extension UtilityExtension$Subscription$OrderCreated$orderCreated
    on Subscription$OrderCreated$orderCreated {
  CopyWith$Subscription$OrderCreated$orderCreated<
          Subscription$OrderCreated$orderCreated>
      get copyWith => CopyWith$Subscription$OrderCreated$orderCreated(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Subscription$OrderCreated$orderCreated<TRes> {
  factory CopyWith$Subscription$OrderCreated$orderCreated(
    Subscription$OrderCreated$orderCreated instance,
    TRes Function(Subscription$OrderCreated$orderCreated) then,
  ) = _CopyWithImpl$Subscription$OrderCreated$orderCreated;

  factory CopyWith$Subscription$OrderCreated$orderCreated.stub(TRes res) =
      _CopyWithStubImpl$Subscription$OrderCreated$orderCreated;

  TRes call({
    String? id,
    Enum$OrderStatus? status,
    String? currency,
    double? costBest,
    List<String>? addresses,
    double? providerShare,
    int? distanceBest,
    int? durationBest,
    List<Subscription$OrderCreated$orderCreated$directions>? directions,
    List<Subscription$OrderCreated$orderCreated$options>? options,
    Subscription$OrderCreated$orderCreated$service? service,
    List<Subscription$OrderCreated$orderCreated$points>? points,
  });
  TRes directions(
      Iterable<Subscription$OrderCreated$orderCreated$directions>? Function(
              Iterable<
                  CopyWith$Subscription$OrderCreated$orderCreated$directions<
                      Subscription$OrderCreated$orderCreated$directions>>?)
          _fn);
  TRes options(
      Iterable<Subscription$OrderCreated$orderCreated$options> Function(
              Iterable<
                  CopyWith$Subscription$OrderCreated$orderCreated$options<
                      Subscription$OrderCreated$orderCreated$options>>)
          _fn);
  CopyWith$Subscription$OrderCreated$orderCreated$service<TRes> get service;
  TRes points(
      Iterable<Subscription$OrderCreated$orderCreated$points> Function(
              Iterable<
                  CopyWith$Subscription$OrderCreated$orderCreated$points<
                      Subscription$OrderCreated$orderCreated$points>>)
          _fn);
}

class _CopyWithImpl$Subscription$OrderCreated$orderCreated<TRes>
    implements CopyWith$Subscription$OrderCreated$orderCreated<TRes> {
  _CopyWithImpl$Subscription$OrderCreated$orderCreated(
    this._instance,
    this._then,
  );

  final Subscription$OrderCreated$orderCreated _instance;

  final TRes Function(Subscription$OrderCreated$orderCreated) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? status = _undefined,
    Object? currency = _undefined,
    Object? costBest = _undefined,
    Object? addresses = _undefined,
    Object? providerShare = _undefined,
    Object? distanceBest = _undefined,
    Object? durationBest = _undefined,
    Object? directions = _undefined,
    Object? options = _undefined,
    Object? service = _undefined,
    Object? points = _undefined,
  }) =>
      _then(Subscription$OrderCreated$orderCreated(
        id: id == _undefined || id == null ? _instance.id : (id as String),
        status: status == _undefined || status == null
            ? _instance.status
            : (status as Enum$OrderStatus),
        currency: currency == _undefined || currency == null
            ? _instance.currency
            : (currency as String),
        costBest: costBest == _undefined || costBest == null
            ? _instance.costBest
            : (costBest as double),
        addresses: addresses == _undefined || addresses == null
            ? _instance.addresses
            : (addresses as List<String>),
        providerShare: providerShare == _undefined || providerShare == null
            ? _instance.providerShare
            : (providerShare as double),
        distanceBest: distanceBest == _undefined || distanceBest == null
            ? _instance.distanceBest
            : (distanceBest as int),
        durationBest: durationBest == _undefined || durationBest == null
            ? _instance.durationBest
            : (durationBest as int),
        directions: directions == _undefined
            ? _instance.directions
            : (directions
                as List<Subscription$OrderCreated$orderCreated$directions>?),
        options: options == _undefined || options == null
            ? _instance.options
            : (options as List<Subscription$OrderCreated$orderCreated$options>),
        service: service == _undefined
            ? _instance.service
            : (service as Subscription$OrderCreated$orderCreated$service?),
        points: points == _undefined || points == null
            ? _instance.points
            : (points as List<Subscription$OrderCreated$orderCreated$points>),
      ));
  TRes directions(
          Iterable<Subscription$OrderCreated$orderCreated$directions>? Function(
                  Iterable<
                      CopyWith$Subscription$OrderCreated$orderCreated$directions<
                          Subscription$OrderCreated$orderCreated$directions>>?)
              _fn) =>
      call(
          directions: _fn(_instance.directions?.map(
              (e) => CopyWith$Subscription$OrderCreated$orderCreated$directions(
                    e,
                    (i) => i,
                  )))?.toList());
  TRes options(
          Iterable<Subscription$OrderCreated$orderCreated$options> Function(
                  Iterable<
                      CopyWith$Subscription$OrderCreated$orderCreated$options<
                          Subscription$OrderCreated$orderCreated$options>>)
              _fn) =>
      call(
          options: _fn(_instance.options.map(
              (e) => CopyWith$Subscription$OrderCreated$orderCreated$options(
                    e,
                    (i) => i,
                  ))).toList());
  CopyWith$Subscription$OrderCreated$orderCreated$service<TRes> get service {
    final local$service = _instance.service;
    return local$service == null
        ? CopyWith$Subscription$OrderCreated$orderCreated$service.stub(
            _then(_instance))
        : CopyWith$Subscription$OrderCreated$orderCreated$service(
            local$service, (e) => call(service: e));
  }

  TRes points(
          Iterable<Subscription$OrderCreated$orderCreated$points> Function(
                  Iterable<
                      CopyWith$Subscription$OrderCreated$orderCreated$points<
                          Subscription$OrderCreated$orderCreated$points>>)
              _fn) =>
      call(
          points: _fn(_instance.points.map(
              (e) => CopyWith$Subscription$OrderCreated$orderCreated$points(
                    e,
                    (i) => i,
                  ))).toList());
}

class _CopyWithStubImpl$Subscription$OrderCreated$orderCreated<TRes>
    implements CopyWith$Subscription$OrderCreated$orderCreated<TRes> {
  _CopyWithStubImpl$Subscription$OrderCreated$orderCreated(this._res);

  TRes _res;

  call({
    String? id,
    Enum$OrderStatus? status,
    String? currency,
    double? costBest,
    List<String>? addresses,
    double? providerShare,
    int? distanceBest,
    int? durationBest,
    List<Subscription$OrderCreated$orderCreated$directions>? directions,
    List<Subscription$OrderCreated$orderCreated$options>? options,
    Subscription$OrderCreated$orderCreated$service? service,
    List<Subscription$OrderCreated$orderCreated$points>? points,
  }) =>
      _res;
  directions(_fn) => _res;
  options(_fn) => _res;
  CopyWith$Subscription$OrderCreated$orderCreated$service<TRes> get service =>
      CopyWith$Subscription$OrderCreated$orderCreated$service.stub(_res);
  points(_fn) => _res;
}

class Subscription$OrderCreated$orderCreated$directions
    implements Fragment$Point {
  Subscription$OrderCreated$orderCreated$directions({
    required this.lat,
    required this.lng,
  });

  factory Subscription$OrderCreated$orderCreated$directions.fromJson(
      Map<String, dynamic> json) {
    final l$lat = json['lat'];
    final l$lng = json['lng'];
    return Subscription$OrderCreated$orderCreated$directions(
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
    if (!(other is Subscription$OrderCreated$orderCreated$directions) ||
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

extension UtilityExtension$Subscription$OrderCreated$orderCreated$directions
    on Subscription$OrderCreated$orderCreated$directions {
  CopyWith$Subscription$OrderCreated$orderCreated$directions<
          Subscription$OrderCreated$orderCreated$directions>
      get copyWith =>
          CopyWith$Subscription$OrderCreated$orderCreated$directions(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Subscription$OrderCreated$orderCreated$directions<
    TRes> {
  factory CopyWith$Subscription$OrderCreated$orderCreated$directions(
    Subscription$OrderCreated$orderCreated$directions instance,
    TRes Function(Subscription$OrderCreated$orderCreated$directions) then,
  ) = _CopyWithImpl$Subscription$OrderCreated$orderCreated$directions;

  factory CopyWith$Subscription$OrderCreated$orderCreated$directions.stub(
          TRes res) =
      _CopyWithStubImpl$Subscription$OrderCreated$orderCreated$directions;

  TRes call({
    double? lat,
    double? lng,
  });
}

class _CopyWithImpl$Subscription$OrderCreated$orderCreated$directions<TRes>
    implements
        CopyWith$Subscription$OrderCreated$orderCreated$directions<TRes> {
  _CopyWithImpl$Subscription$OrderCreated$orderCreated$directions(
    this._instance,
    this._then,
  );

  final Subscription$OrderCreated$orderCreated$directions _instance;

  final TRes Function(Subscription$OrderCreated$orderCreated$directions) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? lat = _undefined,
    Object? lng = _undefined,
  }) =>
      _then(Subscription$OrderCreated$orderCreated$directions(
        lat: lat == _undefined || lat == null ? _instance.lat : (lat as double),
        lng: lng == _undefined || lng == null ? _instance.lng : (lng as double),
      ));
}

class _CopyWithStubImpl$Subscription$OrderCreated$orderCreated$directions<TRes>
    implements
        CopyWith$Subscription$OrderCreated$orderCreated$directions<TRes> {
  _CopyWithStubImpl$Subscription$OrderCreated$orderCreated$directions(
      this._res);

  TRes _res;

  call({
    double? lat,
    double? lng,
  }) =>
      _res;
}

class Subscription$OrderCreated$orderCreated$options
    implements Fragment$AvailableOrder$options {
  Subscription$OrderCreated$orderCreated$options({
    required this.name,
    required this.icon,
  });

  factory Subscription$OrderCreated$orderCreated$options.fromJson(
      Map<String, dynamic> json) {
    final l$name = json['name'];
    final l$icon = json['icon'];
    return Subscription$OrderCreated$orderCreated$options(
      name: (l$name as String),
      icon: fromJson$Enum$ServiceOptionIcon((l$icon as String)),
    );
  }

  final String name;

  final Enum$ServiceOptionIcon icon;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$name = name;
    _resultData['name'] = l$name;
    final l$icon = icon;
    _resultData['icon'] = toJson$Enum$ServiceOptionIcon(l$icon);
    return _resultData;
  }

  @override
  int get hashCode {
    final l$name = name;
    final l$icon = icon;
    return Object.hashAll([
      l$name,
      l$icon,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Subscription$OrderCreated$orderCreated$options) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$name = name;
    final lOther$name = other.name;
    if (l$name != lOther$name) {
      return false;
    }
    final l$icon = icon;
    final lOther$icon = other.icon;
    if (l$icon != lOther$icon) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Subscription$OrderCreated$orderCreated$options
    on Subscription$OrderCreated$orderCreated$options {
  CopyWith$Subscription$OrderCreated$orderCreated$options<
          Subscription$OrderCreated$orderCreated$options>
      get copyWith => CopyWith$Subscription$OrderCreated$orderCreated$options(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Subscription$OrderCreated$orderCreated$options<TRes> {
  factory CopyWith$Subscription$OrderCreated$orderCreated$options(
    Subscription$OrderCreated$orderCreated$options instance,
    TRes Function(Subscription$OrderCreated$orderCreated$options) then,
  ) = _CopyWithImpl$Subscription$OrderCreated$orderCreated$options;

  factory CopyWith$Subscription$OrderCreated$orderCreated$options.stub(
          TRes res) =
      _CopyWithStubImpl$Subscription$OrderCreated$orderCreated$options;

  TRes call({
    String? name,
    Enum$ServiceOptionIcon? icon,
  });
}

class _CopyWithImpl$Subscription$OrderCreated$orderCreated$options<TRes>
    implements CopyWith$Subscription$OrderCreated$orderCreated$options<TRes> {
  _CopyWithImpl$Subscription$OrderCreated$orderCreated$options(
    this._instance,
    this._then,
  );

  final Subscription$OrderCreated$orderCreated$options _instance;

  final TRes Function(Subscription$OrderCreated$orderCreated$options) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? name = _undefined,
    Object? icon = _undefined,
  }) =>
      _then(Subscription$OrderCreated$orderCreated$options(
        name: name == _undefined || name == null
            ? _instance.name
            : (name as String),
        icon: icon == _undefined || icon == null
            ? _instance.icon
            : (icon as Enum$ServiceOptionIcon),
      ));
}

class _CopyWithStubImpl$Subscription$OrderCreated$orderCreated$options<TRes>
    implements CopyWith$Subscription$OrderCreated$orderCreated$options<TRes> {
  _CopyWithStubImpl$Subscription$OrderCreated$orderCreated$options(this._res);

  TRes _res;

  call({
    String? name,
    Enum$ServiceOptionIcon? icon,
  }) =>
      _res;
}

class Subscription$OrderCreated$orderCreated$service
    implements Fragment$AvailableOrder$service {
  Subscription$OrderCreated$orderCreated$service({required this.name});

  factory Subscription$OrderCreated$orderCreated$service.fromJson(
      Map<String, dynamic> json) {
    final l$name = json['name'];
    return Subscription$OrderCreated$orderCreated$service(
        name: (l$name as String));
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
    if (!(other is Subscription$OrderCreated$orderCreated$service) ||
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

extension UtilityExtension$Subscription$OrderCreated$orderCreated$service
    on Subscription$OrderCreated$orderCreated$service {
  CopyWith$Subscription$OrderCreated$orderCreated$service<
          Subscription$OrderCreated$orderCreated$service>
      get copyWith => CopyWith$Subscription$OrderCreated$orderCreated$service(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Subscription$OrderCreated$orderCreated$service<TRes> {
  factory CopyWith$Subscription$OrderCreated$orderCreated$service(
    Subscription$OrderCreated$orderCreated$service instance,
    TRes Function(Subscription$OrderCreated$orderCreated$service) then,
  ) = _CopyWithImpl$Subscription$OrderCreated$orderCreated$service;

  factory CopyWith$Subscription$OrderCreated$orderCreated$service.stub(
          TRes res) =
      _CopyWithStubImpl$Subscription$OrderCreated$orderCreated$service;

  TRes call({String? name});
}

class _CopyWithImpl$Subscription$OrderCreated$orderCreated$service<TRes>
    implements CopyWith$Subscription$OrderCreated$orderCreated$service<TRes> {
  _CopyWithImpl$Subscription$OrderCreated$orderCreated$service(
    this._instance,
    this._then,
  );

  final Subscription$OrderCreated$orderCreated$service _instance;

  final TRes Function(Subscription$OrderCreated$orderCreated$service) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? name = _undefined}) =>
      _then(Subscription$OrderCreated$orderCreated$service(
          name: name == _undefined || name == null
              ? _instance.name
              : (name as String)));
}

class _CopyWithStubImpl$Subscription$OrderCreated$orderCreated$service<TRes>
    implements CopyWith$Subscription$OrderCreated$orderCreated$service<TRes> {
  _CopyWithStubImpl$Subscription$OrderCreated$orderCreated$service(this._res);

  TRes _res;

  call({String? name}) => _res;
}

class Subscription$OrderCreated$orderCreated$points implements Fragment$Point {
  Subscription$OrderCreated$orderCreated$points({
    required this.lat,
    required this.lng,
  });

  factory Subscription$OrderCreated$orderCreated$points.fromJson(
      Map<String, dynamic> json) {
    final l$lat = json['lat'];
    final l$lng = json['lng'];
    return Subscription$OrderCreated$orderCreated$points(
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
    if (!(other is Subscription$OrderCreated$orderCreated$points) ||
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

extension UtilityExtension$Subscription$OrderCreated$orderCreated$points
    on Subscription$OrderCreated$orderCreated$points {
  CopyWith$Subscription$OrderCreated$orderCreated$points<
          Subscription$OrderCreated$orderCreated$points>
      get copyWith => CopyWith$Subscription$OrderCreated$orderCreated$points(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Subscription$OrderCreated$orderCreated$points<TRes> {
  factory CopyWith$Subscription$OrderCreated$orderCreated$points(
    Subscription$OrderCreated$orderCreated$points instance,
    TRes Function(Subscription$OrderCreated$orderCreated$points) then,
  ) = _CopyWithImpl$Subscription$OrderCreated$orderCreated$points;

  factory CopyWith$Subscription$OrderCreated$orderCreated$points.stub(
          TRes res) =
      _CopyWithStubImpl$Subscription$OrderCreated$orderCreated$points;

  TRes call({
    double? lat,
    double? lng,
  });
}

class _CopyWithImpl$Subscription$OrderCreated$orderCreated$points<TRes>
    implements CopyWith$Subscription$OrderCreated$orderCreated$points<TRes> {
  _CopyWithImpl$Subscription$OrderCreated$orderCreated$points(
    this._instance,
    this._then,
  );

  final Subscription$OrderCreated$orderCreated$points _instance;

  final TRes Function(Subscription$OrderCreated$orderCreated$points) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? lat = _undefined,
    Object? lng = _undefined,
  }) =>
      _then(Subscription$OrderCreated$orderCreated$points(
        lat: lat == _undefined || lat == null ? _instance.lat : (lat as double),
        lng: lng == _undefined || lng == null ? _instance.lng : (lng as double),
      ));
}

class _CopyWithStubImpl$Subscription$OrderCreated$orderCreated$points<TRes>
    implements CopyWith$Subscription$OrderCreated$orderCreated$points<TRes> {
  _CopyWithStubImpl$Subscription$OrderCreated$orderCreated$points(this._res);

  TRes _res;

  call({
    double? lat,
    double? lng,
  }) =>
      _res;
}

class Subscription$OrderRemoved {
  Subscription$OrderRemoved({required this.orderRemoved});

  factory Subscription$OrderRemoved.fromJson(Map<String, dynamic> json) {
    final l$orderRemoved = json['orderRemoved'];
    return Subscription$OrderRemoved(
        orderRemoved: Subscription$OrderRemoved$orderRemoved.fromJson(
            (l$orderRemoved as Map<String, dynamic>)));
  }

  final Subscription$OrderRemoved$orderRemoved orderRemoved;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$orderRemoved = orderRemoved;
    _resultData['orderRemoved'] = l$orderRemoved.toJson();
    return _resultData;
  }

  @override
  int get hashCode {
    final l$orderRemoved = orderRemoved;
    return Object.hashAll([l$orderRemoved]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Subscription$OrderRemoved) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$orderRemoved = orderRemoved;
    final lOther$orderRemoved = other.orderRemoved;
    if (l$orderRemoved != lOther$orderRemoved) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Subscription$OrderRemoved
    on Subscription$OrderRemoved {
  CopyWith$Subscription$OrderRemoved<Subscription$OrderRemoved> get copyWith =>
      CopyWith$Subscription$OrderRemoved(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Subscription$OrderRemoved<TRes> {
  factory CopyWith$Subscription$OrderRemoved(
    Subscription$OrderRemoved instance,
    TRes Function(Subscription$OrderRemoved) then,
  ) = _CopyWithImpl$Subscription$OrderRemoved;

  factory CopyWith$Subscription$OrderRemoved.stub(TRes res) =
      _CopyWithStubImpl$Subscription$OrderRemoved;

  TRes call({Subscription$OrderRemoved$orderRemoved? orderRemoved});
  CopyWith$Subscription$OrderRemoved$orderRemoved<TRes> get orderRemoved;
}

class _CopyWithImpl$Subscription$OrderRemoved<TRes>
    implements CopyWith$Subscription$OrderRemoved<TRes> {
  _CopyWithImpl$Subscription$OrderRemoved(
    this._instance,
    this._then,
  );

  final Subscription$OrderRemoved _instance;

  final TRes Function(Subscription$OrderRemoved) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? orderRemoved = _undefined}) => _then(
      Subscription$OrderRemoved(
          orderRemoved: orderRemoved == _undefined || orderRemoved == null
              ? _instance.orderRemoved
              : (orderRemoved as Subscription$OrderRemoved$orderRemoved)));
  CopyWith$Subscription$OrderRemoved$orderRemoved<TRes> get orderRemoved {
    final local$orderRemoved = _instance.orderRemoved;
    return CopyWith$Subscription$OrderRemoved$orderRemoved(
        local$orderRemoved, (e) => call(orderRemoved: e));
  }
}

class _CopyWithStubImpl$Subscription$OrderRemoved<TRes>
    implements CopyWith$Subscription$OrderRemoved<TRes> {
  _CopyWithStubImpl$Subscription$OrderRemoved(this._res);

  TRes _res;

  call({Subscription$OrderRemoved$orderRemoved? orderRemoved}) => _res;
  CopyWith$Subscription$OrderRemoved$orderRemoved<TRes> get orderRemoved =>
      CopyWith$Subscription$OrderRemoved$orderRemoved.stub(_res);
}

const documentNodeSubscriptionOrderRemoved = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.subscription,
    name: NameNode(value: 'OrderRemoved'),
    variableDefinitions: [],
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
        name: NameNode(value: 'orderRemoved'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: SelectionSetNode(selections: [
          FragmentSpreadNode(
            name: NameNode(value: 'AvailableOrder'),
            directives: [],
          ),
          FieldNode(
            name: NameNode(value: 'id'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
        ]),
      )
    ]),
  ),
  fragmentDefinitionAvailableOrder,
  fragmentDefinitionPoint,
]);
Subscription$OrderRemoved _parserFn$Subscription$OrderRemoved(
        Map<String, dynamic> data) =>
    Subscription$OrderRemoved.fromJson(data);

class Options$Subscription$OrderRemoved
    extends graphql.SubscriptionOptions<Subscription$OrderRemoved> {
  Options$Subscription$OrderRemoved({
    String? operationName,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Subscription$OrderRemoved? typedOptimisticResult,
    graphql.Context? context,
  }) : super(
          operationName: operationName,
          fetchPolicy: fetchPolicy,
          errorPolicy: errorPolicy,
          cacheRereadPolicy: cacheRereadPolicy,
          optimisticResult: optimisticResult ?? typedOptimisticResult?.toJson(),
          context: context,
          document: documentNodeSubscriptionOrderRemoved,
          parserFn: _parserFn$Subscription$OrderRemoved,
        );
}

class WatchOptions$Subscription$OrderRemoved
    extends graphql.WatchQueryOptions<Subscription$OrderRemoved> {
  WatchOptions$Subscription$OrderRemoved({
    String? operationName,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Subscription$OrderRemoved? typedOptimisticResult,
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
          document: documentNodeSubscriptionOrderRemoved,
          pollInterval: pollInterval,
          eagerlyFetchResults: eagerlyFetchResults,
          carryForwardDataOnException: carryForwardDataOnException,
          fetchResults: fetchResults,
          parserFn: _parserFn$Subscription$OrderRemoved,
        );
}

class FetchMoreOptions$Subscription$OrderRemoved
    extends graphql.FetchMoreOptions {
  FetchMoreOptions$Subscription$OrderRemoved(
      {required graphql.UpdateQuery updateQuery})
      : super(
          updateQuery: updateQuery,
          document: documentNodeSubscriptionOrderRemoved,
        );
}

extension ClientExtension$Subscription$OrderRemoved on graphql.GraphQLClient {
  Stream<graphql.QueryResult<Subscription$OrderRemoved>> subscribe$OrderRemoved(
          [Options$Subscription$OrderRemoved? options]) =>
      this.subscribe(options ?? Options$Subscription$OrderRemoved());
  graphql.ObservableQuery<Subscription$OrderRemoved>
      watchSubscription$OrderRemoved(
              [WatchOptions$Subscription$OrderRemoved? options]) =>
          this.watchQuery(options ?? WatchOptions$Subscription$OrderRemoved());
}

graphql.QueryResult<Subscription$OrderRemoved> useSubscription$OrderRemoved(
        Options$Subscription$OrderRemoved options) =>
    graphql_flutter.useSubscription(options);

class Subscription$OrderRemoved$Widget
    extends graphql_flutter.Subscription<Subscription$OrderRemoved> {
  Subscription$OrderRemoved$Widget({
    widgets.Key? key,
    Options$Subscription$OrderRemoved? options,
    required graphql_flutter.SubscriptionBuilder<Subscription$OrderRemoved>
        builder,
    graphql_flutter.OnSubscriptionResult<Subscription$OrderRemoved>?
        onSubscriptionResult,
  }) : super(
          key: key,
          options: options ?? Options$Subscription$OrderRemoved(),
          builder: builder,
          onSubscriptionResult: onSubscriptionResult,
        );
}

class Subscription$OrderRemoved$orderRemoved
    implements Fragment$AvailableOrder {
  Subscription$OrderRemoved$orderRemoved({
    required this.id,
    required this.status,
    required this.currency,
    required this.costBest,
    required this.addresses,
    required this.providerShare,
    required this.distanceBest,
    required this.durationBest,
    this.directions,
    required this.options,
    this.service,
    required this.points,
  });

  factory Subscription$OrderRemoved$orderRemoved.fromJson(
      Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$status = json['status'];
    final l$currency = json['currency'];
    final l$costBest = json['costBest'];
    final l$addresses = json['addresses'];
    final l$providerShare = json['providerShare'];
    final l$distanceBest = json['distanceBest'];
    final l$durationBest = json['durationBest'];
    final l$directions = json['directions'];
    final l$options = json['options'];
    final l$service = json['service'];
    final l$points = json['points'];
    return Subscription$OrderRemoved$orderRemoved(
      id: (l$id as String),
      status: fromJson$Enum$OrderStatus((l$status as String)),
      currency: (l$currency as String),
      costBest: (l$costBest as num).toDouble(),
      addresses:
          (l$addresses as List<dynamic>).map((e) => (e as String)).toList(),
      providerShare: (l$providerShare as num).toDouble(),
      distanceBest: (l$distanceBest as int),
      durationBest: (l$durationBest as int),
      directions: (l$directions as List<dynamic>?)
          ?.map((e) => Fragment$Point.fromJson((e as Map<String, dynamic>)))
          .toList(),
      options: (l$options as List<dynamic>)
          .map((e) => Subscription$OrderRemoved$orderRemoved$options.fromJson(
              (e as Map<String, dynamic>)))
          .toList(),
      service: l$service == null
          ? null
          : Subscription$OrderRemoved$orderRemoved$service.fromJson(
              (l$service as Map<String, dynamic>)),
      points: (l$points as List<dynamic>)
          .map((e) => Fragment$Point.fromJson((e as Map<String, dynamic>)))
          .toList(),
    );
  }

  final String id;

  final Enum$OrderStatus status;

  final String currency;

  final double costBest;

  final List<String> addresses;

  final double providerShare;

  final int distanceBest;

  final int durationBest;

  final List<Fragment$Point>? directions;

  final List<Subscription$OrderRemoved$orderRemoved$options> options;

  final Subscription$OrderRemoved$orderRemoved$service? service;

  final List<Fragment$Point> points;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = l$id;
    final l$status = status;
    _resultData['status'] = toJson$Enum$OrderStatus(l$status);
    final l$currency = currency;
    _resultData['currency'] = l$currency;
    final l$costBest = costBest;
    _resultData['costBest'] = l$costBest;
    final l$addresses = addresses;
    _resultData['addresses'] = l$addresses.map((e) => e).toList();
    final l$providerShare = providerShare;
    _resultData['providerShare'] = l$providerShare;
    final l$distanceBest = distanceBest;
    _resultData['distanceBest'] = l$distanceBest;
    final l$durationBest = durationBest;
    _resultData['durationBest'] = l$durationBest;
    final l$directions = directions;
    _resultData['directions'] = l$directions?.map((e) => e.toJson()).toList();
    final l$options = options;
    _resultData['options'] = l$options.map((e) => e.toJson()).toList();
    final l$service = service;
    _resultData['service'] = l$service?.toJson();
    final l$points = points;
    _resultData['points'] = l$points.map((e) => e.toJson()).toList();
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$status = status;
    final l$currency = currency;
    final l$costBest = costBest;
    final l$addresses = addresses;
    final l$providerShare = providerShare;
    final l$distanceBest = distanceBest;
    final l$durationBest = durationBest;
    final l$directions = directions;
    final l$options = options;
    final l$service = service;
    final l$points = points;
    return Object.hashAll([
      l$id,
      l$status,
      l$currency,
      l$costBest,
      Object.hashAll(l$addresses.map((v) => v)),
      l$providerShare,
      l$distanceBest,
      l$durationBest,
      l$directions == null ? null : Object.hashAll(l$directions.map((v) => v)),
      Object.hashAll(l$options.map((v) => v)),
      l$service,
      Object.hashAll(l$points.map((v) => v)),
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Subscription$OrderRemoved$orderRemoved) ||
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
    final l$currency = currency;
    final lOther$currency = other.currency;
    if (l$currency != lOther$currency) {
      return false;
    }
    final l$costBest = costBest;
    final lOther$costBest = other.costBest;
    if (l$costBest != lOther$costBest) {
      return false;
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
    final l$providerShare = providerShare;
    final lOther$providerShare = other.providerShare;
    if (l$providerShare != lOther$providerShare) {
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
    final l$directions = directions;
    final lOther$directions = other.directions;
    if (l$directions != null && lOther$directions != null) {
      if (l$directions.length != lOther$directions.length) {
        return false;
      }
      for (int i = 0; i < l$directions.length; i++) {
        final l$directions$entry = l$directions[i];
        final lOther$directions$entry = lOther$directions[i];
        if (l$directions$entry != lOther$directions$entry) {
          return false;
        }
      }
    } else if (l$directions != lOther$directions) {
      return false;
    }
    final l$options = options;
    final lOther$options = other.options;
    if (l$options.length != lOther$options.length) {
      return false;
    }
    for (int i = 0; i < l$options.length; i++) {
      final l$options$entry = l$options[i];
      final lOther$options$entry = lOther$options[i];
      if (l$options$entry != lOther$options$entry) {
        return false;
      }
    }
    final l$service = service;
    final lOther$service = other.service;
    if (l$service != lOther$service) {
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
    return true;
  }
}

extension UtilityExtension$Subscription$OrderRemoved$orderRemoved
    on Subscription$OrderRemoved$orderRemoved {
  CopyWith$Subscription$OrderRemoved$orderRemoved<
          Subscription$OrderRemoved$orderRemoved>
      get copyWith => CopyWith$Subscription$OrderRemoved$orderRemoved(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Subscription$OrderRemoved$orderRemoved<TRes> {
  factory CopyWith$Subscription$OrderRemoved$orderRemoved(
    Subscription$OrderRemoved$orderRemoved instance,
    TRes Function(Subscription$OrderRemoved$orderRemoved) then,
  ) = _CopyWithImpl$Subscription$OrderRemoved$orderRemoved;

  factory CopyWith$Subscription$OrderRemoved$orderRemoved.stub(TRes res) =
      _CopyWithStubImpl$Subscription$OrderRemoved$orderRemoved;

  TRes call({
    String? id,
    Enum$OrderStatus? status,
    String? currency,
    double? costBest,
    List<String>? addresses,
    double? providerShare,
    int? distanceBest,
    int? durationBest,
    List<Fragment$Point>? directions,
    List<Subscription$OrderRemoved$orderRemoved$options>? options,
    Subscription$OrderRemoved$orderRemoved$service? service,
    List<Fragment$Point>? points,
  });
  TRes directions(
      Iterable<Fragment$Point>? Function(
              Iterable<CopyWith$Fragment$Point<Fragment$Point>>?)
          _fn);
  TRes options(
      Iterable<Subscription$OrderRemoved$orderRemoved$options> Function(
              Iterable<
                  CopyWith$Subscription$OrderRemoved$orderRemoved$options<
                      Subscription$OrderRemoved$orderRemoved$options>>)
          _fn);
  CopyWith$Subscription$OrderRemoved$orderRemoved$service<TRes> get service;
  TRes points(
      Iterable<Fragment$Point> Function(
              Iterable<CopyWith$Fragment$Point<Fragment$Point>>)
          _fn);
}

class _CopyWithImpl$Subscription$OrderRemoved$orderRemoved<TRes>
    implements CopyWith$Subscription$OrderRemoved$orderRemoved<TRes> {
  _CopyWithImpl$Subscription$OrderRemoved$orderRemoved(
    this._instance,
    this._then,
  );

  final Subscription$OrderRemoved$orderRemoved _instance;

  final TRes Function(Subscription$OrderRemoved$orderRemoved) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? status = _undefined,
    Object? currency = _undefined,
    Object? costBest = _undefined,
    Object? addresses = _undefined,
    Object? providerShare = _undefined,
    Object? distanceBest = _undefined,
    Object? durationBest = _undefined,
    Object? directions = _undefined,
    Object? options = _undefined,
    Object? service = _undefined,
    Object? points = _undefined,
  }) =>
      _then(Subscription$OrderRemoved$orderRemoved(
        id: id == _undefined || id == null ? _instance.id : (id as String),
        status: status == _undefined || status == null
            ? _instance.status
            : (status as Enum$OrderStatus),
        currency: currency == _undefined || currency == null
            ? _instance.currency
            : (currency as String),
        costBest: costBest == _undefined || costBest == null
            ? _instance.costBest
            : (costBest as double),
        addresses: addresses == _undefined || addresses == null
            ? _instance.addresses
            : (addresses as List<String>),
        providerShare: providerShare == _undefined || providerShare == null
            ? _instance.providerShare
            : (providerShare as double),
        distanceBest: distanceBest == _undefined || distanceBest == null
            ? _instance.distanceBest
            : (distanceBest as int),
        durationBest: durationBest == _undefined || durationBest == null
            ? _instance.durationBest
            : (durationBest as int),
        directions: directions == _undefined
            ? _instance.directions
            : (directions as List<Fragment$Point>?),
        options: options == _undefined || options == null
            ? _instance.options
            : (options as List<Subscription$OrderRemoved$orderRemoved$options>),
        service: service == _undefined
            ? _instance.service
            : (service as Subscription$OrderRemoved$orderRemoved$service?),
        points: points == _undefined || points == null
            ? _instance.points
            : (points as List<Fragment$Point>),
      ));
  TRes directions(
          Iterable<Fragment$Point>? Function(
                  Iterable<CopyWith$Fragment$Point<Fragment$Point>>?)
              _fn) =>
      call(
          directions:
              _fn(_instance.directions?.map((e) => CopyWith$Fragment$Point(
                    e,
                    (i) => i,
                  )))?.toList());
  TRes options(
          Iterable<Subscription$OrderRemoved$orderRemoved$options> Function(
                  Iterable<
                      CopyWith$Subscription$OrderRemoved$orderRemoved$options<
                          Subscription$OrderRemoved$orderRemoved$options>>)
              _fn) =>
      call(
          options: _fn(_instance.options.map(
              (e) => CopyWith$Subscription$OrderRemoved$orderRemoved$options(
                    e,
                    (i) => i,
                  ))).toList());
  CopyWith$Subscription$OrderRemoved$orderRemoved$service<TRes> get service {
    final local$service = _instance.service;
    return local$service == null
        ? CopyWith$Subscription$OrderRemoved$orderRemoved$service.stub(
            _then(_instance))
        : CopyWith$Subscription$OrderRemoved$orderRemoved$service(
            local$service, (e) => call(service: e));
  }

  TRes points(
          Iterable<Fragment$Point> Function(
                  Iterable<CopyWith$Fragment$Point<Fragment$Point>>)
              _fn) =>
      call(
          points: _fn(_instance.points.map((e) => CopyWith$Fragment$Point(
                e,
                (i) => i,
              ))).toList());
}

class _CopyWithStubImpl$Subscription$OrderRemoved$orderRemoved<TRes>
    implements CopyWith$Subscription$OrderRemoved$orderRemoved<TRes> {
  _CopyWithStubImpl$Subscription$OrderRemoved$orderRemoved(this._res);

  TRes _res;

  call({
    String? id,
    Enum$OrderStatus? status,
    String? currency,
    double? costBest,
    List<String>? addresses,
    double? providerShare,
    int? distanceBest,
    int? durationBest,
    List<Fragment$Point>? directions,
    List<Subscription$OrderRemoved$orderRemoved$options>? options,
    Subscription$OrderRemoved$orderRemoved$service? service,
    List<Fragment$Point>? points,
  }) =>
      _res;
  directions(_fn) => _res;
  options(_fn) => _res;
  CopyWith$Subscription$OrderRemoved$orderRemoved$service<TRes> get service =>
      CopyWith$Subscription$OrderRemoved$orderRemoved$service.stub(_res);
  points(_fn) => _res;
}

class Subscription$OrderRemoved$orderRemoved$options
    implements Fragment$AvailableOrder$options {
  Subscription$OrderRemoved$orderRemoved$options({
    required this.name,
    required this.icon,
  });

  factory Subscription$OrderRemoved$orderRemoved$options.fromJson(
      Map<String, dynamic> json) {
    final l$name = json['name'];
    final l$icon = json['icon'];
    return Subscription$OrderRemoved$orderRemoved$options(
      name: (l$name as String),
      icon: fromJson$Enum$ServiceOptionIcon((l$icon as String)),
    );
  }

  final String name;

  final Enum$ServiceOptionIcon icon;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$name = name;
    _resultData['name'] = l$name;
    final l$icon = icon;
    _resultData['icon'] = toJson$Enum$ServiceOptionIcon(l$icon);
    return _resultData;
  }

  @override
  int get hashCode {
    final l$name = name;
    final l$icon = icon;
    return Object.hashAll([
      l$name,
      l$icon,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Subscription$OrderRemoved$orderRemoved$options) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$name = name;
    final lOther$name = other.name;
    if (l$name != lOther$name) {
      return false;
    }
    final l$icon = icon;
    final lOther$icon = other.icon;
    if (l$icon != lOther$icon) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Subscription$OrderRemoved$orderRemoved$options
    on Subscription$OrderRemoved$orderRemoved$options {
  CopyWith$Subscription$OrderRemoved$orderRemoved$options<
          Subscription$OrderRemoved$orderRemoved$options>
      get copyWith => CopyWith$Subscription$OrderRemoved$orderRemoved$options(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Subscription$OrderRemoved$orderRemoved$options<TRes> {
  factory CopyWith$Subscription$OrderRemoved$orderRemoved$options(
    Subscription$OrderRemoved$orderRemoved$options instance,
    TRes Function(Subscription$OrderRemoved$orderRemoved$options) then,
  ) = _CopyWithImpl$Subscription$OrderRemoved$orderRemoved$options;

  factory CopyWith$Subscription$OrderRemoved$orderRemoved$options.stub(
          TRes res) =
      _CopyWithStubImpl$Subscription$OrderRemoved$orderRemoved$options;

  TRes call({
    String? name,
    Enum$ServiceOptionIcon? icon,
  });
}

class _CopyWithImpl$Subscription$OrderRemoved$orderRemoved$options<TRes>
    implements CopyWith$Subscription$OrderRemoved$orderRemoved$options<TRes> {
  _CopyWithImpl$Subscription$OrderRemoved$orderRemoved$options(
    this._instance,
    this._then,
  );

  final Subscription$OrderRemoved$orderRemoved$options _instance;

  final TRes Function(Subscription$OrderRemoved$orderRemoved$options) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? name = _undefined,
    Object? icon = _undefined,
  }) =>
      _then(Subscription$OrderRemoved$orderRemoved$options(
        name: name == _undefined || name == null
            ? _instance.name
            : (name as String),
        icon: icon == _undefined || icon == null
            ? _instance.icon
            : (icon as Enum$ServiceOptionIcon),
      ));
}

class _CopyWithStubImpl$Subscription$OrderRemoved$orderRemoved$options<TRes>
    implements CopyWith$Subscription$OrderRemoved$orderRemoved$options<TRes> {
  _CopyWithStubImpl$Subscription$OrderRemoved$orderRemoved$options(this._res);

  TRes _res;

  call({
    String? name,
    Enum$ServiceOptionIcon? icon,
  }) =>
      _res;
}

class Subscription$OrderRemoved$orderRemoved$service
    implements Fragment$AvailableOrder$service {
  Subscription$OrderRemoved$orderRemoved$service({required this.name});

  factory Subscription$OrderRemoved$orderRemoved$service.fromJson(
      Map<String, dynamic> json) {
    final l$name = json['name'];
    return Subscription$OrderRemoved$orderRemoved$service(
        name: (l$name as String));
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
    if (!(other is Subscription$OrderRemoved$orderRemoved$service) ||
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

extension UtilityExtension$Subscription$OrderRemoved$orderRemoved$service
    on Subscription$OrderRemoved$orderRemoved$service {
  CopyWith$Subscription$OrderRemoved$orderRemoved$service<
          Subscription$OrderRemoved$orderRemoved$service>
      get copyWith => CopyWith$Subscription$OrderRemoved$orderRemoved$service(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Subscription$OrderRemoved$orderRemoved$service<TRes> {
  factory CopyWith$Subscription$OrderRemoved$orderRemoved$service(
    Subscription$OrderRemoved$orderRemoved$service instance,
    TRes Function(Subscription$OrderRemoved$orderRemoved$service) then,
  ) = _CopyWithImpl$Subscription$OrderRemoved$orderRemoved$service;

  factory CopyWith$Subscription$OrderRemoved$orderRemoved$service.stub(
          TRes res) =
      _CopyWithStubImpl$Subscription$OrderRemoved$orderRemoved$service;

  TRes call({String? name});
}

class _CopyWithImpl$Subscription$OrderRemoved$orderRemoved$service<TRes>
    implements CopyWith$Subscription$OrderRemoved$orderRemoved$service<TRes> {
  _CopyWithImpl$Subscription$OrderRemoved$orderRemoved$service(
    this._instance,
    this._then,
  );

  final Subscription$OrderRemoved$orderRemoved$service _instance;

  final TRes Function(Subscription$OrderRemoved$orderRemoved$service) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? name = _undefined}) =>
      _then(Subscription$OrderRemoved$orderRemoved$service(
          name: name == _undefined || name == null
              ? _instance.name
              : (name as String)));
}

class _CopyWithStubImpl$Subscription$OrderRemoved$orderRemoved$service<TRes>
    implements CopyWith$Subscription$OrderRemoved$orderRemoved$service<TRes> {
  _CopyWithStubImpl$Subscription$OrderRemoved$orderRemoved$service(this._res);

  TRes _res;

  call({String? name}) => _res;
}

class Subscription$OrderUpdated {
  Subscription$OrderUpdated({required this.orderUpdated});

  factory Subscription$OrderUpdated.fromJson(Map<String, dynamic> json) {
    final l$orderUpdated = json['orderUpdated'];
    return Subscription$OrderUpdated(
        orderUpdated: Subscription$OrderUpdated$orderUpdated.fromJson(
            (l$orderUpdated as Map<String, dynamic>)));
  }

  final Subscription$OrderUpdated$orderUpdated orderUpdated;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$orderUpdated = orderUpdated;
    _resultData['orderUpdated'] = l$orderUpdated.toJson();
    return _resultData;
  }

  @override
  int get hashCode {
    final l$orderUpdated = orderUpdated;
    return Object.hashAll([l$orderUpdated]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Subscription$OrderUpdated) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$orderUpdated = orderUpdated;
    final lOther$orderUpdated = other.orderUpdated;
    if (l$orderUpdated != lOther$orderUpdated) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Subscription$OrderUpdated
    on Subscription$OrderUpdated {
  CopyWith$Subscription$OrderUpdated<Subscription$OrderUpdated> get copyWith =>
      CopyWith$Subscription$OrderUpdated(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Subscription$OrderUpdated<TRes> {
  factory CopyWith$Subscription$OrderUpdated(
    Subscription$OrderUpdated instance,
    TRes Function(Subscription$OrderUpdated) then,
  ) = _CopyWithImpl$Subscription$OrderUpdated;

  factory CopyWith$Subscription$OrderUpdated.stub(TRes res) =
      _CopyWithStubImpl$Subscription$OrderUpdated;

  TRes call({Subscription$OrderUpdated$orderUpdated? orderUpdated});
  CopyWith$Subscription$OrderUpdated$orderUpdated<TRes> get orderUpdated;
}

class _CopyWithImpl$Subscription$OrderUpdated<TRes>
    implements CopyWith$Subscription$OrderUpdated<TRes> {
  _CopyWithImpl$Subscription$OrderUpdated(
    this._instance,
    this._then,
  );

  final Subscription$OrderUpdated _instance;

  final TRes Function(Subscription$OrderUpdated) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? orderUpdated = _undefined}) => _then(
      Subscription$OrderUpdated(
          orderUpdated: orderUpdated == _undefined || orderUpdated == null
              ? _instance.orderUpdated
              : (orderUpdated as Subscription$OrderUpdated$orderUpdated)));
  CopyWith$Subscription$OrderUpdated$orderUpdated<TRes> get orderUpdated {
    final local$orderUpdated = _instance.orderUpdated;
    return CopyWith$Subscription$OrderUpdated$orderUpdated(
        local$orderUpdated, (e) => call(orderUpdated: e));
  }
}

class _CopyWithStubImpl$Subscription$OrderUpdated<TRes>
    implements CopyWith$Subscription$OrderUpdated<TRes> {
  _CopyWithStubImpl$Subscription$OrderUpdated(this._res);

  TRes _res;

  call({Subscription$OrderUpdated$orderUpdated? orderUpdated}) => _res;
  CopyWith$Subscription$OrderUpdated$orderUpdated<TRes> get orderUpdated =>
      CopyWith$Subscription$OrderUpdated$orderUpdated.stub(_res);
}

const documentNodeSubscriptionOrderUpdated = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.subscription,
    name: NameNode(value: 'OrderUpdated'),
    variableDefinitions: [],
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
        name: NameNode(value: 'orderUpdated'),
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
      )
    ]),
  ),
]);
Subscription$OrderUpdated _parserFn$Subscription$OrderUpdated(
        Map<String, dynamic> data) =>
    Subscription$OrderUpdated.fromJson(data);

class Options$Subscription$OrderUpdated
    extends graphql.SubscriptionOptions<Subscription$OrderUpdated> {
  Options$Subscription$OrderUpdated({
    String? operationName,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Subscription$OrderUpdated? typedOptimisticResult,
    graphql.Context? context,
  }) : super(
          operationName: operationName,
          fetchPolicy: fetchPolicy,
          errorPolicy: errorPolicy,
          cacheRereadPolicy: cacheRereadPolicy,
          optimisticResult: optimisticResult ?? typedOptimisticResult?.toJson(),
          context: context,
          document: documentNodeSubscriptionOrderUpdated,
          parserFn: _parserFn$Subscription$OrderUpdated,
        );
}

class WatchOptions$Subscription$OrderUpdated
    extends graphql.WatchQueryOptions<Subscription$OrderUpdated> {
  WatchOptions$Subscription$OrderUpdated({
    String? operationName,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Subscription$OrderUpdated? typedOptimisticResult,
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
          document: documentNodeSubscriptionOrderUpdated,
          pollInterval: pollInterval,
          eagerlyFetchResults: eagerlyFetchResults,
          carryForwardDataOnException: carryForwardDataOnException,
          fetchResults: fetchResults,
          parserFn: _parserFn$Subscription$OrderUpdated,
        );
}

class FetchMoreOptions$Subscription$OrderUpdated
    extends graphql.FetchMoreOptions {
  FetchMoreOptions$Subscription$OrderUpdated(
      {required graphql.UpdateQuery updateQuery})
      : super(
          updateQuery: updateQuery,
          document: documentNodeSubscriptionOrderUpdated,
        );
}

extension ClientExtension$Subscription$OrderUpdated on graphql.GraphQLClient {
  Stream<graphql.QueryResult<Subscription$OrderUpdated>> subscribe$OrderUpdated(
          [Options$Subscription$OrderUpdated? options]) =>
      this.subscribe(options ?? Options$Subscription$OrderUpdated());
  graphql.ObservableQuery<Subscription$OrderUpdated>
      watchSubscription$OrderUpdated(
              [WatchOptions$Subscription$OrderUpdated? options]) =>
          this.watchQuery(options ?? WatchOptions$Subscription$OrderUpdated());
}

graphql.QueryResult<Subscription$OrderUpdated> useSubscription$OrderUpdated(
        Options$Subscription$OrderUpdated options) =>
    graphql_flutter.useSubscription(options);

class Subscription$OrderUpdated$Widget
    extends graphql_flutter.Subscription<Subscription$OrderUpdated> {
  Subscription$OrderUpdated$Widget({
    widgets.Key? key,
    Options$Subscription$OrderUpdated? options,
    required graphql_flutter.SubscriptionBuilder<Subscription$OrderUpdated>
        builder,
    graphql_flutter.OnSubscriptionResult<Subscription$OrderUpdated>?
        onSubscriptionResult,
  }) : super(
          key: key,
          options: options ?? Options$Subscription$OrderUpdated(),
          builder: builder,
          onSubscriptionResult: onSubscriptionResult,
        );
}

class Subscription$OrderUpdated$orderUpdated {
  Subscription$OrderUpdated$orderUpdated({required this.id});

  factory Subscription$OrderUpdated$orderUpdated.fromJson(
      Map<String, dynamic> json) {
    final l$id = json['id'];
    return Subscription$OrderUpdated$orderUpdated(id: (l$id as String));
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
    if (!(other is Subscription$OrderUpdated$orderUpdated) ||
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

extension UtilityExtension$Subscription$OrderUpdated$orderUpdated
    on Subscription$OrderUpdated$orderUpdated {
  CopyWith$Subscription$OrderUpdated$orderUpdated<
          Subscription$OrderUpdated$orderUpdated>
      get copyWith => CopyWith$Subscription$OrderUpdated$orderUpdated(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Subscription$OrderUpdated$orderUpdated<TRes> {
  factory CopyWith$Subscription$OrderUpdated$orderUpdated(
    Subscription$OrderUpdated$orderUpdated instance,
    TRes Function(Subscription$OrderUpdated$orderUpdated) then,
  ) = _CopyWithImpl$Subscription$OrderUpdated$orderUpdated;

  factory CopyWith$Subscription$OrderUpdated$orderUpdated.stub(TRes res) =
      _CopyWithStubImpl$Subscription$OrderUpdated$orderUpdated;

  TRes call({String? id});
}

class _CopyWithImpl$Subscription$OrderUpdated$orderUpdated<TRes>
    implements CopyWith$Subscription$OrderUpdated$orderUpdated<TRes> {
  _CopyWithImpl$Subscription$OrderUpdated$orderUpdated(
    this._instance,
    this._then,
  );

  final Subscription$OrderUpdated$orderUpdated _instance;

  final TRes Function(Subscription$OrderUpdated$orderUpdated) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? id = _undefined}) =>
      _then(Subscription$OrderUpdated$orderUpdated(
          id: id == _undefined || id == null ? _instance.id : (id as String)));
}

class _CopyWithStubImpl$Subscription$OrderUpdated$orderUpdated<TRes>
    implements CopyWith$Subscription$OrderUpdated$orderUpdated<TRes> {
  _CopyWithStubImpl$Subscription$OrderUpdated$orderUpdated(this._res);

  TRes _res;

  call({String? id}) => _res;
}

class Variables$Mutation$UpdateDriverLocation {
  factory Variables$Mutation$UpdateDriverLocation(
          {required Input$PointInput point}) =>
      Variables$Mutation$UpdateDriverLocation._({
        r'point': point,
      });

  Variables$Mutation$UpdateDriverLocation._(this._$data);

  factory Variables$Mutation$UpdateDriverLocation.fromJson(
      Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$point = data['point'];
    result$data['point'] =
        Input$PointInput.fromJson((l$point as Map<String, dynamic>));
    return Variables$Mutation$UpdateDriverLocation._(result$data);
  }

  Map<String, dynamic> _$data;

  Input$PointInput get point => (_$data['point'] as Input$PointInput);
  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$point = point;
    result$data['point'] = l$point.toJson();
    return result$data;
  }

  CopyWith$Variables$Mutation$UpdateDriverLocation<
          Variables$Mutation$UpdateDriverLocation>
      get copyWith => CopyWith$Variables$Mutation$UpdateDriverLocation(
            this,
            (i) => i,
          );
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Variables$Mutation$UpdateDriverLocation) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$point = point;
    final lOther$point = other.point;
    if (l$point != lOther$point) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$point = point;
    return Object.hashAll([l$point]);
  }
}

abstract class CopyWith$Variables$Mutation$UpdateDriverLocation<TRes> {
  factory CopyWith$Variables$Mutation$UpdateDriverLocation(
    Variables$Mutation$UpdateDriverLocation instance,
    TRes Function(Variables$Mutation$UpdateDriverLocation) then,
  ) = _CopyWithImpl$Variables$Mutation$UpdateDriverLocation;

  factory CopyWith$Variables$Mutation$UpdateDriverLocation.stub(TRes res) =
      _CopyWithStubImpl$Variables$Mutation$UpdateDriverLocation;

  TRes call({Input$PointInput? point});
}

class _CopyWithImpl$Variables$Mutation$UpdateDriverLocation<TRes>
    implements CopyWith$Variables$Mutation$UpdateDriverLocation<TRes> {
  _CopyWithImpl$Variables$Mutation$UpdateDriverLocation(
    this._instance,
    this._then,
  );

  final Variables$Mutation$UpdateDriverLocation _instance;

  final TRes Function(Variables$Mutation$UpdateDriverLocation) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? point = _undefined}) =>
      _then(Variables$Mutation$UpdateDriverLocation._({
        ..._instance._$data,
        if (point != _undefined && point != null)
          'point': (point as Input$PointInput),
      }));
}

class _CopyWithStubImpl$Variables$Mutation$UpdateDriverLocation<TRes>
    implements CopyWith$Variables$Mutation$UpdateDriverLocation<TRes> {
  _CopyWithStubImpl$Variables$Mutation$UpdateDriverLocation(this._res);

  TRes _res;

  call({Input$PointInput? point}) => _res;
}

class Mutation$UpdateDriverLocation {
  Mutation$UpdateDriverLocation({required this.updateDriversLocationNew});

  factory Mutation$UpdateDriverLocation.fromJson(Map<String, dynamic> json) {
    final l$updateDriversLocationNew = json['updateDriversLocationNew'];
    return Mutation$UpdateDriverLocation(
        updateDriversLocationNew: (l$updateDriversLocationNew as List<dynamic>)
            .map((e) =>
                Mutation$UpdateDriverLocation$updateDriversLocationNew.fromJson(
                    (e as Map<String, dynamic>)))
            .toList());
  }

  final List<Mutation$UpdateDriverLocation$updateDriversLocationNew>
      updateDriversLocationNew;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$updateDriversLocationNew = updateDriversLocationNew;
    _resultData['updateDriversLocationNew'] =
        l$updateDriversLocationNew.map((e) => e.toJson()).toList();
    return _resultData;
  }

  @override
  int get hashCode {
    final l$updateDriversLocationNew = updateDriversLocationNew;
    return Object.hashAll(
        [Object.hashAll(l$updateDriversLocationNew.map((v) => v))]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Mutation$UpdateDriverLocation) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$updateDriversLocationNew = updateDriversLocationNew;
    final lOther$updateDriversLocationNew = other.updateDriversLocationNew;
    if (l$updateDriversLocationNew.length !=
        lOther$updateDriversLocationNew.length) {
      return false;
    }
    for (int i = 0; i < l$updateDriversLocationNew.length; i++) {
      final l$updateDriversLocationNew$entry = l$updateDriversLocationNew[i];
      final lOther$updateDriversLocationNew$entry =
          lOther$updateDriversLocationNew[i];
      if (l$updateDriversLocationNew$entry !=
          lOther$updateDriversLocationNew$entry) {
        return false;
      }
    }
    return true;
  }
}

extension UtilityExtension$Mutation$UpdateDriverLocation
    on Mutation$UpdateDriverLocation {
  CopyWith$Mutation$UpdateDriverLocation<Mutation$UpdateDriverLocation>
      get copyWith => CopyWith$Mutation$UpdateDriverLocation(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Mutation$UpdateDriverLocation<TRes> {
  factory CopyWith$Mutation$UpdateDriverLocation(
    Mutation$UpdateDriverLocation instance,
    TRes Function(Mutation$UpdateDriverLocation) then,
  ) = _CopyWithImpl$Mutation$UpdateDriverLocation;

  factory CopyWith$Mutation$UpdateDriverLocation.stub(TRes res) =
      _CopyWithStubImpl$Mutation$UpdateDriverLocation;

  TRes call(
      {List<Mutation$UpdateDriverLocation$updateDriversLocationNew>?
          updateDriversLocationNew});
  TRes updateDriversLocationNew(
      Iterable<Mutation$UpdateDriverLocation$updateDriversLocationNew> Function(
              Iterable<
                  CopyWith$Mutation$UpdateDriverLocation$updateDriversLocationNew<
                      Mutation$UpdateDriverLocation$updateDriversLocationNew>>)
          _fn);
}

class _CopyWithImpl$Mutation$UpdateDriverLocation<TRes>
    implements CopyWith$Mutation$UpdateDriverLocation<TRes> {
  _CopyWithImpl$Mutation$UpdateDriverLocation(
    this._instance,
    this._then,
  );

  final Mutation$UpdateDriverLocation _instance;

  final TRes Function(Mutation$UpdateDriverLocation) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? updateDriversLocationNew = _undefined}) =>
      _then(Mutation$UpdateDriverLocation(
          updateDriversLocationNew: updateDriversLocationNew == _undefined ||
                  updateDriversLocationNew == null
              ? _instance.updateDriversLocationNew
              : (updateDriversLocationNew as List<
                  Mutation$UpdateDriverLocation$updateDriversLocationNew>)));
  TRes updateDriversLocationNew(
          Iterable<Mutation$UpdateDriverLocation$updateDriversLocationNew> Function(
                  Iterable<
                      CopyWith$Mutation$UpdateDriverLocation$updateDriversLocationNew<
                          Mutation$UpdateDriverLocation$updateDriversLocationNew>>)
              _fn) =>
      call(
          updateDriversLocationNew: _fn(_instance.updateDriversLocationNew.map(
              (e) =>
                  CopyWith$Mutation$UpdateDriverLocation$updateDriversLocationNew(
                    e,
                    (i) => i,
                  ))).toList());
}

class _CopyWithStubImpl$Mutation$UpdateDriverLocation<TRes>
    implements CopyWith$Mutation$UpdateDriverLocation<TRes> {
  _CopyWithStubImpl$Mutation$UpdateDriverLocation(this._res);

  TRes _res;

  call(
          {List<Mutation$UpdateDriverLocation$updateDriversLocationNew>?
              updateDriversLocationNew}) =>
      _res;
  updateDriversLocationNew(_fn) => _res;
}

const documentNodeMutationUpdateDriverLocation = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.mutation,
    name: NameNode(value: 'UpdateDriverLocation'),
    variableDefinitions: [
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'point')),
        type: NamedTypeNode(
          name: NameNode(value: 'PointInput'),
          isNonNull: true,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      )
    ],
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
        name: NameNode(value: 'updateDriversLocationNew'),
        alias: null,
        arguments: [
          ArgumentNode(
            name: NameNode(value: 'point'),
            value: VariableNode(name: NameNode(value: 'point')),
          )
        ],
        directives: [],
        selectionSet: SelectionSetNode(selections: [
          FragmentSpreadNode(
            name: NameNode(value: 'AvailableOrder'),
            directives: [],
          ),
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
            name: NameNode(value: 'currency'),
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
            name: NameNode(value: 'addresses'),
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
            name: NameNode(value: 'directions'),
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
            name: NameNode(value: 'options'),
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
              ),
              FieldNode(
                name: NameNode(value: 'icon'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
            ]),
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
        ]),
      )
    ]),
  ),
  fragmentDefinitionAvailableOrder,
  fragmentDefinitionPoint,
]);
Mutation$UpdateDriverLocation _parserFn$Mutation$UpdateDriverLocation(
        Map<String, dynamic> data) =>
    Mutation$UpdateDriverLocation.fromJson(data);
typedef OnMutationCompleted$Mutation$UpdateDriverLocation = FutureOr<void>
    Function(
  Map<String, dynamic>?,
  Mutation$UpdateDriverLocation?,
);

class Options$Mutation$UpdateDriverLocation
    extends graphql.MutationOptions<Mutation$UpdateDriverLocation> {
  Options$Mutation$UpdateDriverLocation({
    String? operationName,
    required Variables$Mutation$UpdateDriverLocation variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Mutation$UpdateDriverLocation? typedOptimisticResult,
    graphql.Context? context,
    OnMutationCompleted$Mutation$UpdateDriverLocation? onCompleted,
    graphql.OnMutationUpdate<Mutation$UpdateDriverLocation>? update,
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
                        : _parserFn$Mutation$UpdateDriverLocation(data),
                  ),
          update: update,
          onError: onError,
          document: documentNodeMutationUpdateDriverLocation,
          parserFn: _parserFn$Mutation$UpdateDriverLocation,
        );

  final OnMutationCompleted$Mutation$UpdateDriverLocation?
      onCompletedWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onCompleted == null
            ? super.properties
            : super.properties.where((property) => property != onCompleted),
        onCompletedWithParsed,
      ];
}

class WatchOptions$Mutation$UpdateDriverLocation
    extends graphql.WatchQueryOptions<Mutation$UpdateDriverLocation> {
  WatchOptions$Mutation$UpdateDriverLocation({
    String? operationName,
    required Variables$Mutation$UpdateDriverLocation variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Mutation$UpdateDriverLocation? typedOptimisticResult,
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
          document: documentNodeMutationUpdateDriverLocation,
          pollInterval: pollInterval,
          eagerlyFetchResults: eagerlyFetchResults,
          carryForwardDataOnException: carryForwardDataOnException,
          fetchResults: fetchResults,
          parserFn: _parserFn$Mutation$UpdateDriverLocation,
        );
}

extension ClientExtension$Mutation$UpdateDriverLocation
    on graphql.GraphQLClient {
  Future<graphql.QueryResult<Mutation$UpdateDriverLocation>>
      mutate$UpdateDriverLocation(
              Options$Mutation$UpdateDriverLocation options) async =>
          await this.mutate(options);
  graphql.ObservableQuery<Mutation$UpdateDriverLocation>
      watchMutation$UpdateDriverLocation(
              WatchOptions$Mutation$UpdateDriverLocation options) =>
          this.watchMutation(options);
}

class Mutation$UpdateDriverLocation$HookResult {
  Mutation$UpdateDriverLocation$HookResult(
    this.runMutation,
    this.result,
  );

  final RunMutation$Mutation$UpdateDriverLocation runMutation;

  final graphql.QueryResult<Mutation$UpdateDriverLocation> result;
}

Mutation$UpdateDriverLocation$HookResult useMutation$UpdateDriverLocation(
    [WidgetOptions$Mutation$UpdateDriverLocation? options]) {
  final result = graphql_flutter
      .useMutation(options ?? WidgetOptions$Mutation$UpdateDriverLocation());
  return Mutation$UpdateDriverLocation$HookResult(
    (variables, {optimisticResult, typedOptimisticResult}) =>
        result.runMutation(
      variables.toJson(),
      optimisticResult: optimisticResult ?? typedOptimisticResult?.toJson(),
    ),
    result.result,
  );
}

graphql.ObservableQuery<Mutation$UpdateDriverLocation>
    useWatchMutation$UpdateDriverLocation(
            WatchOptions$Mutation$UpdateDriverLocation options) =>
        graphql_flutter.useWatchMutation(options);

class WidgetOptions$Mutation$UpdateDriverLocation
    extends graphql.MutationOptions<Mutation$UpdateDriverLocation> {
  WidgetOptions$Mutation$UpdateDriverLocation({
    String? operationName,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Mutation$UpdateDriverLocation? typedOptimisticResult,
    graphql.Context? context,
    OnMutationCompleted$Mutation$UpdateDriverLocation? onCompleted,
    graphql.OnMutationUpdate<Mutation$UpdateDriverLocation>? update,
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
                        : _parserFn$Mutation$UpdateDriverLocation(data),
                  ),
          update: update,
          onError: onError,
          document: documentNodeMutationUpdateDriverLocation,
          parserFn: _parserFn$Mutation$UpdateDriverLocation,
        );

  final OnMutationCompleted$Mutation$UpdateDriverLocation?
      onCompletedWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onCompleted == null
            ? super.properties
            : super.properties.where((property) => property != onCompleted),
        onCompletedWithParsed,
      ];
}

typedef RunMutation$Mutation$UpdateDriverLocation
    = graphql.MultiSourceResult<Mutation$UpdateDriverLocation> Function(
  Variables$Mutation$UpdateDriverLocation, {
  Object? optimisticResult,
  Mutation$UpdateDriverLocation? typedOptimisticResult,
});
typedef Builder$Mutation$UpdateDriverLocation = widgets.Widget Function(
  RunMutation$Mutation$UpdateDriverLocation,
  graphql.QueryResult<Mutation$UpdateDriverLocation>?,
);

class Mutation$UpdateDriverLocation$Widget
    extends graphql_flutter.Mutation<Mutation$UpdateDriverLocation> {
  Mutation$UpdateDriverLocation$Widget({
    widgets.Key? key,
    WidgetOptions$Mutation$UpdateDriverLocation? options,
    required Builder$Mutation$UpdateDriverLocation builder,
  }) : super(
          key: key,
          options: options ?? WidgetOptions$Mutation$UpdateDriverLocation(),
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

class Mutation$UpdateDriverLocation$updateDriversLocationNew
    implements Fragment$AvailableOrder {
  Mutation$UpdateDriverLocation$updateDriversLocationNew({
    required this.id,
    required this.status,
    required this.currency,
    required this.costBest,
    required this.addresses,
    required this.providerShare,
    required this.distanceBest,
    required this.durationBest,
    this.directions,
    required this.options,
    this.service,
    required this.points,
  });

  factory Mutation$UpdateDriverLocation$updateDriversLocationNew.fromJson(
      Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$status = json['status'];
    final l$currency = json['currency'];
    final l$costBest = json['costBest'];
    final l$addresses = json['addresses'];
    final l$providerShare = json['providerShare'];
    final l$distanceBest = json['distanceBest'];
    final l$durationBest = json['durationBest'];
    final l$directions = json['directions'];
    final l$options = json['options'];
    final l$service = json['service'];
    final l$points = json['points'];
    return Mutation$UpdateDriverLocation$updateDriversLocationNew(
      id: (l$id as String),
      status: fromJson$Enum$OrderStatus((l$status as String)),
      currency: (l$currency as String),
      costBest: (l$costBest as num).toDouble(),
      addresses:
          (l$addresses as List<dynamic>).map((e) => (e as String)).toList(),
      providerShare: (l$providerShare as num).toDouble(),
      distanceBest: (l$distanceBest as int),
      durationBest: (l$durationBest as int),
      directions: (l$directions as List<dynamic>?)
          ?.map((e) =>
              Mutation$UpdateDriverLocation$updateDriversLocationNew$directions
                  .fromJson((e as Map<String, dynamic>)))
          .toList(),
      options: (l$options as List<dynamic>)
          .map((e) =>
              Mutation$UpdateDriverLocation$updateDriversLocationNew$options
                  .fromJson((e as Map<String, dynamic>)))
          .toList(),
      service: l$service == null
          ? null
          : Mutation$UpdateDriverLocation$updateDriversLocationNew$service
              .fromJson((l$service as Map<String, dynamic>)),
      points: (l$points as List<dynamic>)
          .map((e) =>
              Mutation$UpdateDriverLocation$updateDriversLocationNew$points
                  .fromJson((e as Map<String, dynamic>)))
          .toList(),
    );
  }

  final String id;

  final Enum$OrderStatus status;

  final String currency;

  final double costBest;

  final List<String> addresses;

  final double providerShare;

  final int distanceBest;

  final int durationBest;

  final List<Mutation$UpdateDriverLocation$updateDriversLocationNew$directions>?
      directions;

  final List<Mutation$UpdateDriverLocation$updateDriversLocationNew$options>
      options;

  final Mutation$UpdateDriverLocation$updateDriversLocationNew$service? service;

  final List<Mutation$UpdateDriverLocation$updateDriversLocationNew$points>
      points;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = l$id;
    final l$status = status;
    _resultData['status'] = toJson$Enum$OrderStatus(l$status);
    final l$currency = currency;
    _resultData['currency'] = l$currency;
    final l$costBest = costBest;
    _resultData['costBest'] = l$costBest;
    final l$addresses = addresses;
    _resultData['addresses'] = l$addresses.map((e) => e).toList();
    final l$providerShare = providerShare;
    _resultData['providerShare'] = l$providerShare;
    final l$distanceBest = distanceBest;
    _resultData['distanceBest'] = l$distanceBest;
    final l$durationBest = durationBest;
    _resultData['durationBest'] = l$durationBest;
    final l$directions = directions;
    _resultData['directions'] = l$directions?.map((e) => e.toJson()).toList();
    final l$options = options;
    _resultData['options'] = l$options.map((e) => e.toJson()).toList();
    final l$service = service;
    _resultData['service'] = l$service?.toJson();
    final l$points = points;
    _resultData['points'] = l$points.map((e) => e.toJson()).toList();
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$status = status;
    final l$currency = currency;
    final l$costBest = costBest;
    final l$addresses = addresses;
    final l$providerShare = providerShare;
    final l$distanceBest = distanceBest;
    final l$durationBest = durationBest;
    final l$directions = directions;
    final l$options = options;
    final l$service = service;
    final l$points = points;
    return Object.hashAll([
      l$id,
      l$status,
      l$currency,
      l$costBest,
      Object.hashAll(l$addresses.map((v) => v)),
      l$providerShare,
      l$distanceBest,
      l$durationBest,
      l$directions == null ? null : Object.hashAll(l$directions.map((v) => v)),
      Object.hashAll(l$options.map((v) => v)),
      l$service,
      Object.hashAll(l$points.map((v) => v)),
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Mutation$UpdateDriverLocation$updateDriversLocationNew) ||
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
    final l$currency = currency;
    final lOther$currency = other.currency;
    if (l$currency != lOther$currency) {
      return false;
    }
    final l$costBest = costBest;
    final lOther$costBest = other.costBest;
    if (l$costBest != lOther$costBest) {
      return false;
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
    final l$providerShare = providerShare;
    final lOther$providerShare = other.providerShare;
    if (l$providerShare != lOther$providerShare) {
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
    final l$directions = directions;
    final lOther$directions = other.directions;
    if (l$directions != null && lOther$directions != null) {
      if (l$directions.length != lOther$directions.length) {
        return false;
      }
      for (int i = 0; i < l$directions.length; i++) {
        final l$directions$entry = l$directions[i];
        final lOther$directions$entry = lOther$directions[i];
        if (l$directions$entry != lOther$directions$entry) {
          return false;
        }
      }
    } else if (l$directions != lOther$directions) {
      return false;
    }
    final l$options = options;
    final lOther$options = other.options;
    if (l$options.length != lOther$options.length) {
      return false;
    }
    for (int i = 0; i < l$options.length; i++) {
      final l$options$entry = l$options[i];
      final lOther$options$entry = lOther$options[i];
      if (l$options$entry != lOther$options$entry) {
        return false;
      }
    }
    final l$service = service;
    final lOther$service = other.service;
    if (l$service != lOther$service) {
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
    return true;
  }
}

extension UtilityExtension$Mutation$UpdateDriverLocation$updateDriversLocationNew
    on Mutation$UpdateDriverLocation$updateDriversLocationNew {
  CopyWith$Mutation$UpdateDriverLocation$updateDriversLocationNew<
          Mutation$UpdateDriverLocation$updateDriversLocationNew>
      get copyWith =>
          CopyWith$Mutation$UpdateDriverLocation$updateDriversLocationNew(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Mutation$UpdateDriverLocation$updateDriversLocationNew<
    TRes> {
  factory CopyWith$Mutation$UpdateDriverLocation$updateDriversLocationNew(
    Mutation$UpdateDriverLocation$updateDriversLocationNew instance,
    TRes Function(Mutation$UpdateDriverLocation$updateDriversLocationNew) then,
  ) = _CopyWithImpl$Mutation$UpdateDriverLocation$updateDriversLocationNew;

  factory CopyWith$Mutation$UpdateDriverLocation$updateDriversLocationNew.stub(
          TRes res) =
      _CopyWithStubImpl$Mutation$UpdateDriverLocation$updateDriversLocationNew;

  TRes call({
    String? id,
    Enum$OrderStatus? status,
    String? currency,
    double? costBest,
    List<String>? addresses,
    double? providerShare,
    int? distanceBest,
    int? durationBest,
    List<Mutation$UpdateDriverLocation$updateDriversLocationNew$directions>?
        directions,
    List<Mutation$UpdateDriverLocation$updateDriversLocationNew$options>?
        options,
    Mutation$UpdateDriverLocation$updateDriversLocationNew$service? service,
    List<Mutation$UpdateDriverLocation$updateDriversLocationNew$points>? points,
  });
  TRes directions(
      Iterable<Mutation$UpdateDriverLocation$updateDriversLocationNew$directions>? Function(
              Iterable<
                  CopyWith$Mutation$UpdateDriverLocation$updateDriversLocationNew$directions<
                      Mutation$UpdateDriverLocation$updateDriversLocationNew$directions>>?)
          _fn);
  TRes options(
      Iterable<Mutation$UpdateDriverLocation$updateDriversLocationNew$options> Function(
              Iterable<
                  CopyWith$Mutation$UpdateDriverLocation$updateDriversLocationNew$options<
                      Mutation$UpdateDriverLocation$updateDriversLocationNew$options>>)
          _fn);
  CopyWith$Mutation$UpdateDriverLocation$updateDriversLocationNew$service<TRes>
      get service;
  TRes points(
      Iterable<Mutation$UpdateDriverLocation$updateDriversLocationNew$points> Function(
              Iterable<
                  CopyWith$Mutation$UpdateDriverLocation$updateDriversLocationNew$points<
                      Mutation$UpdateDriverLocation$updateDriversLocationNew$points>>)
          _fn);
}

class _CopyWithImpl$Mutation$UpdateDriverLocation$updateDriversLocationNew<TRes>
    implements
        CopyWith$Mutation$UpdateDriverLocation$updateDriversLocationNew<TRes> {
  _CopyWithImpl$Mutation$UpdateDriverLocation$updateDriversLocationNew(
    this._instance,
    this._then,
  );

  final Mutation$UpdateDriverLocation$updateDriversLocationNew _instance;

  final TRes Function(Mutation$UpdateDriverLocation$updateDriversLocationNew)
      _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? status = _undefined,
    Object? currency = _undefined,
    Object? costBest = _undefined,
    Object? addresses = _undefined,
    Object? providerShare = _undefined,
    Object? distanceBest = _undefined,
    Object? durationBest = _undefined,
    Object? directions = _undefined,
    Object? options = _undefined,
    Object? service = _undefined,
    Object? points = _undefined,
  }) =>
      _then(Mutation$UpdateDriverLocation$updateDriversLocationNew(
        id: id == _undefined || id == null ? _instance.id : (id as String),
        status: status == _undefined || status == null
            ? _instance.status
            : (status as Enum$OrderStatus),
        currency: currency == _undefined || currency == null
            ? _instance.currency
            : (currency as String),
        costBest: costBest == _undefined || costBest == null
            ? _instance.costBest
            : (costBest as double),
        addresses: addresses == _undefined || addresses == null
            ? _instance.addresses
            : (addresses as List<String>),
        providerShare: providerShare == _undefined || providerShare == null
            ? _instance.providerShare
            : (providerShare as double),
        distanceBest: distanceBest == _undefined || distanceBest == null
            ? _instance.distanceBest
            : (distanceBest as int),
        durationBest: durationBest == _undefined || durationBest == null
            ? _instance.durationBest
            : (durationBest as int),
        directions: directions == _undefined
            ? _instance.directions
            : (directions as List<
                Mutation$UpdateDriverLocation$updateDriversLocationNew$directions>?),
        options: options == _undefined || options == null
            ? _instance.options
            : (options as List<
                Mutation$UpdateDriverLocation$updateDriversLocationNew$options>),
        service: service == _undefined
            ? _instance.service
            : (service
                as Mutation$UpdateDriverLocation$updateDriversLocationNew$service?),
        points: points == _undefined || points == null
            ? _instance.points
            : (points as List<
                Mutation$UpdateDriverLocation$updateDriversLocationNew$points>),
      ));
  TRes directions(
          Iterable<Mutation$UpdateDriverLocation$updateDriversLocationNew$directions>? Function(
                  Iterable<
                      CopyWith$Mutation$UpdateDriverLocation$updateDriversLocationNew$directions<
                          Mutation$UpdateDriverLocation$updateDriversLocationNew$directions>>?)
              _fn) =>
      call(
          directions: _fn(_instance.directions?.map((e) =>
              CopyWith$Mutation$UpdateDriverLocation$updateDriversLocationNew$directions(
                e,
                (i) => i,
              )))?.toList());
  TRes options(
          Iterable<Mutation$UpdateDriverLocation$updateDriversLocationNew$options> Function(
                  Iterable<
                      CopyWith$Mutation$UpdateDriverLocation$updateDriversLocationNew$options<
                          Mutation$UpdateDriverLocation$updateDriversLocationNew$options>>)
              _fn) =>
      call(
          options: _fn(_instance.options.map((e) =>
              CopyWith$Mutation$UpdateDriverLocation$updateDriversLocationNew$options(
                e,
                (i) => i,
              ))).toList());
  CopyWith$Mutation$UpdateDriverLocation$updateDriversLocationNew$service<TRes>
      get service {
    final local$service = _instance.service;
    return local$service == null
        ? CopyWith$Mutation$UpdateDriverLocation$updateDriversLocationNew$service
            .stub(_then(_instance))
        : CopyWith$Mutation$UpdateDriverLocation$updateDriversLocationNew$service(
            local$service, (e) => call(service: e));
  }

  TRes points(
          Iterable<Mutation$UpdateDriverLocation$updateDriversLocationNew$points> Function(
                  Iterable<
                      CopyWith$Mutation$UpdateDriverLocation$updateDriversLocationNew$points<
                          Mutation$UpdateDriverLocation$updateDriversLocationNew$points>>)
              _fn) =>
      call(
          points: _fn(_instance.points.map((e) =>
              CopyWith$Mutation$UpdateDriverLocation$updateDriversLocationNew$points(
                e,
                (i) => i,
              ))).toList());
}

class _CopyWithStubImpl$Mutation$UpdateDriverLocation$updateDriversLocationNew<
        TRes>
    implements
        CopyWith$Mutation$UpdateDriverLocation$updateDriversLocationNew<TRes> {
  _CopyWithStubImpl$Mutation$UpdateDriverLocation$updateDriversLocationNew(
      this._res);

  TRes _res;

  call({
    String? id,
    Enum$OrderStatus? status,
    String? currency,
    double? costBest,
    List<String>? addresses,
    double? providerShare,
    int? distanceBest,
    int? durationBest,
    List<Mutation$UpdateDriverLocation$updateDriversLocationNew$directions>?
        directions,
    List<Mutation$UpdateDriverLocation$updateDriversLocationNew$options>?
        options,
    Mutation$UpdateDriverLocation$updateDriversLocationNew$service? service,
    List<Mutation$UpdateDriverLocation$updateDriversLocationNew$points>? points,
  }) =>
      _res;
  directions(_fn) => _res;
  options(_fn) => _res;
  CopyWith$Mutation$UpdateDriverLocation$updateDriversLocationNew$service<TRes>
      get service =>
          CopyWith$Mutation$UpdateDriverLocation$updateDriversLocationNew$service
              .stub(_res);
  points(_fn) => _res;
}

class Mutation$UpdateDriverLocation$updateDriversLocationNew$directions
    implements Fragment$Point {
  Mutation$UpdateDriverLocation$updateDriversLocationNew$directions({
    required this.lat,
    required this.lng,
  });

  factory Mutation$UpdateDriverLocation$updateDriversLocationNew$directions.fromJson(
      Map<String, dynamic> json) {
    final l$lat = json['lat'];
    final l$lng = json['lng'];
    return Mutation$UpdateDriverLocation$updateDriversLocationNew$directions(
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
    if (!(other
            is Mutation$UpdateDriverLocation$updateDriversLocationNew$directions) ||
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

extension UtilityExtension$Mutation$UpdateDriverLocation$updateDriversLocationNew$directions
    on Mutation$UpdateDriverLocation$updateDriversLocationNew$directions {
  CopyWith$Mutation$UpdateDriverLocation$updateDriversLocationNew$directions<
          Mutation$UpdateDriverLocation$updateDriversLocationNew$directions>
      get copyWith =>
          CopyWith$Mutation$UpdateDriverLocation$updateDriversLocationNew$directions(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Mutation$UpdateDriverLocation$updateDriversLocationNew$directions<
    TRes> {
  factory CopyWith$Mutation$UpdateDriverLocation$updateDriversLocationNew$directions(
    Mutation$UpdateDriverLocation$updateDriversLocationNew$directions instance,
    TRes Function(
            Mutation$UpdateDriverLocation$updateDriversLocationNew$directions)
        then,
  ) = _CopyWithImpl$Mutation$UpdateDriverLocation$updateDriversLocationNew$directions;

  factory CopyWith$Mutation$UpdateDriverLocation$updateDriversLocationNew$directions.stub(
          TRes res) =
      _CopyWithStubImpl$Mutation$UpdateDriverLocation$updateDriversLocationNew$directions;

  TRes call({
    double? lat,
    double? lng,
  });
}

class _CopyWithImpl$Mutation$UpdateDriverLocation$updateDriversLocationNew$directions<
        TRes>
    implements
        CopyWith$Mutation$UpdateDriverLocation$updateDriversLocationNew$directions<
            TRes> {
  _CopyWithImpl$Mutation$UpdateDriverLocation$updateDriversLocationNew$directions(
    this._instance,
    this._then,
  );

  final Mutation$UpdateDriverLocation$updateDriversLocationNew$directions
      _instance;

  final TRes Function(
      Mutation$UpdateDriverLocation$updateDriversLocationNew$directions) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? lat = _undefined,
    Object? lng = _undefined,
  }) =>
      _then(Mutation$UpdateDriverLocation$updateDriversLocationNew$directions(
        lat: lat == _undefined || lat == null ? _instance.lat : (lat as double),
        lng: lng == _undefined || lng == null ? _instance.lng : (lng as double),
      ));
}

class _CopyWithStubImpl$Mutation$UpdateDriverLocation$updateDriversLocationNew$directions<
        TRes>
    implements
        CopyWith$Mutation$UpdateDriverLocation$updateDriversLocationNew$directions<
            TRes> {
  _CopyWithStubImpl$Mutation$UpdateDriverLocation$updateDriversLocationNew$directions(
      this._res);

  TRes _res;

  call({
    double? lat,
    double? lng,
  }) =>
      _res;
}

class Mutation$UpdateDriverLocation$updateDriversLocationNew$options
    implements Fragment$AvailableOrder$options {
  Mutation$UpdateDriverLocation$updateDriversLocationNew$options({
    required this.name,
    required this.icon,
  });

  factory Mutation$UpdateDriverLocation$updateDriversLocationNew$options.fromJson(
      Map<String, dynamic> json) {
    final l$name = json['name'];
    final l$icon = json['icon'];
    return Mutation$UpdateDriverLocation$updateDriversLocationNew$options(
      name: (l$name as String),
      icon: fromJson$Enum$ServiceOptionIcon((l$icon as String)),
    );
  }

  final String name;

  final Enum$ServiceOptionIcon icon;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$name = name;
    _resultData['name'] = l$name;
    final l$icon = icon;
    _resultData['icon'] = toJson$Enum$ServiceOptionIcon(l$icon);
    return _resultData;
  }

  @override
  int get hashCode {
    final l$name = name;
    final l$icon = icon;
    return Object.hashAll([
      l$name,
      l$icon,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other
            is Mutation$UpdateDriverLocation$updateDriversLocationNew$options) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$name = name;
    final lOther$name = other.name;
    if (l$name != lOther$name) {
      return false;
    }
    final l$icon = icon;
    final lOther$icon = other.icon;
    if (l$icon != lOther$icon) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Mutation$UpdateDriverLocation$updateDriversLocationNew$options
    on Mutation$UpdateDriverLocation$updateDriversLocationNew$options {
  CopyWith$Mutation$UpdateDriverLocation$updateDriversLocationNew$options<
          Mutation$UpdateDriverLocation$updateDriversLocationNew$options>
      get copyWith =>
          CopyWith$Mutation$UpdateDriverLocation$updateDriversLocationNew$options(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Mutation$UpdateDriverLocation$updateDriversLocationNew$options<
    TRes> {
  factory CopyWith$Mutation$UpdateDriverLocation$updateDriversLocationNew$options(
    Mutation$UpdateDriverLocation$updateDriversLocationNew$options instance,
    TRes Function(
            Mutation$UpdateDriverLocation$updateDriversLocationNew$options)
        then,
  ) = _CopyWithImpl$Mutation$UpdateDriverLocation$updateDriversLocationNew$options;

  factory CopyWith$Mutation$UpdateDriverLocation$updateDriversLocationNew$options.stub(
          TRes res) =
      _CopyWithStubImpl$Mutation$UpdateDriverLocation$updateDriversLocationNew$options;

  TRes call({
    String? name,
    Enum$ServiceOptionIcon? icon,
  });
}

class _CopyWithImpl$Mutation$UpdateDriverLocation$updateDriversLocationNew$options<
        TRes>
    implements
        CopyWith$Mutation$UpdateDriverLocation$updateDriversLocationNew$options<
            TRes> {
  _CopyWithImpl$Mutation$UpdateDriverLocation$updateDriversLocationNew$options(
    this._instance,
    this._then,
  );

  final Mutation$UpdateDriverLocation$updateDriversLocationNew$options
      _instance;

  final TRes Function(
      Mutation$UpdateDriverLocation$updateDriversLocationNew$options) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? name = _undefined,
    Object? icon = _undefined,
  }) =>
      _then(Mutation$UpdateDriverLocation$updateDriversLocationNew$options(
        name: name == _undefined || name == null
            ? _instance.name
            : (name as String),
        icon: icon == _undefined || icon == null
            ? _instance.icon
            : (icon as Enum$ServiceOptionIcon),
      ));
}

class _CopyWithStubImpl$Mutation$UpdateDriverLocation$updateDriversLocationNew$options<
        TRes>
    implements
        CopyWith$Mutation$UpdateDriverLocation$updateDriversLocationNew$options<
            TRes> {
  _CopyWithStubImpl$Mutation$UpdateDriverLocation$updateDriversLocationNew$options(
      this._res);

  TRes _res;

  call({
    String? name,
    Enum$ServiceOptionIcon? icon,
  }) =>
      _res;
}

class Mutation$UpdateDriverLocation$updateDriversLocationNew$service
    implements Fragment$AvailableOrder$service {
  Mutation$UpdateDriverLocation$updateDriversLocationNew$service(
      {required this.name});

  factory Mutation$UpdateDriverLocation$updateDriversLocationNew$service.fromJson(
      Map<String, dynamic> json) {
    final l$name = json['name'];
    return Mutation$UpdateDriverLocation$updateDriversLocationNew$service(
        name: (l$name as String));
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
    if (!(other
            is Mutation$UpdateDriverLocation$updateDriversLocationNew$service) ||
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

extension UtilityExtension$Mutation$UpdateDriverLocation$updateDriversLocationNew$service
    on Mutation$UpdateDriverLocation$updateDriversLocationNew$service {
  CopyWith$Mutation$UpdateDriverLocation$updateDriversLocationNew$service<
          Mutation$UpdateDriverLocation$updateDriversLocationNew$service>
      get copyWith =>
          CopyWith$Mutation$UpdateDriverLocation$updateDriversLocationNew$service(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Mutation$UpdateDriverLocation$updateDriversLocationNew$service<
    TRes> {
  factory CopyWith$Mutation$UpdateDriverLocation$updateDriversLocationNew$service(
    Mutation$UpdateDriverLocation$updateDriversLocationNew$service instance,
    TRes Function(
            Mutation$UpdateDriverLocation$updateDriversLocationNew$service)
        then,
  ) = _CopyWithImpl$Mutation$UpdateDriverLocation$updateDriversLocationNew$service;

  factory CopyWith$Mutation$UpdateDriverLocation$updateDriversLocationNew$service.stub(
          TRes res) =
      _CopyWithStubImpl$Mutation$UpdateDriverLocation$updateDriversLocationNew$service;

  TRes call({String? name});
}

class _CopyWithImpl$Mutation$UpdateDriverLocation$updateDriversLocationNew$service<
        TRes>
    implements
        CopyWith$Mutation$UpdateDriverLocation$updateDriversLocationNew$service<
            TRes> {
  _CopyWithImpl$Mutation$UpdateDriverLocation$updateDriversLocationNew$service(
    this._instance,
    this._then,
  );

  final Mutation$UpdateDriverLocation$updateDriversLocationNew$service
      _instance;

  final TRes Function(
      Mutation$UpdateDriverLocation$updateDriversLocationNew$service) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? name = _undefined}) =>
      _then(Mutation$UpdateDriverLocation$updateDriversLocationNew$service(
          name: name == _undefined || name == null
              ? _instance.name
              : (name as String)));
}

class _CopyWithStubImpl$Mutation$UpdateDriverLocation$updateDriversLocationNew$service<
        TRes>
    implements
        CopyWith$Mutation$UpdateDriverLocation$updateDriversLocationNew$service<
            TRes> {
  _CopyWithStubImpl$Mutation$UpdateDriverLocation$updateDriversLocationNew$service(
      this._res);

  TRes _res;

  call({String? name}) => _res;
}

class Mutation$UpdateDriverLocation$updateDriversLocationNew$points
    implements Fragment$Point {
  Mutation$UpdateDriverLocation$updateDriversLocationNew$points({
    required this.lat,
    required this.lng,
  });

  factory Mutation$UpdateDriverLocation$updateDriversLocationNew$points.fromJson(
      Map<String, dynamic> json) {
    final l$lat = json['lat'];
    final l$lng = json['lng'];
    return Mutation$UpdateDriverLocation$updateDriversLocationNew$points(
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
    if (!(other
            is Mutation$UpdateDriverLocation$updateDriversLocationNew$points) ||
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

extension UtilityExtension$Mutation$UpdateDriverLocation$updateDriversLocationNew$points
    on Mutation$UpdateDriverLocation$updateDriversLocationNew$points {
  CopyWith$Mutation$UpdateDriverLocation$updateDriversLocationNew$points<
          Mutation$UpdateDriverLocation$updateDriversLocationNew$points>
      get copyWith =>
          CopyWith$Mutation$UpdateDriverLocation$updateDriversLocationNew$points(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Mutation$UpdateDriverLocation$updateDriversLocationNew$points<
    TRes> {
  factory CopyWith$Mutation$UpdateDriverLocation$updateDriversLocationNew$points(
    Mutation$UpdateDriverLocation$updateDriversLocationNew$points instance,
    TRes Function(Mutation$UpdateDriverLocation$updateDriversLocationNew$points)
        then,
  ) = _CopyWithImpl$Mutation$UpdateDriverLocation$updateDriversLocationNew$points;

  factory CopyWith$Mutation$UpdateDriverLocation$updateDriversLocationNew$points.stub(
          TRes res) =
      _CopyWithStubImpl$Mutation$UpdateDriverLocation$updateDriversLocationNew$points;

  TRes call({
    double? lat,
    double? lng,
  });
}

class _CopyWithImpl$Mutation$UpdateDriverLocation$updateDriversLocationNew$points<
        TRes>
    implements
        CopyWith$Mutation$UpdateDriverLocation$updateDriversLocationNew$points<
            TRes> {
  _CopyWithImpl$Mutation$UpdateDriverLocation$updateDriversLocationNew$points(
    this._instance,
    this._then,
  );

  final Mutation$UpdateDriverLocation$updateDriversLocationNew$points _instance;

  final TRes Function(
      Mutation$UpdateDriverLocation$updateDriversLocationNew$points) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? lat = _undefined,
    Object? lng = _undefined,
  }) =>
      _then(Mutation$UpdateDriverLocation$updateDriversLocationNew$points(
        lat: lat == _undefined || lat == null ? _instance.lat : (lat as double),
        lng: lng == _undefined || lng == null ? _instance.lng : (lng as double),
      ));
}

class _CopyWithStubImpl$Mutation$UpdateDriverLocation$updateDriversLocationNew$points<
        TRes>
    implements
        CopyWith$Mutation$UpdateDriverLocation$updateDriversLocationNew$points<
            TRes> {
  _CopyWithStubImpl$Mutation$UpdateDriverLocation$updateDriversLocationNew$points(
      this._res);

  TRes _res;

  call({
    double? lat,
    double? lng,
  }) =>
      _res;
}

class Variables$Mutation$UpdateOrderStatus {
  factory Variables$Mutation$UpdateOrderStatus({
    required String orderId,
    Enum$OrderStatus? status,
    double? cashPayment,
    int? destinationArrivedTo,
  }) =>
      Variables$Mutation$UpdateOrderStatus._({
        r'orderId': orderId,
        if (status != null) r'status': status,
        if (cashPayment != null) r'cashPayment': cashPayment,
        if (destinationArrivedTo != null)
          r'destinationArrivedTo': destinationArrivedTo,
      });

  Variables$Mutation$UpdateOrderStatus._(this._$data);

  factory Variables$Mutation$UpdateOrderStatus.fromJson(
      Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$orderId = data['orderId'];
    result$data['orderId'] = (l$orderId as String);
    if (data.containsKey('status')) {
      final l$status = data['status'];
      result$data['status'] = l$status == null
          ? null
          : fromJson$Enum$OrderStatus((l$status as String));
    }
    if (data.containsKey('cashPayment')) {
      final l$cashPayment = data['cashPayment'];
      result$data['cashPayment'] = (l$cashPayment as num?)?.toDouble();
    }
    if (data.containsKey('destinationArrivedTo')) {
      final l$destinationArrivedTo = data['destinationArrivedTo'];
      result$data['destinationArrivedTo'] = (l$destinationArrivedTo as int?);
    }
    return Variables$Mutation$UpdateOrderStatus._(result$data);
  }

  Map<String, dynamic> _$data;

  String get orderId => (_$data['orderId'] as String);
  Enum$OrderStatus? get status => (_$data['status'] as Enum$OrderStatus?);
  double? get cashPayment => (_$data['cashPayment'] as double?);
  int? get destinationArrivedTo => (_$data['destinationArrivedTo'] as int?);
  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$orderId = orderId;
    result$data['orderId'] = l$orderId;
    if (_$data.containsKey('status')) {
      final l$status = status;
      result$data['status'] =
          l$status == null ? null : toJson$Enum$OrderStatus(l$status);
    }
    if (_$data.containsKey('cashPayment')) {
      final l$cashPayment = cashPayment;
      result$data['cashPayment'] = l$cashPayment;
    }
    if (_$data.containsKey('destinationArrivedTo')) {
      final l$destinationArrivedTo = destinationArrivedTo;
      result$data['destinationArrivedTo'] = l$destinationArrivedTo;
    }
    return result$data;
  }

  CopyWith$Variables$Mutation$UpdateOrderStatus<
          Variables$Mutation$UpdateOrderStatus>
      get copyWith => CopyWith$Variables$Mutation$UpdateOrderStatus(
            this,
            (i) => i,
          );
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Variables$Mutation$UpdateOrderStatus) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$orderId = orderId;
    final lOther$orderId = other.orderId;
    if (l$orderId != lOther$orderId) {
      return false;
    }
    final l$status = status;
    final lOther$status = other.status;
    if (_$data.containsKey('status') != other._$data.containsKey('status')) {
      return false;
    }
    if (l$status != lOther$status) {
      return false;
    }
    final l$cashPayment = cashPayment;
    final lOther$cashPayment = other.cashPayment;
    if (_$data.containsKey('cashPayment') !=
        other._$data.containsKey('cashPayment')) {
      return false;
    }
    if (l$cashPayment != lOther$cashPayment) {
      return false;
    }
    final l$destinationArrivedTo = destinationArrivedTo;
    final lOther$destinationArrivedTo = other.destinationArrivedTo;
    if (_$data.containsKey('destinationArrivedTo') !=
        other._$data.containsKey('destinationArrivedTo')) {
      return false;
    }
    if (l$destinationArrivedTo != lOther$destinationArrivedTo) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$orderId = orderId;
    final l$status = status;
    final l$cashPayment = cashPayment;
    final l$destinationArrivedTo = destinationArrivedTo;
    return Object.hashAll([
      l$orderId,
      _$data.containsKey('status') ? l$status : const {},
      _$data.containsKey('cashPayment') ? l$cashPayment : const {},
      _$data.containsKey('destinationArrivedTo')
          ? l$destinationArrivedTo
          : const {},
    ]);
  }
}

abstract class CopyWith$Variables$Mutation$UpdateOrderStatus<TRes> {
  factory CopyWith$Variables$Mutation$UpdateOrderStatus(
    Variables$Mutation$UpdateOrderStatus instance,
    TRes Function(Variables$Mutation$UpdateOrderStatus) then,
  ) = _CopyWithImpl$Variables$Mutation$UpdateOrderStatus;

  factory CopyWith$Variables$Mutation$UpdateOrderStatus.stub(TRes res) =
      _CopyWithStubImpl$Variables$Mutation$UpdateOrderStatus;

  TRes call({
    String? orderId,
    Enum$OrderStatus? status,
    double? cashPayment,
    int? destinationArrivedTo,
  });
}

class _CopyWithImpl$Variables$Mutation$UpdateOrderStatus<TRes>
    implements CopyWith$Variables$Mutation$UpdateOrderStatus<TRes> {
  _CopyWithImpl$Variables$Mutation$UpdateOrderStatus(
    this._instance,
    this._then,
  );

  final Variables$Mutation$UpdateOrderStatus _instance;

  final TRes Function(Variables$Mutation$UpdateOrderStatus) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? orderId = _undefined,
    Object? status = _undefined,
    Object? cashPayment = _undefined,
    Object? destinationArrivedTo = _undefined,
  }) =>
      _then(Variables$Mutation$UpdateOrderStatus._({
        ..._instance._$data,
        if (orderId != _undefined && orderId != null)
          'orderId': (orderId as String),
        if (status != _undefined) 'status': (status as Enum$OrderStatus?),
        if (cashPayment != _undefined) 'cashPayment': (cashPayment as double?),
        if (destinationArrivedTo != _undefined)
          'destinationArrivedTo': (destinationArrivedTo as int?),
      }));
}

class _CopyWithStubImpl$Variables$Mutation$UpdateOrderStatus<TRes>
    implements CopyWith$Variables$Mutation$UpdateOrderStatus<TRes> {
  _CopyWithStubImpl$Variables$Mutation$UpdateOrderStatus(this._res);

  TRes _res;

  call({
    String? orderId,
    Enum$OrderStatus? status,
    double? cashPayment,
    int? destinationArrivedTo,
  }) =>
      _res;
}

class Mutation$UpdateOrderStatus {
  Mutation$UpdateOrderStatus({required this.updateOneOrder});

  factory Mutation$UpdateOrderStatus.fromJson(Map<String, dynamic> json) {
    final l$updateOneOrder = json['updateOneOrder'];
    return Mutation$UpdateOrderStatus(
        updateOneOrder: Fragment$CurrentOrder.fromJson(
            (l$updateOneOrder as Map<String, dynamic>)));
  }

  final Fragment$CurrentOrder updateOneOrder;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$updateOneOrder = updateOneOrder;
    _resultData['updateOneOrder'] = l$updateOneOrder.toJson();
    return _resultData;
  }

  @override
  int get hashCode {
    final l$updateOneOrder = updateOneOrder;
    return Object.hashAll([l$updateOneOrder]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Mutation$UpdateOrderStatus) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$updateOneOrder = updateOneOrder;
    final lOther$updateOneOrder = other.updateOneOrder;
    if (l$updateOneOrder != lOther$updateOneOrder) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Mutation$UpdateOrderStatus
    on Mutation$UpdateOrderStatus {
  CopyWith$Mutation$UpdateOrderStatus<Mutation$UpdateOrderStatus>
      get copyWith => CopyWith$Mutation$UpdateOrderStatus(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Mutation$UpdateOrderStatus<TRes> {
  factory CopyWith$Mutation$UpdateOrderStatus(
    Mutation$UpdateOrderStatus instance,
    TRes Function(Mutation$UpdateOrderStatus) then,
  ) = _CopyWithImpl$Mutation$UpdateOrderStatus;

  factory CopyWith$Mutation$UpdateOrderStatus.stub(TRes res) =
      _CopyWithStubImpl$Mutation$UpdateOrderStatus;

  TRes call({Fragment$CurrentOrder? updateOneOrder});
  CopyWith$Fragment$CurrentOrder<TRes> get updateOneOrder;
}

class _CopyWithImpl$Mutation$UpdateOrderStatus<TRes>
    implements CopyWith$Mutation$UpdateOrderStatus<TRes> {
  _CopyWithImpl$Mutation$UpdateOrderStatus(
    this._instance,
    this._then,
  );

  final Mutation$UpdateOrderStatus _instance;

  final TRes Function(Mutation$UpdateOrderStatus) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? updateOneOrder = _undefined}) =>
      _then(Mutation$UpdateOrderStatus(
          updateOneOrder: updateOneOrder == _undefined || updateOneOrder == null
              ? _instance.updateOneOrder
              : (updateOneOrder as Fragment$CurrentOrder)));
  CopyWith$Fragment$CurrentOrder<TRes> get updateOneOrder {
    final local$updateOneOrder = _instance.updateOneOrder;
    return CopyWith$Fragment$CurrentOrder(
        local$updateOneOrder, (e) => call(updateOneOrder: e));
  }
}

class _CopyWithStubImpl$Mutation$UpdateOrderStatus<TRes>
    implements CopyWith$Mutation$UpdateOrderStatus<TRes> {
  _CopyWithStubImpl$Mutation$UpdateOrderStatus(this._res);

  TRes _res;

  call({Fragment$CurrentOrder? updateOneOrder}) => _res;
  CopyWith$Fragment$CurrentOrder<TRes> get updateOneOrder =>
      CopyWith$Fragment$CurrentOrder.stub(_res);
}

const documentNodeMutationUpdateOrderStatus = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.mutation,
    name: NameNode(value: 'UpdateOrderStatus'),
    variableDefinitions: [
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'orderId')),
        type: NamedTypeNode(
          name: NameNode(value: 'ID'),
          isNonNull: true,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      ),
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'status')),
        type: NamedTypeNode(
          name: NameNode(value: 'OrderStatus'),
          isNonNull: false,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      ),
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'cashPayment')),
        type: NamedTypeNode(
          name: NameNode(value: 'Float'),
          isNonNull: false,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      ),
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'destinationArrivedTo')),
        type: NamedTypeNode(
          name: NameNode(value: 'Int'),
          isNonNull: false,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      ),
    ],
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
        name: NameNode(value: 'updateOneOrder'),
        alias: null,
        arguments: [
          ArgumentNode(
            name: NameNode(value: 'input'),
            value: ObjectValueNode(fields: [
              ObjectFieldNode(
                name: NameNode(value: 'id'),
                value: VariableNode(name: NameNode(value: 'orderId')),
              ),
              ObjectFieldNode(
                name: NameNode(value: 'update'),
                value: ObjectValueNode(fields: [
                  ObjectFieldNode(
                    name: NameNode(value: 'status'),
                    value: VariableNode(name: NameNode(value: 'status')),
                  ),
                  ObjectFieldNode(
                    name: NameNode(value: 'paidAmount'),
                    value: VariableNode(name: NameNode(value: 'cashPayment')),
                  ),
                  ObjectFieldNode(
                    name: NameNode(value: 'destinationArrivedTo'),
                    value: VariableNode(
                        name: NameNode(value: 'destinationArrivedTo')),
                  ),
                ]),
              ),
            ]),
          )
        ],
        directives: [],
        selectionSet: SelectionSetNode(selections: [
          FragmentSpreadNode(
            name: NameNode(value: 'CurrentOrder'),
            directives: [],
          )
        ]),
      )
    ]),
  ),
  fragmentDefinitionCurrentOrder,
  fragmentDefinitionPoint,
]);
Mutation$UpdateOrderStatus _parserFn$Mutation$UpdateOrderStatus(
        Map<String, dynamic> data) =>
    Mutation$UpdateOrderStatus.fromJson(data);
typedef OnMutationCompleted$Mutation$UpdateOrderStatus = FutureOr<void>
    Function(
  Map<String, dynamic>?,
  Mutation$UpdateOrderStatus?,
);

class Options$Mutation$UpdateOrderStatus
    extends graphql.MutationOptions<Mutation$UpdateOrderStatus> {
  Options$Mutation$UpdateOrderStatus({
    String? operationName,
    required Variables$Mutation$UpdateOrderStatus variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Mutation$UpdateOrderStatus? typedOptimisticResult,
    graphql.Context? context,
    OnMutationCompleted$Mutation$UpdateOrderStatus? onCompleted,
    graphql.OnMutationUpdate<Mutation$UpdateOrderStatus>? update,
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
                        : _parserFn$Mutation$UpdateOrderStatus(data),
                  ),
          update: update,
          onError: onError,
          document: documentNodeMutationUpdateOrderStatus,
          parserFn: _parserFn$Mutation$UpdateOrderStatus,
        );

  final OnMutationCompleted$Mutation$UpdateOrderStatus? onCompletedWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onCompleted == null
            ? super.properties
            : super.properties.where((property) => property != onCompleted),
        onCompletedWithParsed,
      ];
}

class WatchOptions$Mutation$UpdateOrderStatus
    extends graphql.WatchQueryOptions<Mutation$UpdateOrderStatus> {
  WatchOptions$Mutation$UpdateOrderStatus({
    String? operationName,
    required Variables$Mutation$UpdateOrderStatus variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Mutation$UpdateOrderStatus? typedOptimisticResult,
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
          document: documentNodeMutationUpdateOrderStatus,
          pollInterval: pollInterval,
          eagerlyFetchResults: eagerlyFetchResults,
          carryForwardDataOnException: carryForwardDataOnException,
          fetchResults: fetchResults,
          parserFn: _parserFn$Mutation$UpdateOrderStatus,
        );
}

extension ClientExtension$Mutation$UpdateOrderStatus on graphql.GraphQLClient {
  Future<graphql.QueryResult<Mutation$UpdateOrderStatus>>
      mutate$UpdateOrderStatus(
              Options$Mutation$UpdateOrderStatus options) async =>
          await this.mutate(options);
  graphql.ObservableQuery<Mutation$UpdateOrderStatus>
      watchMutation$UpdateOrderStatus(
              WatchOptions$Mutation$UpdateOrderStatus options) =>
          this.watchMutation(options);
}

class Mutation$UpdateOrderStatus$HookResult {
  Mutation$UpdateOrderStatus$HookResult(
    this.runMutation,
    this.result,
  );

  final RunMutation$Mutation$UpdateOrderStatus runMutation;

  final graphql.QueryResult<Mutation$UpdateOrderStatus> result;
}

Mutation$UpdateOrderStatus$HookResult useMutation$UpdateOrderStatus(
    [WidgetOptions$Mutation$UpdateOrderStatus? options]) {
  final result = graphql_flutter
      .useMutation(options ?? WidgetOptions$Mutation$UpdateOrderStatus());
  return Mutation$UpdateOrderStatus$HookResult(
    (variables, {optimisticResult, typedOptimisticResult}) =>
        result.runMutation(
      variables.toJson(),
      optimisticResult: optimisticResult ?? typedOptimisticResult?.toJson(),
    ),
    result.result,
  );
}

graphql.ObservableQuery<Mutation$UpdateOrderStatus>
    useWatchMutation$UpdateOrderStatus(
            WatchOptions$Mutation$UpdateOrderStatus options) =>
        graphql_flutter.useWatchMutation(options);

class WidgetOptions$Mutation$UpdateOrderStatus
    extends graphql.MutationOptions<Mutation$UpdateOrderStatus> {
  WidgetOptions$Mutation$UpdateOrderStatus({
    String? operationName,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Mutation$UpdateOrderStatus? typedOptimisticResult,
    graphql.Context? context,
    OnMutationCompleted$Mutation$UpdateOrderStatus? onCompleted,
    graphql.OnMutationUpdate<Mutation$UpdateOrderStatus>? update,
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
                        : _parserFn$Mutation$UpdateOrderStatus(data),
                  ),
          update: update,
          onError: onError,
          document: documentNodeMutationUpdateOrderStatus,
          parserFn: _parserFn$Mutation$UpdateOrderStatus,
        );

  final OnMutationCompleted$Mutation$UpdateOrderStatus? onCompletedWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onCompleted == null
            ? super.properties
            : super.properties.where((property) => property != onCompleted),
        onCompletedWithParsed,
      ];
}

typedef RunMutation$Mutation$UpdateOrderStatus
    = graphql.MultiSourceResult<Mutation$UpdateOrderStatus> Function(
  Variables$Mutation$UpdateOrderStatus, {
  Object? optimisticResult,
  Mutation$UpdateOrderStatus? typedOptimisticResult,
});
typedef Builder$Mutation$UpdateOrderStatus = widgets.Widget Function(
  RunMutation$Mutation$UpdateOrderStatus,
  graphql.QueryResult<Mutation$UpdateOrderStatus>?,
);

class Mutation$UpdateOrderStatus$Widget
    extends graphql_flutter.Mutation<Mutation$UpdateOrderStatus> {
  Mutation$UpdateOrderStatus$Widget({
    widgets.Key? key,
    WidgetOptions$Mutation$UpdateOrderStatus? options,
    required Builder$Mutation$UpdateOrderStatus builder,
  }) : super(
          key: key,
          options: options ?? WidgetOptions$Mutation$UpdateOrderStatus(),
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

class Variables$Mutation$UpdateDriverStatus {
  factory Variables$Mutation$UpdateDriverStatus({
    required Enum$DriverStatus status,
    String? fcmId,
  }) =>
      Variables$Mutation$UpdateDriverStatus._({
        r'status': status,
        if (fcmId != null) r'fcmId': fcmId,
      });

  Variables$Mutation$UpdateDriverStatus._(this._$data);

  factory Variables$Mutation$UpdateDriverStatus.fromJson(
      Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$status = data['status'];
    result$data['status'] = fromJson$Enum$DriverStatus((l$status as String));
    if (data.containsKey('fcmId')) {
      final l$fcmId = data['fcmId'];
      result$data['fcmId'] = (l$fcmId as String?);
    }
    return Variables$Mutation$UpdateDriverStatus._(result$data);
  }

  Map<String, dynamic> _$data;

  Enum$DriverStatus get status => (_$data['status'] as Enum$DriverStatus);
  String? get fcmId => (_$data['fcmId'] as String?);
  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$status = status;
    result$data['status'] = toJson$Enum$DriverStatus(l$status);
    if (_$data.containsKey('fcmId')) {
      final l$fcmId = fcmId;
      result$data['fcmId'] = l$fcmId;
    }
    return result$data;
  }

  CopyWith$Variables$Mutation$UpdateDriverStatus<
          Variables$Mutation$UpdateDriverStatus>
      get copyWith => CopyWith$Variables$Mutation$UpdateDriverStatus(
            this,
            (i) => i,
          );
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Variables$Mutation$UpdateDriverStatus) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$status = status;
    final lOther$status = other.status;
    if (l$status != lOther$status) {
      return false;
    }
    final l$fcmId = fcmId;
    final lOther$fcmId = other.fcmId;
    if (_$data.containsKey('fcmId') != other._$data.containsKey('fcmId')) {
      return false;
    }
    if (l$fcmId != lOther$fcmId) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$status = status;
    final l$fcmId = fcmId;
    return Object.hashAll([
      l$status,
      _$data.containsKey('fcmId') ? l$fcmId : const {},
    ]);
  }
}

abstract class CopyWith$Variables$Mutation$UpdateDriverStatus<TRes> {
  factory CopyWith$Variables$Mutation$UpdateDriverStatus(
    Variables$Mutation$UpdateDriverStatus instance,
    TRes Function(Variables$Mutation$UpdateDriverStatus) then,
  ) = _CopyWithImpl$Variables$Mutation$UpdateDriverStatus;

  factory CopyWith$Variables$Mutation$UpdateDriverStatus.stub(TRes res) =
      _CopyWithStubImpl$Variables$Mutation$UpdateDriverStatus;

  TRes call({
    Enum$DriverStatus? status,
    String? fcmId,
  });
}

class _CopyWithImpl$Variables$Mutation$UpdateDriverStatus<TRes>
    implements CopyWith$Variables$Mutation$UpdateDriverStatus<TRes> {
  _CopyWithImpl$Variables$Mutation$UpdateDriverStatus(
    this._instance,
    this._then,
  );

  final Variables$Mutation$UpdateDriverStatus _instance;

  final TRes Function(Variables$Mutation$UpdateDriverStatus) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? status = _undefined,
    Object? fcmId = _undefined,
  }) =>
      _then(Variables$Mutation$UpdateDriverStatus._({
        ..._instance._$data,
        if (status != _undefined && status != null)
          'status': (status as Enum$DriverStatus),
        if (fcmId != _undefined) 'fcmId': (fcmId as String?),
      }));
}

class _CopyWithStubImpl$Variables$Mutation$UpdateDriverStatus<TRes>
    implements CopyWith$Variables$Mutation$UpdateDriverStatus<TRes> {
  _CopyWithStubImpl$Variables$Mutation$UpdateDriverStatus(this._res);

  TRes _res;

  call({
    Enum$DriverStatus? status,
    String? fcmId,
  }) =>
      _res;
}

class Mutation$UpdateDriverStatus {
  Mutation$UpdateDriverStatus({required this.updateOneDriver});

  factory Mutation$UpdateDriverStatus.fromJson(Map<String, dynamic> json) {
    final l$updateOneDriver = json['updateOneDriver'];
    return Mutation$UpdateDriverStatus(
        updateOneDriver: Fragment$BasicProfile.fromJson(
            (l$updateOneDriver as Map<String, dynamic>)));
  }

  final Fragment$BasicProfile updateOneDriver;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$updateOneDriver = updateOneDriver;
    _resultData['updateOneDriver'] = l$updateOneDriver.toJson();
    return _resultData;
  }

  @override
  int get hashCode {
    final l$updateOneDriver = updateOneDriver;
    return Object.hashAll([l$updateOneDriver]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Mutation$UpdateDriverStatus) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$updateOneDriver = updateOneDriver;
    final lOther$updateOneDriver = other.updateOneDriver;
    if (l$updateOneDriver != lOther$updateOneDriver) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Mutation$UpdateDriverStatus
    on Mutation$UpdateDriverStatus {
  CopyWith$Mutation$UpdateDriverStatus<Mutation$UpdateDriverStatus>
      get copyWith => CopyWith$Mutation$UpdateDriverStatus(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Mutation$UpdateDriverStatus<TRes> {
  factory CopyWith$Mutation$UpdateDriverStatus(
    Mutation$UpdateDriverStatus instance,
    TRes Function(Mutation$UpdateDriverStatus) then,
  ) = _CopyWithImpl$Mutation$UpdateDriverStatus;

  factory CopyWith$Mutation$UpdateDriverStatus.stub(TRes res) =
      _CopyWithStubImpl$Mutation$UpdateDriverStatus;

  TRes call({Fragment$BasicProfile? updateOneDriver});
  CopyWith$Fragment$BasicProfile<TRes> get updateOneDriver;
}

class _CopyWithImpl$Mutation$UpdateDriverStatus<TRes>
    implements CopyWith$Mutation$UpdateDriverStatus<TRes> {
  _CopyWithImpl$Mutation$UpdateDriverStatus(
    this._instance,
    this._then,
  );

  final Mutation$UpdateDriverStatus _instance;

  final TRes Function(Mutation$UpdateDriverStatus) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? updateOneDriver = _undefined}) =>
      _then(Mutation$UpdateDriverStatus(
          updateOneDriver:
              updateOneDriver == _undefined || updateOneDriver == null
                  ? _instance.updateOneDriver
                  : (updateOneDriver as Fragment$BasicProfile)));
  CopyWith$Fragment$BasicProfile<TRes> get updateOneDriver {
    final local$updateOneDriver = _instance.updateOneDriver;
    return CopyWith$Fragment$BasicProfile(
        local$updateOneDriver, (e) => call(updateOneDriver: e));
  }
}

class _CopyWithStubImpl$Mutation$UpdateDriverStatus<TRes>
    implements CopyWith$Mutation$UpdateDriverStatus<TRes> {
  _CopyWithStubImpl$Mutation$UpdateDriverStatus(this._res);

  TRes _res;

  call({Fragment$BasicProfile? updateOneDriver}) => _res;
  CopyWith$Fragment$BasicProfile<TRes> get updateOneDriver =>
      CopyWith$Fragment$BasicProfile.stub(_res);
}

const documentNodeMutationUpdateDriverStatus = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.mutation,
    name: NameNode(value: 'UpdateDriverStatus'),
    variableDefinitions: [
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'status')),
        type: NamedTypeNode(
          name: NameNode(value: 'DriverStatus'),
          isNonNull: true,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      ),
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'fcmId')),
        type: NamedTypeNode(
          name: NameNode(value: 'String'),
          isNonNull: false,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      ),
    ],
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
        name: NameNode(value: 'updateOneDriver'),
        alias: null,
        arguments: [
          ArgumentNode(
            name: NameNode(value: 'input'),
            value: ObjectValueNode(fields: [
              ObjectFieldNode(
                name: NameNode(value: 'id'),
                value: StringValueNode(
                  value: '1',
                  isBlock: false,
                ),
              ),
              ObjectFieldNode(
                name: NameNode(value: 'update'),
                value: ObjectValueNode(fields: [
                  ObjectFieldNode(
                    name: NameNode(value: 'status'),
                    value: VariableNode(name: NameNode(value: 'status')),
                  ),
                  ObjectFieldNode(
                    name: NameNode(value: 'notificationPlayerId'),
                    value: VariableNode(name: NameNode(value: 'fcmId')),
                  ),
                ]),
              ),
            ]),
          )
        ],
        directives: [],
        selectionSet: SelectionSetNode(selections: [
          FragmentSpreadNode(
            name: NameNode(value: 'BasicProfile'),
            directives: [],
          )
        ]),
      )
    ]),
  ),
  fragmentDefinitionBasicProfile,
  fragmentDefinitionCurrentOrder,
  fragmentDefinitionPoint,
]);
Mutation$UpdateDriverStatus _parserFn$Mutation$UpdateDriverStatus(
        Map<String, dynamic> data) =>
    Mutation$UpdateDriverStatus.fromJson(data);
typedef OnMutationCompleted$Mutation$UpdateDriverStatus = FutureOr<void>
    Function(
  Map<String, dynamic>?,
  Mutation$UpdateDriverStatus?,
);

class Options$Mutation$UpdateDriverStatus
    extends graphql.MutationOptions<Mutation$UpdateDriverStatus> {
  Options$Mutation$UpdateDriverStatus({
    String? operationName,
    required Variables$Mutation$UpdateDriverStatus variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Mutation$UpdateDriverStatus? typedOptimisticResult,
    graphql.Context? context,
    OnMutationCompleted$Mutation$UpdateDriverStatus? onCompleted,
    graphql.OnMutationUpdate<Mutation$UpdateDriverStatus>? update,
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
                        : _parserFn$Mutation$UpdateDriverStatus(data),
                  ),
          update: update,
          onError: onError,
          document: documentNodeMutationUpdateDriverStatus,
          parserFn: _parserFn$Mutation$UpdateDriverStatus,
        );

  final OnMutationCompleted$Mutation$UpdateDriverStatus? onCompletedWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onCompleted == null
            ? super.properties
            : super.properties.where((property) => property != onCompleted),
        onCompletedWithParsed,
      ];
}

class WatchOptions$Mutation$UpdateDriverStatus
    extends graphql.WatchQueryOptions<Mutation$UpdateDriverStatus> {
  WatchOptions$Mutation$UpdateDriverStatus({
    String? operationName,
    required Variables$Mutation$UpdateDriverStatus variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Mutation$UpdateDriverStatus? typedOptimisticResult,
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
          document: documentNodeMutationUpdateDriverStatus,
          pollInterval: pollInterval,
          eagerlyFetchResults: eagerlyFetchResults,
          carryForwardDataOnException: carryForwardDataOnException,
          fetchResults: fetchResults,
          parserFn: _parserFn$Mutation$UpdateDriverStatus,
        );
}

extension ClientExtension$Mutation$UpdateDriverStatus on graphql.GraphQLClient {
  Future<graphql.QueryResult<Mutation$UpdateDriverStatus>>
      mutate$UpdateDriverStatus(
              Options$Mutation$UpdateDriverStatus options) async =>
          await this.mutate(options);
  graphql.ObservableQuery<Mutation$UpdateDriverStatus>
      watchMutation$UpdateDriverStatus(
              WatchOptions$Mutation$UpdateDriverStatus options) =>
          this.watchMutation(options);
}

class Mutation$UpdateDriverStatus$HookResult {
  Mutation$UpdateDriverStatus$HookResult(
    this.runMutation,
    this.result,
  );

  final RunMutation$Mutation$UpdateDriverStatus runMutation;

  final graphql.QueryResult<Mutation$UpdateDriverStatus> result;
}

Mutation$UpdateDriverStatus$HookResult useMutation$UpdateDriverStatus(
    [WidgetOptions$Mutation$UpdateDriverStatus? options]) {
  final result = graphql_flutter
      .useMutation(options ?? WidgetOptions$Mutation$UpdateDriverStatus());
  return Mutation$UpdateDriverStatus$HookResult(
    (variables, {optimisticResult, typedOptimisticResult}) =>
        result.runMutation(
      variables.toJson(),
      optimisticResult: optimisticResult ?? typedOptimisticResult?.toJson(),
    ),
    result.result,
  );
}

graphql.ObservableQuery<Mutation$UpdateDriverStatus>
    useWatchMutation$UpdateDriverStatus(
            WatchOptions$Mutation$UpdateDriverStatus options) =>
        graphql_flutter.useWatchMutation(options);

class WidgetOptions$Mutation$UpdateDriverStatus
    extends graphql.MutationOptions<Mutation$UpdateDriverStatus> {
  WidgetOptions$Mutation$UpdateDriverStatus({
    String? operationName,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Mutation$UpdateDriverStatus? typedOptimisticResult,
    graphql.Context? context,
    OnMutationCompleted$Mutation$UpdateDriverStatus? onCompleted,
    graphql.OnMutationUpdate<Mutation$UpdateDriverStatus>? update,
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
                        : _parserFn$Mutation$UpdateDriverStatus(data),
                  ),
          update: update,
          onError: onError,
          document: documentNodeMutationUpdateDriverStatus,
          parserFn: _parserFn$Mutation$UpdateDriverStatus,
        );

  final OnMutationCompleted$Mutation$UpdateDriverStatus? onCompletedWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onCompleted == null
            ? super.properties
            : super.properties.where((property) => property != onCompleted),
        onCompletedWithParsed,
      ];
}

typedef RunMutation$Mutation$UpdateDriverStatus
    = graphql.MultiSourceResult<Mutation$UpdateDriverStatus> Function(
  Variables$Mutation$UpdateDriverStatus, {
  Object? optimisticResult,
  Mutation$UpdateDriverStatus? typedOptimisticResult,
});
typedef Builder$Mutation$UpdateDriverStatus = widgets.Widget Function(
  RunMutation$Mutation$UpdateDriverStatus,
  graphql.QueryResult<Mutation$UpdateDriverStatus>?,
);

class Mutation$UpdateDriverStatus$Widget
    extends graphql_flutter.Mutation<Mutation$UpdateDriverStatus> {
  Mutation$UpdateDriverStatus$Widget({
    widgets.Key? key,
    WidgetOptions$Mutation$UpdateDriverStatus? options,
    required Builder$Mutation$UpdateDriverStatus builder,
  }) : super(
          key: key,
          options: options ?? WidgetOptions$Mutation$UpdateDriverStatus(),
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

class Variables$Mutation$UpdateDriverFCMId {
  factory Variables$Mutation$UpdateDriverFCMId({String? fcmId}) =>
      Variables$Mutation$UpdateDriverFCMId._({
        if (fcmId != null) r'fcmId': fcmId,
      });

  Variables$Mutation$UpdateDriverFCMId._(this._$data);

  factory Variables$Mutation$UpdateDriverFCMId.fromJson(
      Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('fcmId')) {
      final l$fcmId = data['fcmId'];
      result$data['fcmId'] = (l$fcmId as String?);
    }
    return Variables$Mutation$UpdateDriverFCMId._(result$data);
  }

  Map<String, dynamic> _$data;

  String? get fcmId => (_$data['fcmId'] as String?);
  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('fcmId')) {
      final l$fcmId = fcmId;
      result$data['fcmId'] = l$fcmId;
    }
    return result$data;
  }

  CopyWith$Variables$Mutation$UpdateDriverFCMId<
          Variables$Mutation$UpdateDriverFCMId>
      get copyWith => CopyWith$Variables$Mutation$UpdateDriverFCMId(
            this,
            (i) => i,
          );
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Variables$Mutation$UpdateDriverFCMId) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$fcmId = fcmId;
    final lOther$fcmId = other.fcmId;
    if (_$data.containsKey('fcmId') != other._$data.containsKey('fcmId')) {
      return false;
    }
    if (l$fcmId != lOther$fcmId) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$fcmId = fcmId;
    return Object.hashAll([_$data.containsKey('fcmId') ? l$fcmId : const {}]);
  }
}

abstract class CopyWith$Variables$Mutation$UpdateDriverFCMId<TRes> {
  factory CopyWith$Variables$Mutation$UpdateDriverFCMId(
    Variables$Mutation$UpdateDriverFCMId instance,
    TRes Function(Variables$Mutation$UpdateDriverFCMId) then,
  ) = _CopyWithImpl$Variables$Mutation$UpdateDriverFCMId;

  factory CopyWith$Variables$Mutation$UpdateDriverFCMId.stub(TRes res) =
      _CopyWithStubImpl$Variables$Mutation$UpdateDriverFCMId;

  TRes call({String? fcmId});
}

class _CopyWithImpl$Variables$Mutation$UpdateDriverFCMId<TRes>
    implements CopyWith$Variables$Mutation$UpdateDriverFCMId<TRes> {
  _CopyWithImpl$Variables$Mutation$UpdateDriverFCMId(
    this._instance,
    this._then,
  );

  final Variables$Mutation$UpdateDriverFCMId _instance;

  final TRes Function(Variables$Mutation$UpdateDriverFCMId) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? fcmId = _undefined}) =>
      _then(Variables$Mutation$UpdateDriverFCMId._({
        ..._instance._$data,
        if (fcmId != _undefined) 'fcmId': (fcmId as String?),
      }));
}

class _CopyWithStubImpl$Variables$Mutation$UpdateDriverFCMId<TRes>
    implements CopyWith$Variables$Mutation$UpdateDriverFCMId<TRes> {
  _CopyWithStubImpl$Variables$Mutation$UpdateDriverFCMId(this._res);

  TRes _res;

  call({String? fcmId}) => _res;
}

class Mutation$UpdateDriverFCMId {
  Mutation$UpdateDriverFCMId({required this.updateOneDriver});

  factory Mutation$UpdateDriverFCMId.fromJson(Map<String, dynamic> json) {
    final l$updateOneDriver = json['updateOneDriver'];
    return Mutation$UpdateDriverFCMId(
        updateOneDriver: Mutation$UpdateDriverFCMId$updateOneDriver.fromJson(
            (l$updateOneDriver as Map<String, dynamic>)));
  }

  final Mutation$UpdateDriverFCMId$updateOneDriver updateOneDriver;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$updateOneDriver = updateOneDriver;
    _resultData['updateOneDriver'] = l$updateOneDriver.toJson();
    return _resultData;
  }

  @override
  int get hashCode {
    final l$updateOneDriver = updateOneDriver;
    return Object.hashAll([l$updateOneDriver]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Mutation$UpdateDriverFCMId) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$updateOneDriver = updateOneDriver;
    final lOther$updateOneDriver = other.updateOneDriver;
    if (l$updateOneDriver != lOther$updateOneDriver) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Mutation$UpdateDriverFCMId
    on Mutation$UpdateDriverFCMId {
  CopyWith$Mutation$UpdateDriverFCMId<Mutation$UpdateDriverFCMId>
      get copyWith => CopyWith$Mutation$UpdateDriverFCMId(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Mutation$UpdateDriverFCMId<TRes> {
  factory CopyWith$Mutation$UpdateDriverFCMId(
    Mutation$UpdateDriverFCMId instance,
    TRes Function(Mutation$UpdateDriverFCMId) then,
  ) = _CopyWithImpl$Mutation$UpdateDriverFCMId;

  factory CopyWith$Mutation$UpdateDriverFCMId.stub(TRes res) =
      _CopyWithStubImpl$Mutation$UpdateDriverFCMId;

  TRes call({Mutation$UpdateDriverFCMId$updateOneDriver? updateOneDriver});
  CopyWith$Mutation$UpdateDriverFCMId$updateOneDriver<TRes> get updateOneDriver;
}

class _CopyWithImpl$Mutation$UpdateDriverFCMId<TRes>
    implements CopyWith$Mutation$UpdateDriverFCMId<TRes> {
  _CopyWithImpl$Mutation$UpdateDriverFCMId(
    this._instance,
    this._then,
  );

  final Mutation$UpdateDriverFCMId _instance;

  final TRes Function(Mutation$UpdateDriverFCMId) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? updateOneDriver = _undefined}) =>
      _then(Mutation$UpdateDriverFCMId(
          updateOneDriver:
              updateOneDriver == _undefined || updateOneDriver == null
                  ? _instance.updateOneDriver
                  : (updateOneDriver
                      as Mutation$UpdateDriverFCMId$updateOneDriver)));
  CopyWith$Mutation$UpdateDriverFCMId$updateOneDriver<TRes>
      get updateOneDriver {
    final local$updateOneDriver = _instance.updateOneDriver;
    return CopyWith$Mutation$UpdateDriverFCMId$updateOneDriver(
        local$updateOneDriver, (e) => call(updateOneDriver: e));
  }
}

class _CopyWithStubImpl$Mutation$UpdateDriverFCMId<TRes>
    implements CopyWith$Mutation$UpdateDriverFCMId<TRes> {
  _CopyWithStubImpl$Mutation$UpdateDriverFCMId(this._res);

  TRes _res;

  call({Mutation$UpdateDriverFCMId$updateOneDriver? updateOneDriver}) => _res;
  CopyWith$Mutation$UpdateDriverFCMId$updateOneDriver<TRes>
      get updateOneDriver =>
          CopyWith$Mutation$UpdateDriverFCMId$updateOneDriver.stub(_res);
}

const documentNodeMutationUpdateDriverFCMId = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.mutation,
    name: NameNode(value: 'UpdateDriverFCMId'),
    variableDefinitions: [
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'fcmId')),
        type: NamedTypeNode(
          name: NameNode(value: 'String'),
          isNonNull: false,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      )
    ],
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
        name: NameNode(value: 'updateOneDriver'),
        alias: null,
        arguments: [
          ArgumentNode(
            name: NameNode(value: 'input'),
            value: ObjectValueNode(fields: [
              ObjectFieldNode(
                name: NameNode(value: 'id'),
                value: StringValueNode(
                  value: '1',
                  isBlock: false,
                ),
              ),
              ObjectFieldNode(
                name: NameNode(value: 'update'),
                value: ObjectValueNode(fields: [
                  ObjectFieldNode(
                    name: NameNode(value: 'notificationPlayerId'),
                    value: VariableNode(name: NameNode(value: 'fcmId')),
                  )
                ]),
              ),
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
Mutation$UpdateDriverFCMId _parserFn$Mutation$UpdateDriverFCMId(
        Map<String, dynamic> data) =>
    Mutation$UpdateDriverFCMId.fromJson(data);
typedef OnMutationCompleted$Mutation$UpdateDriverFCMId = FutureOr<void>
    Function(
  Map<String, dynamic>?,
  Mutation$UpdateDriverFCMId?,
);

class Options$Mutation$UpdateDriverFCMId
    extends graphql.MutationOptions<Mutation$UpdateDriverFCMId> {
  Options$Mutation$UpdateDriverFCMId({
    String? operationName,
    Variables$Mutation$UpdateDriverFCMId? variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Mutation$UpdateDriverFCMId? typedOptimisticResult,
    graphql.Context? context,
    OnMutationCompleted$Mutation$UpdateDriverFCMId? onCompleted,
    graphql.OnMutationUpdate<Mutation$UpdateDriverFCMId>? update,
    graphql.OnError? onError,
  })  : onCompletedWithParsed = onCompleted,
        super(
          variables: variables?.toJson() ?? {},
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
                        : _parserFn$Mutation$UpdateDriverFCMId(data),
                  ),
          update: update,
          onError: onError,
          document: documentNodeMutationUpdateDriverFCMId,
          parserFn: _parserFn$Mutation$UpdateDriverFCMId,
        );

  final OnMutationCompleted$Mutation$UpdateDriverFCMId? onCompletedWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onCompleted == null
            ? super.properties
            : super.properties.where((property) => property != onCompleted),
        onCompletedWithParsed,
      ];
}

class WatchOptions$Mutation$UpdateDriverFCMId
    extends graphql.WatchQueryOptions<Mutation$UpdateDriverFCMId> {
  WatchOptions$Mutation$UpdateDriverFCMId({
    String? operationName,
    Variables$Mutation$UpdateDriverFCMId? variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Mutation$UpdateDriverFCMId? typedOptimisticResult,
    graphql.Context? context,
    Duration? pollInterval,
    bool? eagerlyFetchResults,
    bool carryForwardDataOnException = true,
    bool fetchResults = false,
  }) : super(
          variables: variables?.toJson() ?? {},
          operationName: operationName,
          fetchPolicy: fetchPolicy,
          errorPolicy: errorPolicy,
          cacheRereadPolicy: cacheRereadPolicy,
          optimisticResult: optimisticResult ?? typedOptimisticResult?.toJson(),
          context: context,
          document: documentNodeMutationUpdateDriverFCMId,
          pollInterval: pollInterval,
          eagerlyFetchResults: eagerlyFetchResults,
          carryForwardDataOnException: carryForwardDataOnException,
          fetchResults: fetchResults,
          parserFn: _parserFn$Mutation$UpdateDriverFCMId,
        );
}

extension ClientExtension$Mutation$UpdateDriverFCMId on graphql.GraphQLClient {
  Future<graphql.QueryResult<Mutation$UpdateDriverFCMId>>
      mutate$UpdateDriverFCMId(
              [Options$Mutation$UpdateDriverFCMId? options]) async =>
          await this.mutate(options ?? Options$Mutation$UpdateDriverFCMId());
  graphql.ObservableQuery<
      Mutation$UpdateDriverFCMId> watchMutation$UpdateDriverFCMId(
          [WatchOptions$Mutation$UpdateDriverFCMId? options]) =>
      this.watchMutation(options ?? WatchOptions$Mutation$UpdateDriverFCMId());
}

class Mutation$UpdateDriverFCMId$HookResult {
  Mutation$UpdateDriverFCMId$HookResult(
    this.runMutation,
    this.result,
  );

  final RunMutation$Mutation$UpdateDriverFCMId runMutation;

  final graphql.QueryResult<Mutation$UpdateDriverFCMId> result;
}

Mutation$UpdateDriverFCMId$HookResult useMutation$UpdateDriverFCMId(
    [WidgetOptions$Mutation$UpdateDriverFCMId? options]) {
  final result = graphql_flutter
      .useMutation(options ?? WidgetOptions$Mutation$UpdateDriverFCMId());
  return Mutation$UpdateDriverFCMId$HookResult(
    ({variables, optimisticResult, typedOptimisticResult}) =>
        result.runMutation(
      variables?.toJson() ?? const {},
      optimisticResult: optimisticResult ?? typedOptimisticResult?.toJson(),
    ),
    result.result,
  );
}

graphql.ObservableQuery<Mutation$UpdateDriverFCMId>
    useWatchMutation$UpdateDriverFCMId(
            [WatchOptions$Mutation$UpdateDriverFCMId? options]) =>
        graphql_flutter.useWatchMutation(
            options ?? WatchOptions$Mutation$UpdateDriverFCMId());

class WidgetOptions$Mutation$UpdateDriverFCMId
    extends graphql.MutationOptions<Mutation$UpdateDriverFCMId> {
  WidgetOptions$Mutation$UpdateDriverFCMId({
    String? operationName,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Mutation$UpdateDriverFCMId? typedOptimisticResult,
    graphql.Context? context,
    OnMutationCompleted$Mutation$UpdateDriverFCMId? onCompleted,
    graphql.OnMutationUpdate<Mutation$UpdateDriverFCMId>? update,
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
                        : _parserFn$Mutation$UpdateDriverFCMId(data),
                  ),
          update: update,
          onError: onError,
          document: documentNodeMutationUpdateDriverFCMId,
          parserFn: _parserFn$Mutation$UpdateDriverFCMId,
        );

  final OnMutationCompleted$Mutation$UpdateDriverFCMId? onCompletedWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onCompleted == null
            ? super.properties
            : super.properties.where((property) => property != onCompleted),
        onCompletedWithParsed,
      ];
}

typedef RunMutation$Mutation$UpdateDriverFCMId
    = graphql.MultiSourceResult<Mutation$UpdateDriverFCMId> Function({
  Variables$Mutation$UpdateDriverFCMId? variables,
  Object? optimisticResult,
  Mutation$UpdateDriverFCMId? typedOptimisticResult,
});
typedef Builder$Mutation$UpdateDriverFCMId = widgets.Widget Function(
  RunMutation$Mutation$UpdateDriverFCMId,
  graphql.QueryResult<Mutation$UpdateDriverFCMId>?,
);

class Mutation$UpdateDriverFCMId$Widget
    extends graphql_flutter.Mutation<Mutation$UpdateDriverFCMId> {
  Mutation$UpdateDriverFCMId$Widget({
    widgets.Key? key,
    WidgetOptions$Mutation$UpdateDriverFCMId? options,
    required Builder$Mutation$UpdateDriverFCMId builder,
  }) : super(
          key: key,
          options: options ?? WidgetOptions$Mutation$UpdateDriverFCMId(),
          builder: (
            run,
            result,
          ) =>
              builder(
            ({
              variables,
              optimisticResult,
              typedOptimisticResult,
            }) =>
                run(
              variables?.toJson() ?? const {},
              optimisticResult:
                  optimisticResult ?? typedOptimisticResult?.toJson(),
            ),
            result,
          ),
        );
}

class Mutation$UpdateDriverFCMId$updateOneDriver {
  Mutation$UpdateDriverFCMId$updateOneDriver({required this.id});

  factory Mutation$UpdateDriverFCMId$updateOneDriver.fromJson(
      Map<String, dynamic> json) {
    final l$id = json['id'];
    return Mutation$UpdateDriverFCMId$updateOneDriver(id: (l$id as String));
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
    if (!(other is Mutation$UpdateDriverFCMId$updateOneDriver) ||
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

extension UtilityExtension$Mutation$UpdateDriverFCMId$updateOneDriver
    on Mutation$UpdateDriverFCMId$updateOneDriver {
  CopyWith$Mutation$UpdateDriverFCMId$updateOneDriver<
          Mutation$UpdateDriverFCMId$updateOneDriver>
      get copyWith => CopyWith$Mutation$UpdateDriverFCMId$updateOneDriver(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Mutation$UpdateDriverFCMId$updateOneDriver<TRes> {
  factory CopyWith$Mutation$UpdateDriverFCMId$updateOneDriver(
    Mutation$UpdateDriverFCMId$updateOneDriver instance,
    TRes Function(Mutation$UpdateDriverFCMId$updateOneDriver) then,
  ) = _CopyWithImpl$Mutation$UpdateDriverFCMId$updateOneDriver;

  factory CopyWith$Mutation$UpdateDriverFCMId$updateOneDriver.stub(TRes res) =
      _CopyWithStubImpl$Mutation$UpdateDriverFCMId$updateOneDriver;

  TRes call({String? id});
}

class _CopyWithImpl$Mutation$UpdateDriverFCMId$updateOneDriver<TRes>
    implements CopyWith$Mutation$UpdateDriverFCMId$updateOneDriver<TRes> {
  _CopyWithImpl$Mutation$UpdateDriverFCMId$updateOneDriver(
    this._instance,
    this._then,
  );

  final Mutation$UpdateDriverFCMId$updateOneDriver _instance;

  final TRes Function(Mutation$UpdateDriverFCMId$updateOneDriver) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? id = _undefined}) =>
      _then(Mutation$UpdateDriverFCMId$updateOneDriver(
          id: id == _undefined || id == null ? _instance.id : (id as String)));
}

class _CopyWithStubImpl$Mutation$UpdateDriverFCMId$updateOneDriver<TRes>
    implements CopyWith$Mutation$UpdateDriverFCMId$updateOneDriver<TRes> {
  _CopyWithStubImpl$Mutation$UpdateDriverFCMId$updateOneDriver(this._res);

  TRes _res;

  call({String? id}) => _res;
}

class Variables$Mutation$UpdateDriverSearchDistance {
  factory Variables$Mutation$UpdateDriverSearchDistance(
          {required int distance}) =>
      Variables$Mutation$UpdateDriverSearchDistance._({
        r'distance': distance,
      });

  Variables$Mutation$UpdateDriverSearchDistance._(this._$data);

  factory Variables$Mutation$UpdateDriverSearchDistance.fromJson(
      Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$distance = data['distance'];
    result$data['distance'] = (l$distance as int);
    return Variables$Mutation$UpdateDriverSearchDistance._(result$data);
  }

  Map<String, dynamic> _$data;

  int get distance => (_$data['distance'] as int);
  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$distance = distance;
    result$data['distance'] = l$distance;
    return result$data;
  }

  CopyWith$Variables$Mutation$UpdateDriverSearchDistance<
          Variables$Mutation$UpdateDriverSearchDistance>
      get copyWith => CopyWith$Variables$Mutation$UpdateDriverSearchDistance(
            this,
            (i) => i,
          );
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Variables$Mutation$UpdateDriverSearchDistance) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$distance = distance;
    final lOther$distance = other.distance;
    if (l$distance != lOther$distance) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$distance = distance;
    return Object.hashAll([l$distance]);
  }
}

abstract class CopyWith$Variables$Mutation$UpdateDriverSearchDistance<TRes> {
  factory CopyWith$Variables$Mutation$UpdateDriverSearchDistance(
    Variables$Mutation$UpdateDriverSearchDistance instance,
    TRes Function(Variables$Mutation$UpdateDriverSearchDistance) then,
  ) = _CopyWithImpl$Variables$Mutation$UpdateDriverSearchDistance;

  factory CopyWith$Variables$Mutation$UpdateDriverSearchDistance.stub(
          TRes res) =
      _CopyWithStubImpl$Variables$Mutation$UpdateDriverSearchDistance;

  TRes call({int? distance});
}

class _CopyWithImpl$Variables$Mutation$UpdateDriverSearchDistance<TRes>
    implements CopyWith$Variables$Mutation$UpdateDriverSearchDistance<TRes> {
  _CopyWithImpl$Variables$Mutation$UpdateDriverSearchDistance(
    this._instance,
    this._then,
  );

  final Variables$Mutation$UpdateDriverSearchDistance _instance;

  final TRes Function(Variables$Mutation$UpdateDriverSearchDistance) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? distance = _undefined}) =>
      _then(Variables$Mutation$UpdateDriverSearchDistance._({
        ..._instance._$data,
        if (distance != _undefined && distance != null)
          'distance': (distance as int),
      }));
}

class _CopyWithStubImpl$Variables$Mutation$UpdateDriverSearchDistance<TRes>
    implements CopyWith$Variables$Mutation$UpdateDriverSearchDistance<TRes> {
  _CopyWithStubImpl$Variables$Mutation$UpdateDriverSearchDistance(this._res);

  TRes _res;

  call({int? distance}) => _res;
}

class Mutation$UpdateDriverSearchDistance {
  Mutation$UpdateDriverSearchDistance({required this.updateOneDriver});

  factory Mutation$UpdateDriverSearchDistance.fromJson(
      Map<String, dynamic> json) {
    final l$updateOneDriver = json['updateOneDriver'];
    return Mutation$UpdateDriverSearchDistance(
        updateOneDriver:
            Mutation$UpdateDriverSearchDistance$updateOneDriver.fromJson(
                (l$updateOneDriver as Map<String, dynamic>)));
  }

  final Mutation$UpdateDriverSearchDistance$updateOneDriver updateOneDriver;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$updateOneDriver = updateOneDriver;
    _resultData['updateOneDriver'] = l$updateOneDriver.toJson();
    return _resultData;
  }

  @override
  int get hashCode {
    final l$updateOneDriver = updateOneDriver;
    return Object.hashAll([l$updateOneDriver]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Mutation$UpdateDriverSearchDistance) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$updateOneDriver = updateOneDriver;
    final lOther$updateOneDriver = other.updateOneDriver;
    if (l$updateOneDriver != lOther$updateOneDriver) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Mutation$UpdateDriverSearchDistance
    on Mutation$UpdateDriverSearchDistance {
  CopyWith$Mutation$UpdateDriverSearchDistance<
          Mutation$UpdateDriverSearchDistance>
      get copyWith => CopyWith$Mutation$UpdateDriverSearchDistance(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Mutation$UpdateDriverSearchDistance<TRes> {
  factory CopyWith$Mutation$UpdateDriverSearchDistance(
    Mutation$UpdateDriverSearchDistance instance,
    TRes Function(Mutation$UpdateDriverSearchDistance) then,
  ) = _CopyWithImpl$Mutation$UpdateDriverSearchDistance;

  factory CopyWith$Mutation$UpdateDriverSearchDistance.stub(TRes res) =
      _CopyWithStubImpl$Mutation$UpdateDriverSearchDistance;

  TRes call(
      {Mutation$UpdateDriverSearchDistance$updateOneDriver? updateOneDriver});
  CopyWith$Mutation$UpdateDriverSearchDistance$updateOneDriver<TRes>
      get updateOneDriver;
}

class _CopyWithImpl$Mutation$UpdateDriverSearchDistance<TRes>
    implements CopyWith$Mutation$UpdateDriverSearchDistance<TRes> {
  _CopyWithImpl$Mutation$UpdateDriverSearchDistance(
    this._instance,
    this._then,
  );

  final Mutation$UpdateDriverSearchDistance _instance;

  final TRes Function(Mutation$UpdateDriverSearchDistance) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? updateOneDriver = _undefined}) =>
      _then(Mutation$UpdateDriverSearchDistance(
          updateOneDriver:
              updateOneDriver == _undefined || updateOneDriver == null
                  ? _instance.updateOneDriver
                  : (updateOneDriver
                      as Mutation$UpdateDriverSearchDistance$updateOneDriver)));
  CopyWith$Mutation$UpdateDriverSearchDistance$updateOneDriver<TRes>
      get updateOneDriver {
    final local$updateOneDriver = _instance.updateOneDriver;
    return CopyWith$Mutation$UpdateDriverSearchDistance$updateOneDriver(
        local$updateOneDriver, (e) => call(updateOneDriver: e));
  }
}

class _CopyWithStubImpl$Mutation$UpdateDriverSearchDistance<TRes>
    implements CopyWith$Mutation$UpdateDriverSearchDistance<TRes> {
  _CopyWithStubImpl$Mutation$UpdateDriverSearchDistance(this._res);

  TRes _res;

  call(
          {Mutation$UpdateDriverSearchDistance$updateOneDriver?
              updateOneDriver}) =>
      _res;
  CopyWith$Mutation$UpdateDriverSearchDistance$updateOneDriver<TRes>
      get updateOneDriver =>
          CopyWith$Mutation$UpdateDriverSearchDistance$updateOneDriver.stub(
              _res);
}

const documentNodeMutationUpdateDriverSearchDistance =
    DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.mutation,
    name: NameNode(value: 'UpdateDriverSearchDistance'),
    variableDefinitions: [
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'distance')),
        type: NamedTypeNode(
          name: NameNode(value: 'Int'),
          isNonNull: true,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      )
    ],
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
        name: NameNode(value: 'updateOneDriver'),
        alias: null,
        arguments: [
          ArgumentNode(
            name: NameNode(value: 'input'),
            value: ObjectValueNode(fields: [
              ObjectFieldNode(
                name: NameNode(value: 'id'),
                value: StringValueNode(
                  value: '1',
                  isBlock: false,
                ),
              ),
              ObjectFieldNode(
                name: NameNode(value: 'update'),
                value: ObjectValueNode(fields: [
                  ObjectFieldNode(
                    name: NameNode(value: 'searchDistance'),
                    value: VariableNode(name: NameNode(value: 'distance')),
                  )
                ]),
              ),
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
          ),
          FieldNode(
            name: NameNode(value: 'searchDistance'),
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
Mutation$UpdateDriverSearchDistance
    _parserFn$Mutation$UpdateDriverSearchDistance(Map<String, dynamic> data) =>
        Mutation$UpdateDriverSearchDistance.fromJson(data);
typedef OnMutationCompleted$Mutation$UpdateDriverSearchDistance = FutureOr<void>
    Function(
  Map<String, dynamic>?,
  Mutation$UpdateDriverSearchDistance?,
);

class Options$Mutation$UpdateDriverSearchDistance
    extends graphql.MutationOptions<Mutation$UpdateDriverSearchDistance> {
  Options$Mutation$UpdateDriverSearchDistance({
    String? operationName,
    required Variables$Mutation$UpdateDriverSearchDistance variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Mutation$UpdateDriverSearchDistance? typedOptimisticResult,
    graphql.Context? context,
    OnMutationCompleted$Mutation$UpdateDriverSearchDistance? onCompleted,
    graphql.OnMutationUpdate<Mutation$UpdateDriverSearchDistance>? update,
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
                        : _parserFn$Mutation$UpdateDriverSearchDistance(data),
                  ),
          update: update,
          onError: onError,
          document: documentNodeMutationUpdateDriverSearchDistance,
          parserFn: _parserFn$Mutation$UpdateDriverSearchDistance,
        );

  final OnMutationCompleted$Mutation$UpdateDriverSearchDistance?
      onCompletedWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onCompleted == null
            ? super.properties
            : super.properties.where((property) => property != onCompleted),
        onCompletedWithParsed,
      ];
}

class WatchOptions$Mutation$UpdateDriverSearchDistance
    extends graphql.WatchQueryOptions<Mutation$UpdateDriverSearchDistance> {
  WatchOptions$Mutation$UpdateDriverSearchDistance({
    String? operationName,
    required Variables$Mutation$UpdateDriverSearchDistance variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Mutation$UpdateDriverSearchDistance? typedOptimisticResult,
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
          document: documentNodeMutationUpdateDriverSearchDistance,
          pollInterval: pollInterval,
          eagerlyFetchResults: eagerlyFetchResults,
          carryForwardDataOnException: carryForwardDataOnException,
          fetchResults: fetchResults,
          parserFn: _parserFn$Mutation$UpdateDriverSearchDistance,
        );
}

extension ClientExtension$Mutation$UpdateDriverSearchDistance
    on graphql.GraphQLClient {
  Future<graphql.QueryResult<Mutation$UpdateDriverSearchDistance>>
      mutate$UpdateDriverSearchDistance(
              Options$Mutation$UpdateDriverSearchDistance options) async =>
          await this.mutate(options);
  graphql.ObservableQuery<Mutation$UpdateDriverSearchDistance>
      watchMutation$UpdateDriverSearchDistance(
              WatchOptions$Mutation$UpdateDriverSearchDistance options) =>
          this.watchMutation(options);
}

class Mutation$UpdateDriverSearchDistance$HookResult {
  Mutation$UpdateDriverSearchDistance$HookResult(
    this.runMutation,
    this.result,
  );

  final RunMutation$Mutation$UpdateDriverSearchDistance runMutation;

  final graphql.QueryResult<Mutation$UpdateDriverSearchDistance> result;
}

Mutation$UpdateDriverSearchDistance$HookResult
    useMutation$UpdateDriverSearchDistance(
        [WidgetOptions$Mutation$UpdateDriverSearchDistance? options]) {
  final result = graphql_flutter.useMutation(
      options ?? WidgetOptions$Mutation$UpdateDriverSearchDistance());
  return Mutation$UpdateDriverSearchDistance$HookResult(
    (variables, {optimisticResult, typedOptimisticResult}) =>
        result.runMutation(
      variables.toJson(),
      optimisticResult: optimisticResult ?? typedOptimisticResult?.toJson(),
    ),
    result.result,
  );
}

graphql.ObservableQuery<Mutation$UpdateDriverSearchDistance>
    useWatchMutation$UpdateDriverSearchDistance(
            WatchOptions$Mutation$UpdateDriverSearchDistance options) =>
        graphql_flutter.useWatchMutation(options);

class WidgetOptions$Mutation$UpdateDriverSearchDistance
    extends graphql.MutationOptions<Mutation$UpdateDriverSearchDistance> {
  WidgetOptions$Mutation$UpdateDriverSearchDistance({
    String? operationName,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Mutation$UpdateDriverSearchDistance? typedOptimisticResult,
    graphql.Context? context,
    OnMutationCompleted$Mutation$UpdateDriverSearchDistance? onCompleted,
    graphql.OnMutationUpdate<Mutation$UpdateDriverSearchDistance>? update,
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
                        : _parserFn$Mutation$UpdateDriverSearchDistance(data),
                  ),
          update: update,
          onError: onError,
          document: documentNodeMutationUpdateDriverSearchDistance,
          parserFn: _parserFn$Mutation$UpdateDriverSearchDistance,
        );

  final OnMutationCompleted$Mutation$UpdateDriverSearchDistance?
      onCompletedWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onCompleted == null
            ? super.properties
            : super.properties.where((property) => property != onCompleted),
        onCompletedWithParsed,
      ];
}

typedef RunMutation$Mutation$UpdateDriverSearchDistance
    = graphql.MultiSourceResult<Mutation$UpdateDriverSearchDistance> Function(
  Variables$Mutation$UpdateDriverSearchDistance, {
  Object? optimisticResult,
  Mutation$UpdateDriverSearchDistance? typedOptimisticResult,
});
typedef Builder$Mutation$UpdateDriverSearchDistance = widgets.Widget Function(
  RunMutation$Mutation$UpdateDriverSearchDistance,
  graphql.QueryResult<Mutation$UpdateDriverSearchDistance>?,
);

class Mutation$UpdateDriverSearchDistance$Widget
    extends graphql_flutter.Mutation<Mutation$UpdateDriverSearchDistance> {
  Mutation$UpdateDriverSearchDistance$Widget({
    widgets.Key? key,
    WidgetOptions$Mutation$UpdateDriverSearchDistance? options,
    required Builder$Mutation$UpdateDriverSearchDistance builder,
  }) : super(
          key: key,
          options:
              options ?? WidgetOptions$Mutation$UpdateDriverSearchDistance(),
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

class Mutation$UpdateDriverSearchDistance$updateOneDriver {
  Mutation$UpdateDriverSearchDistance$updateOneDriver({
    required this.id,
    this.searchDistance,
  });

  factory Mutation$UpdateDriverSearchDistance$updateOneDriver.fromJson(
      Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$searchDistance = json['searchDistance'];
    return Mutation$UpdateDriverSearchDistance$updateOneDriver(
      id: (l$id as String),
      searchDistance: (l$searchDistance as int?),
    );
  }

  final String id;

  final int? searchDistance;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = l$id;
    final l$searchDistance = searchDistance;
    _resultData['searchDistance'] = l$searchDistance;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$searchDistance = searchDistance;
    return Object.hashAll([
      l$id,
      l$searchDistance,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Mutation$UpdateDriverSearchDistance$updateOneDriver) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
      return false;
    }
    final l$searchDistance = searchDistance;
    final lOther$searchDistance = other.searchDistance;
    if (l$searchDistance != lOther$searchDistance) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Mutation$UpdateDriverSearchDistance$updateOneDriver
    on Mutation$UpdateDriverSearchDistance$updateOneDriver {
  CopyWith$Mutation$UpdateDriverSearchDistance$updateOneDriver<
          Mutation$UpdateDriverSearchDistance$updateOneDriver>
      get copyWith =>
          CopyWith$Mutation$UpdateDriverSearchDistance$updateOneDriver(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Mutation$UpdateDriverSearchDistance$updateOneDriver<
    TRes> {
  factory CopyWith$Mutation$UpdateDriverSearchDistance$updateOneDriver(
    Mutation$UpdateDriverSearchDistance$updateOneDriver instance,
    TRes Function(Mutation$UpdateDriverSearchDistance$updateOneDriver) then,
  ) = _CopyWithImpl$Mutation$UpdateDriverSearchDistance$updateOneDriver;

  factory CopyWith$Mutation$UpdateDriverSearchDistance$updateOneDriver.stub(
          TRes res) =
      _CopyWithStubImpl$Mutation$UpdateDriverSearchDistance$updateOneDriver;

  TRes call({
    String? id,
    int? searchDistance,
  });
}

class _CopyWithImpl$Mutation$UpdateDriverSearchDistance$updateOneDriver<TRes>
    implements
        CopyWith$Mutation$UpdateDriverSearchDistance$updateOneDriver<TRes> {
  _CopyWithImpl$Mutation$UpdateDriverSearchDistance$updateOneDriver(
    this._instance,
    this._then,
  );

  final Mutation$UpdateDriverSearchDistance$updateOneDriver _instance;

  final TRes Function(Mutation$UpdateDriverSearchDistance$updateOneDriver)
      _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? searchDistance = _undefined,
  }) =>
      _then(Mutation$UpdateDriverSearchDistance$updateOneDriver(
        id: id == _undefined || id == null ? _instance.id : (id as String),
        searchDistance: searchDistance == _undefined
            ? _instance.searchDistance
            : (searchDistance as int?),
      ));
}

class _CopyWithStubImpl$Mutation$UpdateDriverSearchDistance$updateOneDriver<
        TRes>
    implements
        CopyWith$Mutation$UpdateDriverSearchDistance$updateOneDriver<TRes> {
  _CopyWithStubImpl$Mutation$UpdateDriverSearchDistance$updateOneDriver(
      this._res);

  TRes _res;

  call({
    String? id,
    int? searchDistance,
  }) =>
      _res;
}
