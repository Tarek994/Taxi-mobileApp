import '../graphql/order.fragment.graphql.dart';
import 'dart:async';
import 'package:flutter/widgets.dart' as widgets;
import 'package:gql/ast.dart';
import 'package:graphql/client.dart' as graphql;
import 'package:graphql_flutter/graphql_flutter.dart' as graphql_flutter;

class Query$GetMessages {
  Query$GetMessages({this.driver});

  factory Query$GetMessages.fromJson(Map<String, dynamic> json) {
    final l$driver = json['driver'];
    return Query$GetMessages(
        driver: l$driver == null
            ? null
            : Query$GetMessages$driver.fromJson(
                (l$driver as Map<String, dynamic>)));
  }

  final Query$GetMessages$driver? driver;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$driver = driver;
    _resultData['driver'] = l$driver?.toJson();
    return _resultData;
  }

  @override
  int get hashCode {
    final l$driver = driver;
    return Object.hashAll([l$driver]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$GetMessages) || runtimeType != other.runtimeType) {
      return false;
    }
    final l$driver = driver;
    final lOther$driver = other.driver;
    if (l$driver != lOther$driver) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Query$GetMessages on Query$GetMessages {
  CopyWith$Query$GetMessages<Query$GetMessages> get copyWith =>
      CopyWith$Query$GetMessages(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$GetMessages<TRes> {
  factory CopyWith$Query$GetMessages(
    Query$GetMessages instance,
    TRes Function(Query$GetMessages) then,
  ) = _CopyWithImpl$Query$GetMessages;

  factory CopyWith$Query$GetMessages.stub(TRes res) =
      _CopyWithStubImpl$Query$GetMessages;

  TRes call({Query$GetMessages$driver? driver});
  CopyWith$Query$GetMessages$driver<TRes> get driver;
}

class _CopyWithImpl$Query$GetMessages<TRes>
    implements CopyWith$Query$GetMessages<TRes> {
  _CopyWithImpl$Query$GetMessages(
    this._instance,
    this._then,
  );

  final Query$GetMessages _instance;

  final TRes Function(Query$GetMessages) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? driver = _undefined}) => _then(Query$GetMessages(
      driver: driver == _undefined
          ? _instance.driver
          : (driver as Query$GetMessages$driver?)));
  CopyWith$Query$GetMessages$driver<TRes> get driver {
    final local$driver = _instance.driver;
    return local$driver == null
        ? CopyWith$Query$GetMessages$driver.stub(_then(_instance))
        : CopyWith$Query$GetMessages$driver(
            local$driver, (e) => call(driver: e));
  }
}

class _CopyWithStubImpl$Query$GetMessages<TRes>
    implements CopyWith$Query$GetMessages<TRes> {
  _CopyWithStubImpl$Query$GetMessages(this._res);

  TRes _res;

  call({Query$GetMessages$driver? driver}) => _res;
  CopyWith$Query$GetMessages$driver<TRes> get driver =>
      CopyWith$Query$GetMessages$driver.stub(_res);
}

const documentNodeQueryGetMessages = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.query,
    name: NameNode(value: 'GetMessages'),
    variableDefinitions: [],
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
        name: NameNode(value: 'driver'),
        alias: null,
        arguments: [
          ArgumentNode(
            name: NameNode(value: 'id'),
            value: StringValueNode(
              value: '1',
              isBlock: false,
            ),
          )
        ],
        directives: [],
        selectionSet: SelectionSetNode(selections: [
          FieldNode(
            name: NameNode(value: 'currentOrders'),
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
                name: NameNode(value: 'rider'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: SelectionSetNode(selections: [
                  FragmentSpreadNode(
                    name: NameNode(value: 'ChatRider'),
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
                    name: NameNode(value: 'mobileNumber'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: null,
                  ),
                ]),
              ),
              FieldNode(
                name: NameNode(value: 'driver'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: SelectionSetNode(selections: [
                  FragmentSpreadNode(
                    name: NameNode(value: 'ChatDriver'),
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
                ]),
              ),
              FieldNode(
                name: NameNode(value: 'conversations'),
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
                  FragmentSpreadNode(
                    name: NameNode(value: 'ChatMessage'),
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
                    name: NameNode(value: 'content'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: null,
                  ),
                  FieldNode(
                    name: NameNode(value: 'sentByDriver'),
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
      )
    ]),
  ),
  fragmentDefinitionChatRider,
  fragmentDefinitionChatDriver,
  fragmentDefinitionChatMessage,
]);
Query$GetMessages _parserFn$Query$GetMessages(Map<String, dynamic> data) =>
    Query$GetMessages.fromJson(data);
typedef OnQueryComplete$Query$GetMessages = FutureOr<void> Function(
  Map<String, dynamic>?,
  Query$GetMessages?,
);

class Options$Query$GetMessages
    extends graphql.QueryOptions<Query$GetMessages> {
  Options$Query$GetMessages({
    String? operationName,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Query$GetMessages? typedOptimisticResult,
    Duration? pollInterval,
    graphql.Context? context,
    OnQueryComplete$Query$GetMessages? onComplete,
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
                    data == null ? null : _parserFn$Query$GetMessages(data),
                  ),
          onError: onError,
          document: documentNodeQueryGetMessages,
          parserFn: _parserFn$Query$GetMessages,
        );

  final OnQueryComplete$Query$GetMessages? onCompleteWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onComplete == null
            ? super.properties
            : super.properties.where((property) => property != onComplete),
        onCompleteWithParsed,
      ];
}

class WatchOptions$Query$GetMessages
    extends graphql.WatchQueryOptions<Query$GetMessages> {
  WatchOptions$Query$GetMessages({
    String? operationName,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Query$GetMessages? typedOptimisticResult,
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
          document: documentNodeQueryGetMessages,
          pollInterval: pollInterval,
          eagerlyFetchResults: eagerlyFetchResults,
          carryForwardDataOnException: carryForwardDataOnException,
          fetchResults: fetchResults,
          parserFn: _parserFn$Query$GetMessages,
        );
}

class FetchMoreOptions$Query$GetMessages extends graphql.FetchMoreOptions {
  FetchMoreOptions$Query$GetMessages({required graphql.UpdateQuery updateQuery})
      : super(
          updateQuery: updateQuery,
          document: documentNodeQueryGetMessages,
        );
}

extension ClientExtension$Query$GetMessages on graphql.GraphQLClient {
  Future<graphql.QueryResult<Query$GetMessages>> query$GetMessages(
          [Options$Query$GetMessages? options]) async =>
      await this.query(options ?? Options$Query$GetMessages());
  graphql.ObservableQuery<Query$GetMessages> watchQuery$GetMessages(
          [WatchOptions$Query$GetMessages? options]) =>
      this.watchQuery(options ?? WatchOptions$Query$GetMessages());
  void writeQuery$GetMessages({
    required Query$GetMessages data,
    bool broadcast = true,
  }) =>
      this.writeQuery(
        graphql.Request(
            operation:
                graphql.Operation(document: documentNodeQueryGetMessages)),
        data: data.toJson(),
        broadcast: broadcast,
      );
  Query$GetMessages? readQuery$GetMessages({bool optimistic = true}) {
    final result = this.readQuery(
      graphql.Request(
          operation: graphql.Operation(document: documentNodeQueryGetMessages)),
      optimistic: optimistic,
    );
    return result == null ? null : Query$GetMessages.fromJson(result);
  }
}

graphql_flutter.QueryHookResult<Query$GetMessages> useQuery$GetMessages(
        [Options$Query$GetMessages? options]) =>
    graphql_flutter.useQuery(options ?? Options$Query$GetMessages());
graphql.ObservableQuery<Query$GetMessages> useWatchQuery$GetMessages(
        [WatchOptions$Query$GetMessages? options]) =>
    graphql_flutter.useWatchQuery(options ?? WatchOptions$Query$GetMessages());

class Query$GetMessages$Widget
    extends graphql_flutter.Query<Query$GetMessages> {
  Query$GetMessages$Widget({
    widgets.Key? key,
    Options$Query$GetMessages? options,
    required graphql_flutter.QueryBuilder<Query$GetMessages> builder,
  }) : super(
          key: key,
          options: options ?? Options$Query$GetMessages(),
          builder: builder,
        );
}

class Query$GetMessages$driver {
  Query$GetMessages$driver({required this.currentOrders});

  factory Query$GetMessages$driver.fromJson(Map<String, dynamic> json) {
    final l$currentOrders = json['currentOrders'];
    return Query$GetMessages$driver(
        currentOrders: (l$currentOrders as List<dynamic>)
            .map((e) => Query$GetMessages$driver$currentOrders.fromJson(
                (e as Map<String, dynamic>)))
            .toList());
  }

  final List<Query$GetMessages$driver$currentOrders> currentOrders;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$currentOrders = currentOrders;
    _resultData['currentOrders'] =
        l$currentOrders.map((e) => e.toJson()).toList();
    return _resultData;
  }

  @override
  int get hashCode {
    final l$currentOrders = currentOrders;
    return Object.hashAll([Object.hashAll(l$currentOrders.map((v) => v))]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$GetMessages$driver) ||
        runtimeType != other.runtimeType) {
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
    return true;
  }
}

extension UtilityExtension$Query$GetMessages$driver
    on Query$GetMessages$driver {
  CopyWith$Query$GetMessages$driver<Query$GetMessages$driver> get copyWith =>
      CopyWith$Query$GetMessages$driver(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$GetMessages$driver<TRes> {
  factory CopyWith$Query$GetMessages$driver(
    Query$GetMessages$driver instance,
    TRes Function(Query$GetMessages$driver) then,
  ) = _CopyWithImpl$Query$GetMessages$driver;

  factory CopyWith$Query$GetMessages$driver.stub(TRes res) =
      _CopyWithStubImpl$Query$GetMessages$driver;

  TRes call({List<Query$GetMessages$driver$currentOrders>? currentOrders});
  TRes currentOrders(
      Iterable<Query$GetMessages$driver$currentOrders> Function(
              Iterable<
                  CopyWith$Query$GetMessages$driver$currentOrders<
                      Query$GetMessages$driver$currentOrders>>)
          _fn);
}

class _CopyWithImpl$Query$GetMessages$driver<TRes>
    implements CopyWith$Query$GetMessages$driver<TRes> {
  _CopyWithImpl$Query$GetMessages$driver(
    this._instance,
    this._then,
  );

  final Query$GetMessages$driver _instance;

  final TRes Function(Query$GetMessages$driver) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? currentOrders = _undefined}) => _then(
      Query$GetMessages$driver(
          currentOrders: currentOrders == _undefined || currentOrders == null
              ? _instance.currentOrders
              : (currentOrders
                  as List<Query$GetMessages$driver$currentOrders>)));
  TRes currentOrders(
          Iterable<Query$GetMessages$driver$currentOrders> Function(
                  Iterable<
                      CopyWith$Query$GetMessages$driver$currentOrders<
                          Query$GetMessages$driver$currentOrders>>)
              _fn) =>
      call(
          currentOrders: _fn(_instance.currentOrders
              .map((e) => CopyWith$Query$GetMessages$driver$currentOrders(
                    e,
                    (i) => i,
                  ))).toList());
}

class _CopyWithStubImpl$Query$GetMessages$driver<TRes>
    implements CopyWith$Query$GetMessages$driver<TRes> {
  _CopyWithStubImpl$Query$GetMessages$driver(this._res);

  TRes _res;

  call({List<Query$GetMessages$driver$currentOrders>? currentOrders}) => _res;
  currentOrders(_fn) => _res;
}

class Query$GetMessages$driver$currentOrders {
  Query$GetMessages$driver$currentOrders({
    required this.id,
    this.rider,
    this.driver,
    required this.conversations,
  });

  factory Query$GetMessages$driver$currentOrders.fromJson(
      Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$rider = json['rider'];
    final l$driver = json['driver'];
    final l$conversations = json['conversations'];
    return Query$GetMessages$driver$currentOrders(
      id: (l$id as String),
      rider: l$rider == null
          ? null
          : Query$GetMessages$driver$currentOrders$rider.fromJson(
              (l$rider as Map<String, dynamic>)),
      driver: l$driver == null
          ? null
          : Query$GetMessages$driver$currentOrders$driver.fromJson(
              (l$driver as Map<String, dynamic>)),
      conversations: (l$conversations as List<dynamic>)
          .map((e) =>
              Query$GetMessages$driver$currentOrders$conversations.fromJson(
                  (e as Map<String, dynamic>)))
          .toList(),
    );
  }

  final String id;

  final Query$GetMessages$driver$currentOrders$rider? rider;

  final Query$GetMessages$driver$currentOrders$driver? driver;

  final List<Query$GetMessages$driver$currentOrders$conversations>
      conversations;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = l$id;
    final l$rider = rider;
    _resultData['rider'] = l$rider?.toJson();
    final l$driver = driver;
    _resultData['driver'] = l$driver?.toJson();
    final l$conversations = conversations;
    _resultData['conversations'] =
        l$conversations.map((e) => e.toJson()).toList();
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$rider = rider;
    final l$driver = driver;
    final l$conversations = conversations;
    return Object.hashAll([
      l$id,
      l$rider,
      l$driver,
      Object.hashAll(l$conversations.map((v) => v)),
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$GetMessages$driver$currentOrders) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
      return false;
    }
    final l$rider = rider;
    final lOther$rider = other.rider;
    if (l$rider != lOther$rider) {
      return false;
    }
    final l$driver = driver;
    final lOther$driver = other.driver;
    if (l$driver != lOther$driver) {
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

extension UtilityExtension$Query$GetMessages$driver$currentOrders
    on Query$GetMessages$driver$currentOrders {
  CopyWith$Query$GetMessages$driver$currentOrders<
          Query$GetMessages$driver$currentOrders>
      get copyWith => CopyWith$Query$GetMessages$driver$currentOrders(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$GetMessages$driver$currentOrders<TRes> {
  factory CopyWith$Query$GetMessages$driver$currentOrders(
    Query$GetMessages$driver$currentOrders instance,
    TRes Function(Query$GetMessages$driver$currentOrders) then,
  ) = _CopyWithImpl$Query$GetMessages$driver$currentOrders;

  factory CopyWith$Query$GetMessages$driver$currentOrders.stub(TRes res) =
      _CopyWithStubImpl$Query$GetMessages$driver$currentOrders;

  TRes call({
    String? id,
    Query$GetMessages$driver$currentOrders$rider? rider,
    Query$GetMessages$driver$currentOrders$driver? driver,
    List<Query$GetMessages$driver$currentOrders$conversations>? conversations,
  });
  CopyWith$Query$GetMessages$driver$currentOrders$rider<TRes> get rider;
  CopyWith$Query$GetMessages$driver$currentOrders$driver<TRes> get driver;
  TRes conversations(
      Iterable<Query$GetMessages$driver$currentOrders$conversations> Function(
              Iterable<
                  CopyWith$Query$GetMessages$driver$currentOrders$conversations<
                      Query$GetMessages$driver$currentOrders$conversations>>)
          _fn);
}

class _CopyWithImpl$Query$GetMessages$driver$currentOrders<TRes>
    implements CopyWith$Query$GetMessages$driver$currentOrders<TRes> {
  _CopyWithImpl$Query$GetMessages$driver$currentOrders(
    this._instance,
    this._then,
  );

  final Query$GetMessages$driver$currentOrders _instance;

  final TRes Function(Query$GetMessages$driver$currentOrders) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? rider = _undefined,
    Object? driver = _undefined,
    Object? conversations = _undefined,
  }) =>
      _then(Query$GetMessages$driver$currentOrders(
        id: id == _undefined || id == null ? _instance.id : (id as String),
        rider: rider == _undefined
            ? _instance.rider
            : (rider as Query$GetMessages$driver$currentOrders$rider?),
        driver: driver == _undefined
            ? _instance.driver
            : (driver as Query$GetMessages$driver$currentOrders$driver?),
        conversations: conversations == _undefined || conversations == null
            ? _instance.conversations
            : (conversations
                as List<Query$GetMessages$driver$currentOrders$conversations>),
      ));
  CopyWith$Query$GetMessages$driver$currentOrders$rider<TRes> get rider {
    final local$rider = _instance.rider;
    return local$rider == null
        ? CopyWith$Query$GetMessages$driver$currentOrders$rider.stub(
            _then(_instance))
        : CopyWith$Query$GetMessages$driver$currentOrders$rider(
            local$rider, (e) => call(rider: e));
  }

  CopyWith$Query$GetMessages$driver$currentOrders$driver<TRes> get driver {
    final local$driver = _instance.driver;
    return local$driver == null
        ? CopyWith$Query$GetMessages$driver$currentOrders$driver.stub(
            _then(_instance))
        : CopyWith$Query$GetMessages$driver$currentOrders$driver(
            local$driver, (e) => call(driver: e));
  }

  TRes conversations(
          Iterable<Query$GetMessages$driver$currentOrders$conversations> Function(
                  Iterable<
                      CopyWith$Query$GetMessages$driver$currentOrders$conversations<
                          Query$GetMessages$driver$currentOrders$conversations>>)
              _fn) =>
      call(
          conversations: _fn(_instance.conversations.map((e) =>
              CopyWith$Query$GetMessages$driver$currentOrders$conversations(
                e,
                (i) => i,
              ))).toList());
}

class _CopyWithStubImpl$Query$GetMessages$driver$currentOrders<TRes>
    implements CopyWith$Query$GetMessages$driver$currentOrders<TRes> {
  _CopyWithStubImpl$Query$GetMessages$driver$currentOrders(this._res);

  TRes _res;

  call({
    String? id,
    Query$GetMessages$driver$currentOrders$rider? rider,
    Query$GetMessages$driver$currentOrders$driver? driver,
    List<Query$GetMessages$driver$currentOrders$conversations>? conversations,
  }) =>
      _res;
  CopyWith$Query$GetMessages$driver$currentOrders$rider<TRes> get rider =>
      CopyWith$Query$GetMessages$driver$currentOrders$rider.stub(_res);
  CopyWith$Query$GetMessages$driver$currentOrders$driver<TRes> get driver =>
      CopyWith$Query$GetMessages$driver$currentOrders$driver.stub(_res);
  conversations(_fn) => _res;
}

class Query$GetMessages$driver$currentOrders$rider
    implements Fragment$ChatRider {
  Query$GetMessages$driver$currentOrders$rider({
    required this.id,
    this.firstName,
    this.lastName,
    this.media,
    required this.mobileNumber,
  });

  factory Query$GetMessages$driver$currentOrders$rider.fromJson(
      Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$firstName = json['firstName'];
    final l$lastName = json['lastName'];
    final l$media = json['media'];
    final l$mobileNumber = json['mobileNumber'];
    return Query$GetMessages$driver$currentOrders$rider(
      id: (l$id as String),
      firstName: (l$firstName as String?),
      lastName: (l$lastName as String?),
      media: l$media == null
          ? null
          : Query$GetMessages$driver$currentOrders$rider$media.fromJson(
              (l$media as Map<String, dynamic>)),
      mobileNumber: (l$mobileNumber as String),
    );
  }

  final String id;

  final String? firstName;

  final String? lastName;

  final Query$GetMessages$driver$currentOrders$rider$media? media;

  final String mobileNumber;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = l$id;
    final l$firstName = firstName;
    _resultData['firstName'] = l$firstName;
    final l$lastName = lastName;
    _resultData['lastName'] = l$lastName;
    final l$media = media;
    _resultData['media'] = l$media?.toJson();
    final l$mobileNumber = mobileNumber;
    _resultData['mobileNumber'] = l$mobileNumber;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$firstName = firstName;
    final l$lastName = lastName;
    final l$media = media;
    final l$mobileNumber = mobileNumber;
    return Object.hashAll([
      l$id,
      l$firstName,
      l$lastName,
      l$media,
      l$mobileNumber,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$GetMessages$driver$currentOrders$rider) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
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
    final l$mobileNumber = mobileNumber;
    final lOther$mobileNumber = other.mobileNumber;
    if (l$mobileNumber != lOther$mobileNumber) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Query$GetMessages$driver$currentOrders$rider
    on Query$GetMessages$driver$currentOrders$rider {
  CopyWith$Query$GetMessages$driver$currentOrders$rider<
          Query$GetMessages$driver$currentOrders$rider>
      get copyWith => CopyWith$Query$GetMessages$driver$currentOrders$rider(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$GetMessages$driver$currentOrders$rider<TRes> {
  factory CopyWith$Query$GetMessages$driver$currentOrders$rider(
    Query$GetMessages$driver$currentOrders$rider instance,
    TRes Function(Query$GetMessages$driver$currentOrders$rider) then,
  ) = _CopyWithImpl$Query$GetMessages$driver$currentOrders$rider;

  factory CopyWith$Query$GetMessages$driver$currentOrders$rider.stub(TRes res) =
      _CopyWithStubImpl$Query$GetMessages$driver$currentOrders$rider;

  TRes call({
    String? id,
    String? firstName,
    String? lastName,
    Query$GetMessages$driver$currentOrders$rider$media? media,
    String? mobileNumber,
  });
  CopyWith$Query$GetMessages$driver$currentOrders$rider$media<TRes> get media;
}

class _CopyWithImpl$Query$GetMessages$driver$currentOrders$rider<TRes>
    implements CopyWith$Query$GetMessages$driver$currentOrders$rider<TRes> {
  _CopyWithImpl$Query$GetMessages$driver$currentOrders$rider(
    this._instance,
    this._then,
  );

  final Query$GetMessages$driver$currentOrders$rider _instance;

  final TRes Function(Query$GetMessages$driver$currentOrders$rider) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? firstName = _undefined,
    Object? lastName = _undefined,
    Object? media = _undefined,
    Object? mobileNumber = _undefined,
  }) =>
      _then(Query$GetMessages$driver$currentOrders$rider(
        id: id == _undefined || id == null ? _instance.id : (id as String),
        firstName: firstName == _undefined
            ? _instance.firstName
            : (firstName as String?),
        lastName:
            lastName == _undefined ? _instance.lastName : (lastName as String?),
        media: media == _undefined
            ? _instance.media
            : (media as Query$GetMessages$driver$currentOrders$rider$media?),
        mobileNumber: mobileNumber == _undefined || mobileNumber == null
            ? _instance.mobileNumber
            : (mobileNumber as String),
      ));
  CopyWith$Query$GetMessages$driver$currentOrders$rider$media<TRes> get media {
    final local$media = _instance.media;
    return local$media == null
        ? CopyWith$Query$GetMessages$driver$currentOrders$rider$media.stub(
            _then(_instance))
        : CopyWith$Query$GetMessages$driver$currentOrders$rider$media(
            local$media, (e) => call(media: e));
  }
}

class _CopyWithStubImpl$Query$GetMessages$driver$currentOrders$rider<TRes>
    implements CopyWith$Query$GetMessages$driver$currentOrders$rider<TRes> {
  _CopyWithStubImpl$Query$GetMessages$driver$currentOrders$rider(this._res);

  TRes _res;

  call({
    String? id,
    String? firstName,
    String? lastName,
    Query$GetMessages$driver$currentOrders$rider$media? media,
    String? mobileNumber,
  }) =>
      _res;
  CopyWith$Query$GetMessages$driver$currentOrders$rider$media<TRes> get media =>
      CopyWith$Query$GetMessages$driver$currentOrders$rider$media.stub(_res);
}

class Query$GetMessages$driver$currentOrders$rider$media
    implements Fragment$ChatRider$media {
  Query$GetMessages$driver$currentOrders$rider$media({required this.address});

  factory Query$GetMessages$driver$currentOrders$rider$media.fromJson(
      Map<String, dynamic> json) {
    final l$address = json['address'];
    return Query$GetMessages$driver$currentOrders$rider$media(
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
    if (!(other is Query$GetMessages$driver$currentOrders$rider$media) ||
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

extension UtilityExtension$Query$GetMessages$driver$currentOrders$rider$media
    on Query$GetMessages$driver$currentOrders$rider$media {
  CopyWith$Query$GetMessages$driver$currentOrders$rider$media<
          Query$GetMessages$driver$currentOrders$rider$media>
      get copyWith =>
          CopyWith$Query$GetMessages$driver$currentOrders$rider$media(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$GetMessages$driver$currentOrders$rider$media<
    TRes> {
  factory CopyWith$Query$GetMessages$driver$currentOrders$rider$media(
    Query$GetMessages$driver$currentOrders$rider$media instance,
    TRes Function(Query$GetMessages$driver$currentOrders$rider$media) then,
  ) = _CopyWithImpl$Query$GetMessages$driver$currentOrders$rider$media;

  factory CopyWith$Query$GetMessages$driver$currentOrders$rider$media.stub(
          TRes res) =
      _CopyWithStubImpl$Query$GetMessages$driver$currentOrders$rider$media;

  TRes call({String? address});
}

class _CopyWithImpl$Query$GetMessages$driver$currentOrders$rider$media<TRes>
    implements
        CopyWith$Query$GetMessages$driver$currentOrders$rider$media<TRes> {
  _CopyWithImpl$Query$GetMessages$driver$currentOrders$rider$media(
    this._instance,
    this._then,
  );

  final Query$GetMessages$driver$currentOrders$rider$media _instance;

  final TRes Function(Query$GetMessages$driver$currentOrders$rider$media) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? address = _undefined}) =>
      _then(Query$GetMessages$driver$currentOrders$rider$media(
          address: address == _undefined || address == null
              ? _instance.address
              : (address as String)));
}

class _CopyWithStubImpl$Query$GetMessages$driver$currentOrders$rider$media<TRes>
    implements
        CopyWith$Query$GetMessages$driver$currentOrders$rider$media<TRes> {
  _CopyWithStubImpl$Query$GetMessages$driver$currentOrders$rider$media(
      this._res);

  TRes _res;

  call({String? address}) => _res;
}

class Query$GetMessages$driver$currentOrders$driver
    implements Fragment$ChatDriver {
  Query$GetMessages$driver$currentOrders$driver({
    required this.id,
    this.firstName,
    this.lastName,
    this.media,
  });

  factory Query$GetMessages$driver$currentOrders$driver.fromJson(
      Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$firstName = json['firstName'];
    final l$lastName = json['lastName'];
    final l$media = json['media'];
    return Query$GetMessages$driver$currentOrders$driver(
      id: (l$id as String),
      firstName: (l$firstName as String?),
      lastName: (l$lastName as String?),
      media: l$media == null
          ? null
          : Query$GetMessages$driver$currentOrders$driver$media.fromJson(
              (l$media as Map<String, dynamic>)),
    );
  }

  final String id;

  final String? firstName;

  final String? lastName;

  final Query$GetMessages$driver$currentOrders$driver$media? media;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = l$id;
    final l$firstName = firstName;
    _resultData['firstName'] = l$firstName;
    final l$lastName = lastName;
    _resultData['lastName'] = l$lastName;
    final l$media = media;
    _resultData['media'] = l$media?.toJson();
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$firstName = firstName;
    final l$lastName = lastName;
    final l$media = media;
    return Object.hashAll([
      l$id,
      l$firstName,
      l$lastName,
      l$media,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$GetMessages$driver$currentOrders$driver) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
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
    return true;
  }
}

extension UtilityExtension$Query$GetMessages$driver$currentOrders$driver
    on Query$GetMessages$driver$currentOrders$driver {
  CopyWith$Query$GetMessages$driver$currentOrders$driver<
          Query$GetMessages$driver$currentOrders$driver>
      get copyWith => CopyWith$Query$GetMessages$driver$currentOrders$driver(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$GetMessages$driver$currentOrders$driver<TRes> {
  factory CopyWith$Query$GetMessages$driver$currentOrders$driver(
    Query$GetMessages$driver$currentOrders$driver instance,
    TRes Function(Query$GetMessages$driver$currentOrders$driver) then,
  ) = _CopyWithImpl$Query$GetMessages$driver$currentOrders$driver;

  factory CopyWith$Query$GetMessages$driver$currentOrders$driver.stub(
          TRes res) =
      _CopyWithStubImpl$Query$GetMessages$driver$currentOrders$driver;

  TRes call({
    String? id,
    String? firstName,
    String? lastName,
    Query$GetMessages$driver$currentOrders$driver$media? media,
  });
  CopyWith$Query$GetMessages$driver$currentOrders$driver$media<TRes> get media;
}

class _CopyWithImpl$Query$GetMessages$driver$currentOrders$driver<TRes>
    implements CopyWith$Query$GetMessages$driver$currentOrders$driver<TRes> {
  _CopyWithImpl$Query$GetMessages$driver$currentOrders$driver(
    this._instance,
    this._then,
  );

  final Query$GetMessages$driver$currentOrders$driver _instance;

  final TRes Function(Query$GetMessages$driver$currentOrders$driver) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? firstName = _undefined,
    Object? lastName = _undefined,
    Object? media = _undefined,
  }) =>
      _then(Query$GetMessages$driver$currentOrders$driver(
        id: id == _undefined || id == null ? _instance.id : (id as String),
        firstName: firstName == _undefined
            ? _instance.firstName
            : (firstName as String?),
        lastName:
            lastName == _undefined ? _instance.lastName : (lastName as String?),
        media: media == _undefined
            ? _instance.media
            : (media as Query$GetMessages$driver$currentOrders$driver$media?),
      ));
  CopyWith$Query$GetMessages$driver$currentOrders$driver$media<TRes> get media {
    final local$media = _instance.media;
    return local$media == null
        ? CopyWith$Query$GetMessages$driver$currentOrders$driver$media.stub(
            _then(_instance))
        : CopyWith$Query$GetMessages$driver$currentOrders$driver$media(
            local$media, (e) => call(media: e));
  }
}

class _CopyWithStubImpl$Query$GetMessages$driver$currentOrders$driver<TRes>
    implements CopyWith$Query$GetMessages$driver$currentOrders$driver<TRes> {
  _CopyWithStubImpl$Query$GetMessages$driver$currentOrders$driver(this._res);

  TRes _res;

  call({
    String? id,
    String? firstName,
    String? lastName,
    Query$GetMessages$driver$currentOrders$driver$media? media,
  }) =>
      _res;
  CopyWith$Query$GetMessages$driver$currentOrders$driver$media<TRes>
      get media =>
          CopyWith$Query$GetMessages$driver$currentOrders$driver$media.stub(
              _res);
}

class Query$GetMessages$driver$currentOrders$driver$media
    implements Fragment$ChatDriver$media {
  Query$GetMessages$driver$currentOrders$driver$media({required this.address});

  factory Query$GetMessages$driver$currentOrders$driver$media.fromJson(
      Map<String, dynamic> json) {
    final l$address = json['address'];
    return Query$GetMessages$driver$currentOrders$driver$media(
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
    if (!(other is Query$GetMessages$driver$currentOrders$driver$media) ||
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

extension UtilityExtension$Query$GetMessages$driver$currentOrders$driver$media
    on Query$GetMessages$driver$currentOrders$driver$media {
  CopyWith$Query$GetMessages$driver$currentOrders$driver$media<
          Query$GetMessages$driver$currentOrders$driver$media>
      get copyWith =>
          CopyWith$Query$GetMessages$driver$currentOrders$driver$media(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$GetMessages$driver$currentOrders$driver$media<
    TRes> {
  factory CopyWith$Query$GetMessages$driver$currentOrders$driver$media(
    Query$GetMessages$driver$currentOrders$driver$media instance,
    TRes Function(Query$GetMessages$driver$currentOrders$driver$media) then,
  ) = _CopyWithImpl$Query$GetMessages$driver$currentOrders$driver$media;

  factory CopyWith$Query$GetMessages$driver$currentOrders$driver$media.stub(
          TRes res) =
      _CopyWithStubImpl$Query$GetMessages$driver$currentOrders$driver$media;

  TRes call({String? address});
}

class _CopyWithImpl$Query$GetMessages$driver$currentOrders$driver$media<TRes>
    implements
        CopyWith$Query$GetMessages$driver$currentOrders$driver$media<TRes> {
  _CopyWithImpl$Query$GetMessages$driver$currentOrders$driver$media(
    this._instance,
    this._then,
  );

  final Query$GetMessages$driver$currentOrders$driver$media _instance;

  final TRes Function(Query$GetMessages$driver$currentOrders$driver$media)
      _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? address = _undefined}) =>
      _then(Query$GetMessages$driver$currentOrders$driver$media(
          address: address == _undefined || address == null
              ? _instance.address
              : (address as String)));
}

class _CopyWithStubImpl$Query$GetMessages$driver$currentOrders$driver$media<
        TRes>
    implements
        CopyWith$Query$GetMessages$driver$currentOrders$driver$media<TRes> {
  _CopyWithStubImpl$Query$GetMessages$driver$currentOrders$driver$media(
      this._res);

  TRes _res;

  call({String? address}) => _res;
}

class Query$GetMessages$driver$currentOrders$conversations
    implements Fragment$ChatMessage {
  Query$GetMessages$driver$currentOrders$conversations({
    required this.id,
    required this.content,
    required this.sentByDriver,
  });

  factory Query$GetMessages$driver$currentOrders$conversations.fromJson(
      Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$content = json['content'];
    final l$sentByDriver = json['sentByDriver'];
    return Query$GetMessages$driver$currentOrders$conversations(
      id: (l$id as String),
      content: (l$content as String),
      sentByDriver: (l$sentByDriver as bool),
    );
  }

  final String id;

  final String content;

  final bool sentByDriver;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = l$id;
    final l$content = content;
    _resultData['content'] = l$content;
    final l$sentByDriver = sentByDriver;
    _resultData['sentByDriver'] = l$sentByDriver;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$content = content;
    final l$sentByDriver = sentByDriver;
    return Object.hashAll([
      l$id,
      l$content,
      l$sentByDriver,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$GetMessages$driver$currentOrders$conversations) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
      return false;
    }
    final l$content = content;
    final lOther$content = other.content;
    if (l$content != lOther$content) {
      return false;
    }
    final l$sentByDriver = sentByDriver;
    final lOther$sentByDriver = other.sentByDriver;
    if (l$sentByDriver != lOther$sentByDriver) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Query$GetMessages$driver$currentOrders$conversations
    on Query$GetMessages$driver$currentOrders$conversations {
  CopyWith$Query$GetMessages$driver$currentOrders$conversations<
          Query$GetMessages$driver$currentOrders$conversations>
      get copyWith =>
          CopyWith$Query$GetMessages$driver$currentOrders$conversations(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$GetMessages$driver$currentOrders$conversations<
    TRes> {
  factory CopyWith$Query$GetMessages$driver$currentOrders$conversations(
    Query$GetMessages$driver$currentOrders$conversations instance,
    TRes Function(Query$GetMessages$driver$currentOrders$conversations) then,
  ) = _CopyWithImpl$Query$GetMessages$driver$currentOrders$conversations;

  factory CopyWith$Query$GetMessages$driver$currentOrders$conversations.stub(
          TRes res) =
      _CopyWithStubImpl$Query$GetMessages$driver$currentOrders$conversations;

  TRes call({
    String? id,
    String? content,
    bool? sentByDriver,
  });
}

class _CopyWithImpl$Query$GetMessages$driver$currentOrders$conversations<TRes>
    implements
        CopyWith$Query$GetMessages$driver$currentOrders$conversations<TRes> {
  _CopyWithImpl$Query$GetMessages$driver$currentOrders$conversations(
    this._instance,
    this._then,
  );

  final Query$GetMessages$driver$currentOrders$conversations _instance;

  final TRes Function(Query$GetMessages$driver$currentOrders$conversations)
      _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? content = _undefined,
    Object? sentByDriver = _undefined,
  }) =>
      _then(Query$GetMessages$driver$currentOrders$conversations(
        id: id == _undefined || id == null ? _instance.id : (id as String),
        content: content == _undefined || content == null
            ? _instance.content
            : (content as String),
        sentByDriver: sentByDriver == _undefined || sentByDriver == null
            ? _instance.sentByDriver
            : (sentByDriver as bool),
      ));
}

class _CopyWithStubImpl$Query$GetMessages$driver$currentOrders$conversations<
        TRes>
    implements
        CopyWith$Query$GetMessages$driver$currentOrders$conversations<TRes> {
  _CopyWithStubImpl$Query$GetMessages$driver$currentOrders$conversations(
      this._res);

  TRes _res;

  call({
    String? id,
    String? content,
    bool? sentByDriver,
  }) =>
      _res;
}

class Variables$Mutation$SendMessage {
  factory Variables$Mutation$SendMessage({
    required String requestId,
    required String content,
  }) =>
      Variables$Mutation$SendMessage._({
        r'requestId': requestId,
        r'content': content,
      });

  Variables$Mutation$SendMessage._(this._$data);

  factory Variables$Mutation$SendMessage.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$requestId = data['requestId'];
    result$data['requestId'] = (l$requestId as String);
    final l$content = data['content'];
    result$data['content'] = (l$content as String);
    return Variables$Mutation$SendMessage._(result$data);
  }

  Map<String, dynamic> _$data;

  String get requestId => (_$data['requestId'] as String);
  String get content => (_$data['content'] as String);
  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$requestId = requestId;
    result$data['requestId'] = l$requestId;
    final l$content = content;
    result$data['content'] = l$content;
    return result$data;
  }

  CopyWith$Variables$Mutation$SendMessage<Variables$Mutation$SendMessage>
      get copyWith => CopyWith$Variables$Mutation$SendMessage(
            this,
            (i) => i,
          );
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Variables$Mutation$SendMessage) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$requestId = requestId;
    final lOther$requestId = other.requestId;
    if (l$requestId != lOther$requestId) {
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
    final l$requestId = requestId;
    final l$content = content;
    return Object.hashAll([
      l$requestId,
      l$content,
    ]);
  }
}

abstract class CopyWith$Variables$Mutation$SendMessage<TRes> {
  factory CopyWith$Variables$Mutation$SendMessage(
    Variables$Mutation$SendMessage instance,
    TRes Function(Variables$Mutation$SendMessage) then,
  ) = _CopyWithImpl$Variables$Mutation$SendMessage;

  factory CopyWith$Variables$Mutation$SendMessage.stub(TRes res) =
      _CopyWithStubImpl$Variables$Mutation$SendMessage;

  TRes call({
    String? requestId,
    String? content,
  });
}

class _CopyWithImpl$Variables$Mutation$SendMessage<TRes>
    implements CopyWith$Variables$Mutation$SendMessage<TRes> {
  _CopyWithImpl$Variables$Mutation$SendMessage(
    this._instance,
    this._then,
  );

  final Variables$Mutation$SendMessage _instance;

  final TRes Function(Variables$Mutation$SendMessage) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? requestId = _undefined,
    Object? content = _undefined,
  }) =>
      _then(Variables$Mutation$SendMessage._({
        ..._instance._$data,
        if (requestId != _undefined && requestId != null)
          'requestId': (requestId as String),
        if (content != _undefined && content != null)
          'content': (content as String),
      }));
}

class _CopyWithStubImpl$Variables$Mutation$SendMessage<TRes>
    implements CopyWith$Variables$Mutation$SendMessage<TRes> {
  _CopyWithStubImpl$Variables$Mutation$SendMessage(this._res);

  TRes _res;

  call({
    String? requestId,
    String? content,
  }) =>
      _res;
}

class Mutation$SendMessage {
  Mutation$SendMessage({required this.createOneOrderMessage});

  factory Mutation$SendMessage.fromJson(Map<String, dynamic> json) {
    final l$createOneOrderMessage = json['createOneOrderMessage'];
    return Mutation$SendMessage(
        createOneOrderMessage:
            Mutation$SendMessage$createOneOrderMessage.fromJson(
                (l$createOneOrderMessage as Map<String, dynamic>)));
  }

  final Mutation$SendMessage$createOneOrderMessage createOneOrderMessage;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$createOneOrderMessage = createOneOrderMessage;
    _resultData['createOneOrderMessage'] = l$createOneOrderMessage.toJson();
    return _resultData;
  }

  @override
  int get hashCode {
    final l$createOneOrderMessage = createOneOrderMessage;
    return Object.hashAll([l$createOneOrderMessage]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Mutation$SendMessage) || runtimeType != other.runtimeType) {
      return false;
    }
    final l$createOneOrderMessage = createOneOrderMessage;
    final lOther$createOneOrderMessage = other.createOneOrderMessage;
    if (l$createOneOrderMessage != lOther$createOneOrderMessage) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Mutation$SendMessage on Mutation$SendMessage {
  CopyWith$Mutation$SendMessage<Mutation$SendMessage> get copyWith =>
      CopyWith$Mutation$SendMessage(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$SendMessage<TRes> {
  factory CopyWith$Mutation$SendMessage(
    Mutation$SendMessage instance,
    TRes Function(Mutation$SendMessage) then,
  ) = _CopyWithImpl$Mutation$SendMessage;

  factory CopyWith$Mutation$SendMessage.stub(TRes res) =
      _CopyWithStubImpl$Mutation$SendMessage;

  TRes call(
      {Mutation$SendMessage$createOneOrderMessage? createOneOrderMessage});
  CopyWith$Mutation$SendMessage$createOneOrderMessage<TRes>
      get createOneOrderMessage;
}

class _CopyWithImpl$Mutation$SendMessage<TRes>
    implements CopyWith$Mutation$SendMessage<TRes> {
  _CopyWithImpl$Mutation$SendMessage(
    this._instance,
    this._then,
  );

  final Mutation$SendMessage _instance;

  final TRes Function(Mutation$SendMessage) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? createOneOrderMessage = _undefined}) =>
      _then(Mutation$SendMessage(
          createOneOrderMessage: createOneOrderMessage == _undefined ||
                  createOneOrderMessage == null
              ? _instance.createOneOrderMessage
              : (createOneOrderMessage
                  as Mutation$SendMessage$createOneOrderMessage)));
  CopyWith$Mutation$SendMessage$createOneOrderMessage<TRes>
      get createOneOrderMessage {
    final local$createOneOrderMessage = _instance.createOneOrderMessage;
    return CopyWith$Mutation$SendMessage$createOneOrderMessage(
        local$createOneOrderMessage, (e) => call(createOneOrderMessage: e));
  }
}

class _CopyWithStubImpl$Mutation$SendMessage<TRes>
    implements CopyWith$Mutation$SendMessage<TRes> {
  _CopyWithStubImpl$Mutation$SendMessage(this._res);

  TRes _res;

  call({Mutation$SendMessage$createOneOrderMessage? createOneOrderMessage}) =>
      _res;
  CopyWith$Mutation$SendMessage$createOneOrderMessage<TRes>
      get createOneOrderMessage =>
          CopyWith$Mutation$SendMessage$createOneOrderMessage.stub(_res);
}

const documentNodeMutationSendMessage = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.mutation,
    name: NameNode(value: 'SendMessage'),
    variableDefinitions: [
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'requestId')),
        type: NamedTypeNode(
          name: NameNode(value: 'ID'),
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
        name: NameNode(value: 'createOneOrderMessage'),
        alias: null,
        arguments: [
          ArgumentNode(
            name: NameNode(value: 'input'),
            value: ObjectValueNode(fields: [
              ObjectFieldNode(
                name: NameNode(value: 'orderMessage'),
                value: ObjectValueNode(fields: [
                  ObjectFieldNode(
                    name: NameNode(value: 'requestId'),
                    value: VariableNode(name: NameNode(value: 'requestId')),
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
          FragmentSpreadNode(
            name: NameNode(value: 'ChatMessage'),
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
            name: NameNode(value: 'content'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'sentByDriver'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
        ]),
      )
    ]),
  ),
  fragmentDefinitionChatMessage,
]);
Mutation$SendMessage _parserFn$Mutation$SendMessage(
        Map<String, dynamic> data) =>
    Mutation$SendMessage.fromJson(data);
typedef OnMutationCompleted$Mutation$SendMessage = FutureOr<void> Function(
  Map<String, dynamic>?,
  Mutation$SendMessage?,
);

class Options$Mutation$SendMessage
    extends graphql.MutationOptions<Mutation$SendMessage> {
  Options$Mutation$SendMessage({
    String? operationName,
    required Variables$Mutation$SendMessage variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Mutation$SendMessage? typedOptimisticResult,
    graphql.Context? context,
    OnMutationCompleted$Mutation$SendMessage? onCompleted,
    graphql.OnMutationUpdate<Mutation$SendMessage>? update,
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
                    data == null ? null : _parserFn$Mutation$SendMessage(data),
                  ),
          update: update,
          onError: onError,
          document: documentNodeMutationSendMessage,
          parserFn: _parserFn$Mutation$SendMessage,
        );

  final OnMutationCompleted$Mutation$SendMessage? onCompletedWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onCompleted == null
            ? super.properties
            : super.properties.where((property) => property != onCompleted),
        onCompletedWithParsed,
      ];
}

class WatchOptions$Mutation$SendMessage
    extends graphql.WatchQueryOptions<Mutation$SendMessage> {
  WatchOptions$Mutation$SendMessage({
    String? operationName,
    required Variables$Mutation$SendMessage variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Mutation$SendMessage? typedOptimisticResult,
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
          document: documentNodeMutationSendMessage,
          pollInterval: pollInterval,
          eagerlyFetchResults: eagerlyFetchResults,
          carryForwardDataOnException: carryForwardDataOnException,
          fetchResults: fetchResults,
          parserFn: _parserFn$Mutation$SendMessage,
        );
}

extension ClientExtension$Mutation$SendMessage on graphql.GraphQLClient {
  Future<graphql.QueryResult<Mutation$SendMessage>> mutate$SendMessage(
          Options$Mutation$SendMessage options) async =>
      await this.mutate(options);
  graphql.ObservableQuery<Mutation$SendMessage> watchMutation$SendMessage(
          WatchOptions$Mutation$SendMessage options) =>
      this.watchMutation(options);
}

class Mutation$SendMessage$HookResult {
  Mutation$SendMessage$HookResult(
    this.runMutation,
    this.result,
  );

  final RunMutation$Mutation$SendMessage runMutation;

  final graphql.QueryResult<Mutation$SendMessage> result;
}

Mutation$SendMessage$HookResult useMutation$SendMessage(
    [WidgetOptions$Mutation$SendMessage? options]) {
  final result = graphql_flutter
      .useMutation(options ?? WidgetOptions$Mutation$SendMessage());
  return Mutation$SendMessage$HookResult(
    (variables, {optimisticResult, typedOptimisticResult}) =>
        result.runMutation(
      variables.toJson(),
      optimisticResult: optimisticResult ?? typedOptimisticResult?.toJson(),
    ),
    result.result,
  );
}

graphql.ObservableQuery<Mutation$SendMessage> useWatchMutation$SendMessage(
        WatchOptions$Mutation$SendMessage options) =>
    graphql_flutter.useWatchMutation(options);

class WidgetOptions$Mutation$SendMessage
    extends graphql.MutationOptions<Mutation$SendMessage> {
  WidgetOptions$Mutation$SendMessage({
    String? operationName,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Mutation$SendMessage? typedOptimisticResult,
    graphql.Context? context,
    OnMutationCompleted$Mutation$SendMessage? onCompleted,
    graphql.OnMutationUpdate<Mutation$SendMessage>? update,
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
                    data == null ? null : _parserFn$Mutation$SendMessage(data),
                  ),
          update: update,
          onError: onError,
          document: documentNodeMutationSendMessage,
          parserFn: _parserFn$Mutation$SendMessage,
        );

  final OnMutationCompleted$Mutation$SendMessage? onCompletedWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onCompleted == null
            ? super.properties
            : super.properties.where((property) => property != onCompleted),
        onCompletedWithParsed,
      ];
}

typedef RunMutation$Mutation$SendMessage
    = graphql.MultiSourceResult<Mutation$SendMessage> Function(
  Variables$Mutation$SendMessage, {
  Object? optimisticResult,
  Mutation$SendMessage? typedOptimisticResult,
});
typedef Builder$Mutation$SendMessage = widgets.Widget Function(
  RunMutation$Mutation$SendMessage,
  graphql.QueryResult<Mutation$SendMessage>?,
);

class Mutation$SendMessage$Widget
    extends graphql_flutter.Mutation<Mutation$SendMessage> {
  Mutation$SendMessage$Widget({
    widgets.Key? key,
    WidgetOptions$Mutation$SendMessage? options,
    required Builder$Mutation$SendMessage builder,
  }) : super(
          key: key,
          options: options ?? WidgetOptions$Mutation$SendMessage(),
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

class Mutation$SendMessage$createOneOrderMessage
    implements Fragment$ChatMessage {
  Mutation$SendMessage$createOneOrderMessage({
    required this.id,
    required this.content,
    required this.sentByDriver,
  });

  factory Mutation$SendMessage$createOneOrderMessage.fromJson(
      Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$content = json['content'];
    final l$sentByDriver = json['sentByDriver'];
    return Mutation$SendMessage$createOneOrderMessage(
      id: (l$id as String),
      content: (l$content as String),
      sentByDriver: (l$sentByDriver as bool),
    );
  }

  final String id;

  final String content;

  final bool sentByDriver;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = l$id;
    final l$content = content;
    _resultData['content'] = l$content;
    final l$sentByDriver = sentByDriver;
    _resultData['sentByDriver'] = l$sentByDriver;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$content = content;
    final l$sentByDriver = sentByDriver;
    return Object.hashAll([
      l$id,
      l$content,
      l$sentByDriver,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Mutation$SendMessage$createOneOrderMessage) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
      return false;
    }
    final l$content = content;
    final lOther$content = other.content;
    if (l$content != lOther$content) {
      return false;
    }
    final l$sentByDriver = sentByDriver;
    final lOther$sentByDriver = other.sentByDriver;
    if (l$sentByDriver != lOther$sentByDriver) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Mutation$SendMessage$createOneOrderMessage
    on Mutation$SendMessage$createOneOrderMessage {
  CopyWith$Mutation$SendMessage$createOneOrderMessage<
          Mutation$SendMessage$createOneOrderMessage>
      get copyWith => CopyWith$Mutation$SendMessage$createOneOrderMessage(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Mutation$SendMessage$createOneOrderMessage<TRes> {
  factory CopyWith$Mutation$SendMessage$createOneOrderMessage(
    Mutation$SendMessage$createOneOrderMessage instance,
    TRes Function(Mutation$SendMessage$createOneOrderMessage) then,
  ) = _CopyWithImpl$Mutation$SendMessage$createOneOrderMessage;

  factory CopyWith$Mutation$SendMessage$createOneOrderMessage.stub(TRes res) =
      _CopyWithStubImpl$Mutation$SendMessage$createOneOrderMessage;

  TRes call({
    String? id,
    String? content,
    bool? sentByDriver,
  });
}

class _CopyWithImpl$Mutation$SendMessage$createOneOrderMessage<TRes>
    implements CopyWith$Mutation$SendMessage$createOneOrderMessage<TRes> {
  _CopyWithImpl$Mutation$SendMessage$createOneOrderMessage(
    this._instance,
    this._then,
  );

  final Mutation$SendMessage$createOneOrderMessage _instance;

  final TRes Function(Mutation$SendMessage$createOneOrderMessage) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? content = _undefined,
    Object? sentByDriver = _undefined,
  }) =>
      _then(Mutation$SendMessage$createOneOrderMessage(
        id: id == _undefined || id == null ? _instance.id : (id as String),
        content: content == _undefined || content == null
            ? _instance.content
            : (content as String),
        sentByDriver: sentByDriver == _undefined || sentByDriver == null
            ? _instance.sentByDriver
            : (sentByDriver as bool),
      ));
}

class _CopyWithStubImpl$Mutation$SendMessage$createOneOrderMessage<TRes>
    implements CopyWith$Mutation$SendMessage$createOneOrderMessage<TRes> {
  _CopyWithStubImpl$Mutation$SendMessage$createOneOrderMessage(this._res);

  TRes _res;

  call({
    String? id,
    String? content,
    bool? sentByDriver,
  }) =>
      _res;
}

class Variables$Mutation$UpdateLastSeenMessagesAt {
  factory Variables$Mutation$UpdateLastSeenMessagesAt(
          {required String requestId}) =>
      Variables$Mutation$UpdateLastSeenMessagesAt._({
        r'requestId': requestId,
      });

  Variables$Mutation$UpdateLastSeenMessagesAt._(this._$data);

  factory Variables$Mutation$UpdateLastSeenMessagesAt.fromJson(
      Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$requestId = data['requestId'];
    result$data['requestId'] = (l$requestId as String);
    return Variables$Mutation$UpdateLastSeenMessagesAt._(result$data);
  }

  Map<String, dynamic> _$data;

  String get requestId => (_$data['requestId'] as String);
  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$requestId = requestId;
    result$data['requestId'] = l$requestId;
    return result$data;
  }

  CopyWith$Variables$Mutation$UpdateLastSeenMessagesAt<
          Variables$Mutation$UpdateLastSeenMessagesAt>
      get copyWith => CopyWith$Variables$Mutation$UpdateLastSeenMessagesAt(
            this,
            (i) => i,
          );
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Variables$Mutation$UpdateLastSeenMessagesAt) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$requestId = requestId;
    final lOther$requestId = other.requestId;
    if (l$requestId != lOther$requestId) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$requestId = requestId;
    return Object.hashAll([l$requestId]);
  }
}

abstract class CopyWith$Variables$Mutation$UpdateLastSeenMessagesAt<TRes> {
  factory CopyWith$Variables$Mutation$UpdateLastSeenMessagesAt(
    Variables$Mutation$UpdateLastSeenMessagesAt instance,
    TRes Function(Variables$Mutation$UpdateLastSeenMessagesAt) then,
  ) = _CopyWithImpl$Variables$Mutation$UpdateLastSeenMessagesAt;

  factory CopyWith$Variables$Mutation$UpdateLastSeenMessagesAt.stub(TRes res) =
      _CopyWithStubImpl$Variables$Mutation$UpdateLastSeenMessagesAt;

  TRes call({String? requestId});
}

class _CopyWithImpl$Variables$Mutation$UpdateLastSeenMessagesAt<TRes>
    implements CopyWith$Variables$Mutation$UpdateLastSeenMessagesAt<TRes> {
  _CopyWithImpl$Variables$Mutation$UpdateLastSeenMessagesAt(
    this._instance,
    this._then,
  );

  final Variables$Mutation$UpdateLastSeenMessagesAt _instance;

  final TRes Function(Variables$Mutation$UpdateLastSeenMessagesAt) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? requestId = _undefined}) =>
      _then(Variables$Mutation$UpdateLastSeenMessagesAt._({
        ..._instance._$data,
        if (requestId != _undefined && requestId != null)
          'requestId': (requestId as String),
      }));
}

class _CopyWithStubImpl$Variables$Mutation$UpdateLastSeenMessagesAt<TRes>
    implements CopyWith$Variables$Mutation$UpdateLastSeenMessagesAt<TRes> {
  _CopyWithStubImpl$Variables$Mutation$UpdateLastSeenMessagesAt(this._res);

  TRes _res;

  call({String? requestId}) => _res;
}

class Mutation$UpdateLastSeenMessagesAt {
  Mutation$UpdateLastSeenMessagesAt({required this.updateLastSeenMessagesAt});

  factory Mutation$UpdateLastSeenMessagesAt.fromJson(
      Map<String, dynamic> json) {
    final l$updateLastSeenMessagesAt = json['updateLastSeenMessagesAt'];
    return Mutation$UpdateLastSeenMessagesAt(
        updateLastSeenMessagesAt: (l$updateLastSeenMessagesAt as bool));
  }

  final bool updateLastSeenMessagesAt;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$updateLastSeenMessagesAt = updateLastSeenMessagesAt;
    _resultData['updateLastSeenMessagesAt'] = l$updateLastSeenMessagesAt;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$updateLastSeenMessagesAt = updateLastSeenMessagesAt;
    return Object.hashAll([l$updateLastSeenMessagesAt]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Mutation$UpdateLastSeenMessagesAt) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$updateLastSeenMessagesAt = updateLastSeenMessagesAt;
    final lOther$updateLastSeenMessagesAt = other.updateLastSeenMessagesAt;
    if (l$updateLastSeenMessagesAt != lOther$updateLastSeenMessagesAt) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Mutation$UpdateLastSeenMessagesAt
    on Mutation$UpdateLastSeenMessagesAt {
  CopyWith$Mutation$UpdateLastSeenMessagesAt<Mutation$UpdateLastSeenMessagesAt>
      get copyWith => CopyWith$Mutation$UpdateLastSeenMessagesAt(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Mutation$UpdateLastSeenMessagesAt<TRes> {
  factory CopyWith$Mutation$UpdateLastSeenMessagesAt(
    Mutation$UpdateLastSeenMessagesAt instance,
    TRes Function(Mutation$UpdateLastSeenMessagesAt) then,
  ) = _CopyWithImpl$Mutation$UpdateLastSeenMessagesAt;

  factory CopyWith$Mutation$UpdateLastSeenMessagesAt.stub(TRes res) =
      _CopyWithStubImpl$Mutation$UpdateLastSeenMessagesAt;

  TRes call({bool? updateLastSeenMessagesAt});
}

class _CopyWithImpl$Mutation$UpdateLastSeenMessagesAt<TRes>
    implements CopyWith$Mutation$UpdateLastSeenMessagesAt<TRes> {
  _CopyWithImpl$Mutation$UpdateLastSeenMessagesAt(
    this._instance,
    this._then,
  );

  final Mutation$UpdateLastSeenMessagesAt _instance;

  final TRes Function(Mutation$UpdateLastSeenMessagesAt) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? updateLastSeenMessagesAt = _undefined}) =>
      _then(Mutation$UpdateLastSeenMessagesAt(
          updateLastSeenMessagesAt: updateLastSeenMessagesAt == _undefined ||
                  updateLastSeenMessagesAt == null
              ? _instance.updateLastSeenMessagesAt
              : (updateLastSeenMessagesAt as bool)));
}

class _CopyWithStubImpl$Mutation$UpdateLastSeenMessagesAt<TRes>
    implements CopyWith$Mutation$UpdateLastSeenMessagesAt<TRes> {
  _CopyWithStubImpl$Mutation$UpdateLastSeenMessagesAt(this._res);

  TRes _res;

  call({bool? updateLastSeenMessagesAt}) => _res;
}

const documentNodeMutationUpdateLastSeenMessagesAt = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.mutation,
    name: NameNode(value: 'UpdateLastSeenMessagesAt'),
    variableDefinitions: [
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'requestId')),
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
        name: NameNode(value: 'updateLastSeenMessagesAt'),
        alias: null,
        arguments: [
          ArgumentNode(
            name: NameNode(value: 'orderId'),
            value: VariableNode(name: NameNode(value: 'requestId')),
          )
        ],
        directives: [],
        selectionSet: null,
      )
    ]),
  ),
]);
Mutation$UpdateLastSeenMessagesAt _parserFn$Mutation$UpdateLastSeenMessagesAt(
        Map<String, dynamic> data) =>
    Mutation$UpdateLastSeenMessagesAt.fromJson(data);
typedef OnMutationCompleted$Mutation$UpdateLastSeenMessagesAt = FutureOr<void>
    Function(
  Map<String, dynamic>?,
  Mutation$UpdateLastSeenMessagesAt?,
);

class Options$Mutation$UpdateLastSeenMessagesAt
    extends graphql.MutationOptions<Mutation$UpdateLastSeenMessagesAt> {
  Options$Mutation$UpdateLastSeenMessagesAt({
    String? operationName,
    required Variables$Mutation$UpdateLastSeenMessagesAt variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Mutation$UpdateLastSeenMessagesAt? typedOptimisticResult,
    graphql.Context? context,
    OnMutationCompleted$Mutation$UpdateLastSeenMessagesAt? onCompleted,
    graphql.OnMutationUpdate<Mutation$UpdateLastSeenMessagesAt>? update,
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
                        : _parserFn$Mutation$UpdateLastSeenMessagesAt(data),
                  ),
          update: update,
          onError: onError,
          document: documentNodeMutationUpdateLastSeenMessagesAt,
          parserFn: _parserFn$Mutation$UpdateLastSeenMessagesAt,
        );

  final OnMutationCompleted$Mutation$UpdateLastSeenMessagesAt?
      onCompletedWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onCompleted == null
            ? super.properties
            : super.properties.where((property) => property != onCompleted),
        onCompletedWithParsed,
      ];
}

class WatchOptions$Mutation$UpdateLastSeenMessagesAt
    extends graphql.WatchQueryOptions<Mutation$UpdateLastSeenMessagesAt> {
  WatchOptions$Mutation$UpdateLastSeenMessagesAt({
    String? operationName,
    required Variables$Mutation$UpdateLastSeenMessagesAt variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Mutation$UpdateLastSeenMessagesAt? typedOptimisticResult,
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
          document: documentNodeMutationUpdateLastSeenMessagesAt,
          pollInterval: pollInterval,
          eagerlyFetchResults: eagerlyFetchResults,
          carryForwardDataOnException: carryForwardDataOnException,
          fetchResults: fetchResults,
          parserFn: _parserFn$Mutation$UpdateLastSeenMessagesAt,
        );
}

extension ClientExtension$Mutation$UpdateLastSeenMessagesAt
    on graphql.GraphQLClient {
  Future<graphql.QueryResult<Mutation$UpdateLastSeenMessagesAt>>
      mutate$UpdateLastSeenMessagesAt(
              Options$Mutation$UpdateLastSeenMessagesAt options) async =>
          await this.mutate(options);
  graphql.ObservableQuery<Mutation$UpdateLastSeenMessagesAt>
      watchMutation$UpdateLastSeenMessagesAt(
              WatchOptions$Mutation$UpdateLastSeenMessagesAt options) =>
          this.watchMutation(options);
}

class Mutation$UpdateLastSeenMessagesAt$HookResult {
  Mutation$UpdateLastSeenMessagesAt$HookResult(
    this.runMutation,
    this.result,
  );

  final RunMutation$Mutation$UpdateLastSeenMessagesAt runMutation;

  final graphql.QueryResult<Mutation$UpdateLastSeenMessagesAt> result;
}

Mutation$UpdateLastSeenMessagesAt$HookResult
    useMutation$UpdateLastSeenMessagesAt(
        [WidgetOptions$Mutation$UpdateLastSeenMessagesAt? options]) {
  final result = graphql_flutter.useMutation(
      options ?? WidgetOptions$Mutation$UpdateLastSeenMessagesAt());
  return Mutation$UpdateLastSeenMessagesAt$HookResult(
    (variables, {optimisticResult, typedOptimisticResult}) =>
        result.runMutation(
      variables.toJson(),
      optimisticResult: optimisticResult ?? typedOptimisticResult?.toJson(),
    ),
    result.result,
  );
}

graphql.ObservableQuery<Mutation$UpdateLastSeenMessagesAt>
    useWatchMutation$UpdateLastSeenMessagesAt(
            WatchOptions$Mutation$UpdateLastSeenMessagesAt options) =>
        graphql_flutter.useWatchMutation(options);

class WidgetOptions$Mutation$UpdateLastSeenMessagesAt
    extends graphql.MutationOptions<Mutation$UpdateLastSeenMessagesAt> {
  WidgetOptions$Mutation$UpdateLastSeenMessagesAt({
    String? operationName,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Mutation$UpdateLastSeenMessagesAt? typedOptimisticResult,
    graphql.Context? context,
    OnMutationCompleted$Mutation$UpdateLastSeenMessagesAt? onCompleted,
    graphql.OnMutationUpdate<Mutation$UpdateLastSeenMessagesAt>? update,
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
                        : _parserFn$Mutation$UpdateLastSeenMessagesAt(data),
                  ),
          update: update,
          onError: onError,
          document: documentNodeMutationUpdateLastSeenMessagesAt,
          parserFn: _parserFn$Mutation$UpdateLastSeenMessagesAt,
        );

  final OnMutationCompleted$Mutation$UpdateLastSeenMessagesAt?
      onCompletedWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onCompleted == null
            ? super.properties
            : super.properties.where((property) => property != onCompleted),
        onCompletedWithParsed,
      ];
}

typedef RunMutation$Mutation$UpdateLastSeenMessagesAt
    = graphql.MultiSourceResult<Mutation$UpdateLastSeenMessagesAt> Function(
  Variables$Mutation$UpdateLastSeenMessagesAt, {
  Object? optimisticResult,
  Mutation$UpdateLastSeenMessagesAt? typedOptimisticResult,
});
typedef Builder$Mutation$UpdateLastSeenMessagesAt = widgets.Widget Function(
  RunMutation$Mutation$UpdateLastSeenMessagesAt,
  graphql.QueryResult<Mutation$UpdateLastSeenMessagesAt>?,
);

class Mutation$UpdateLastSeenMessagesAt$Widget
    extends graphql_flutter.Mutation<Mutation$UpdateLastSeenMessagesAt> {
  Mutation$UpdateLastSeenMessagesAt$Widget({
    widgets.Key? key,
    WidgetOptions$Mutation$UpdateLastSeenMessagesAt? options,
    required Builder$Mutation$UpdateLastSeenMessagesAt builder,
  }) : super(
          key: key,
          options: options ?? WidgetOptions$Mutation$UpdateLastSeenMessagesAt(),
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

class Subscription$NewMessageReceived {
  Subscription$NewMessageReceived({required this.newMessageReceived});

  factory Subscription$NewMessageReceived.fromJson(Map<String, dynamic> json) {
    final l$newMessageReceived = json['newMessageReceived'];
    return Subscription$NewMessageReceived(
        newMessageReceived:
            Subscription$NewMessageReceived$newMessageReceived.fromJson(
                (l$newMessageReceived as Map<String, dynamic>)));
  }

  final Subscription$NewMessageReceived$newMessageReceived newMessageReceived;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$newMessageReceived = newMessageReceived;
    _resultData['newMessageReceived'] = l$newMessageReceived.toJson();
    return _resultData;
  }

  @override
  int get hashCode {
    final l$newMessageReceived = newMessageReceived;
    return Object.hashAll([l$newMessageReceived]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Subscription$NewMessageReceived) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$newMessageReceived = newMessageReceived;
    final lOther$newMessageReceived = other.newMessageReceived;
    if (l$newMessageReceived != lOther$newMessageReceived) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Subscription$NewMessageReceived
    on Subscription$NewMessageReceived {
  CopyWith$Subscription$NewMessageReceived<Subscription$NewMessageReceived>
      get copyWith => CopyWith$Subscription$NewMessageReceived(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Subscription$NewMessageReceived<TRes> {
  factory CopyWith$Subscription$NewMessageReceived(
    Subscription$NewMessageReceived instance,
    TRes Function(Subscription$NewMessageReceived) then,
  ) = _CopyWithImpl$Subscription$NewMessageReceived;

  factory CopyWith$Subscription$NewMessageReceived.stub(TRes res) =
      _CopyWithStubImpl$Subscription$NewMessageReceived;

  TRes call(
      {Subscription$NewMessageReceived$newMessageReceived? newMessageReceived});
  CopyWith$Subscription$NewMessageReceived$newMessageReceived<TRes>
      get newMessageReceived;
}

class _CopyWithImpl$Subscription$NewMessageReceived<TRes>
    implements CopyWith$Subscription$NewMessageReceived<TRes> {
  _CopyWithImpl$Subscription$NewMessageReceived(
    this._instance,
    this._then,
  );

  final Subscription$NewMessageReceived _instance;

  final TRes Function(Subscription$NewMessageReceived) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? newMessageReceived = _undefined}) =>
      _then(Subscription$NewMessageReceived(
          newMessageReceived:
              newMessageReceived == _undefined || newMessageReceived == null
                  ? _instance.newMessageReceived
                  : (newMessageReceived
                      as Subscription$NewMessageReceived$newMessageReceived)));
  CopyWith$Subscription$NewMessageReceived$newMessageReceived<TRes>
      get newMessageReceived {
    final local$newMessageReceived = _instance.newMessageReceived;
    return CopyWith$Subscription$NewMessageReceived$newMessageReceived(
        local$newMessageReceived, (e) => call(newMessageReceived: e));
  }
}

class _CopyWithStubImpl$Subscription$NewMessageReceived<TRes>
    implements CopyWith$Subscription$NewMessageReceived<TRes> {
  _CopyWithStubImpl$Subscription$NewMessageReceived(this._res);

  TRes _res;

  call(
          {Subscription$NewMessageReceived$newMessageReceived?
              newMessageReceived}) =>
      _res;
  CopyWith$Subscription$NewMessageReceived$newMessageReceived<TRes>
      get newMessageReceived =>
          CopyWith$Subscription$NewMessageReceived$newMessageReceived.stub(
              _res);
}

const documentNodeSubscriptionNewMessageReceived = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.subscription,
    name: NameNode(value: 'NewMessageReceived'),
    variableDefinitions: [],
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
        name: NameNode(value: 'newMessageReceived'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: SelectionSetNode(selections: [
          FragmentSpreadNode(
            name: NameNode(value: 'ChatMessage'),
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
            name: NameNode(value: 'content'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'sentByDriver'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
        ]),
      )
    ]),
  ),
  fragmentDefinitionChatMessage,
]);
Subscription$NewMessageReceived _parserFn$Subscription$NewMessageReceived(
        Map<String, dynamic> data) =>
    Subscription$NewMessageReceived.fromJson(data);

class Options$Subscription$NewMessageReceived
    extends graphql.SubscriptionOptions<Subscription$NewMessageReceived> {
  Options$Subscription$NewMessageReceived({
    String? operationName,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Subscription$NewMessageReceived? typedOptimisticResult,
    graphql.Context? context,
  }) : super(
          operationName: operationName,
          fetchPolicy: fetchPolicy,
          errorPolicy: errorPolicy,
          cacheRereadPolicy: cacheRereadPolicy,
          optimisticResult: optimisticResult ?? typedOptimisticResult?.toJson(),
          context: context,
          document: documentNodeSubscriptionNewMessageReceived,
          parserFn: _parserFn$Subscription$NewMessageReceived,
        );
}

class WatchOptions$Subscription$NewMessageReceived
    extends graphql.WatchQueryOptions<Subscription$NewMessageReceived> {
  WatchOptions$Subscription$NewMessageReceived({
    String? operationName,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Subscription$NewMessageReceived? typedOptimisticResult,
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
          document: documentNodeSubscriptionNewMessageReceived,
          pollInterval: pollInterval,
          eagerlyFetchResults: eagerlyFetchResults,
          carryForwardDataOnException: carryForwardDataOnException,
          fetchResults: fetchResults,
          parserFn: _parserFn$Subscription$NewMessageReceived,
        );
}

class FetchMoreOptions$Subscription$NewMessageReceived
    extends graphql.FetchMoreOptions {
  FetchMoreOptions$Subscription$NewMessageReceived(
      {required graphql.UpdateQuery updateQuery})
      : super(
          updateQuery: updateQuery,
          document: documentNodeSubscriptionNewMessageReceived,
        );
}

extension ClientExtension$Subscription$NewMessageReceived
    on graphql.GraphQLClient {
  Stream<graphql.QueryResult<Subscription$NewMessageReceived>>
      subscribe$NewMessageReceived(
              [Options$Subscription$NewMessageReceived? options]) =>
          this.subscribe(options ?? Options$Subscription$NewMessageReceived());
  graphql.ObservableQuery<Subscription$NewMessageReceived>
      watchSubscription$NewMessageReceived(
              [WatchOptions$Subscription$NewMessageReceived? options]) =>
          this.watchQuery(
              options ?? WatchOptions$Subscription$NewMessageReceived());
}

graphql.QueryResult<Subscription$NewMessageReceived>
    useSubscription$NewMessageReceived(
            Options$Subscription$NewMessageReceived options) =>
        graphql_flutter.useSubscription(options);

class Subscription$NewMessageReceived$Widget
    extends graphql_flutter.Subscription<Subscription$NewMessageReceived> {
  Subscription$NewMessageReceived$Widget({
    widgets.Key? key,
    Options$Subscription$NewMessageReceived? options,
    required graphql_flutter
            .SubscriptionBuilder<Subscription$NewMessageReceived>
        builder,
    graphql_flutter.OnSubscriptionResult<Subscription$NewMessageReceived>?
        onSubscriptionResult,
  }) : super(
          key: key,
          options: options ?? Options$Subscription$NewMessageReceived(),
          builder: builder,
          onSubscriptionResult: onSubscriptionResult,
        );
}

class Subscription$NewMessageReceived$newMessageReceived
    implements Fragment$ChatMessage {
  Subscription$NewMessageReceived$newMessageReceived({
    required this.id,
    required this.content,
    required this.sentByDriver,
  });

  factory Subscription$NewMessageReceived$newMessageReceived.fromJson(
      Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$content = json['content'];
    final l$sentByDriver = json['sentByDriver'];
    return Subscription$NewMessageReceived$newMessageReceived(
      id: (l$id as String),
      content: (l$content as String),
      sentByDriver: (l$sentByDriver as bool),
    );
  }

  final String id;

  final String content;

  final bool sentByDriver;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = l$id;
    final l$content = content;
    _resultData['content'] = l$content;
    final l$sentByDriver = sentByDriver;
    _resultData['sentByDriver'] = l$sentByDriver;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$content = content;
    final l$sentByDriver = sentByDriver;
    return Object.hashAll([
      l$id,
      l$content,
      l$sentByDriver,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Subscription$NewMessageReceived$newMessageReceived) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
      return false;
    }
    final l$content = content;
    final lOther$content = other.content;
    if (l$content != lOther$content) {
      return false;
    }
    final l$sentByDriver = sentByDriver;
    final lOther$sentByDriver = other.sentByDriver;
    if (l$sentByDriver != lOther$sentByDriver) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Subscription$NewMessageReceived$newMessageReceived
    on Subscription$NewMessageReceived$newMessageReceived {
  CopyWith$Subscription$NewMessageReceived$newMessageReceived<
          Subscription$NewMessageReceived$newMessageReceived>
      get copyWith =>
          CopyWith$Subscription$NewMessageReceived$newMessageReceived(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Subscription$NewMessageReceived$newMessageReceived<
    TRes> {
  factory CopyWith$Subscription$NewMessageReceived$newMessageReceived(
    Subscription$NewMessageReceived$newMessageReceived instance,
    TRes Function(Subscription$NewMessageReceived$newMessageReceived) then,
  ) = _CopyWithImpl$Subscription$NewMessageReceived$newMessageReceived;

  factory CopyWith$Subscription$NewMessageReceived$newMessageReceived.stub(
          TRes res) =
      _CopyWithStubImpl$Subscription$NewMessageReceived$newMessageReceived;

  TRes call({
    String? id,
    String? content,
    bool? sentByDriver,
  });
}

class _CopyWithImpl$Subscription$NewMessageReceived$newMessageReceived<TRes>
    implements
        CopyWith$Subscription$NewMessageReceived$newMessageReceived<TRes> {
  _CopyWithImpl$Subscription$NewMessageReceived$newMessageReceived(
    this._instance,
    this._then,
  );

  final Subscription$NewMessageReceived$newMessageReceived _instance;

  final TRes Function(Subscription$NewMessageReceived$newMessageReceived) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? content = _undefined,
    Object? sentByDriver = _undefined,
  }) =>
      _then(Subscription$NewMessageReceived$newMessageReceived(
        id: id == _undefined || id == null ? _instance.id : (id as String),
        content: content == _undefined || content == null
            ? _instance.content
            : (content as String),
        sentByDriver: sentByDriver == _undefined || sentByDriver == null
            ? _instance.sentByDriver
            : (sentByDriver as bool),
      ));
}

class _CopyWithStubImpl$Subscription$NewMessageReceived$newMessageReceived<TRes>
    implements
        CopyWith$Subscription$NewMessageReceived$newMessageReceived<TRes> {
  _CopyWithStubImpl$Subscription$NewMessageReceived$newMessageReceived(
      this._res);

  TRes _res;

  call({
    String? id,
    String? content,
    bool? sentByDriver,
  }) =>
      _res;
}
