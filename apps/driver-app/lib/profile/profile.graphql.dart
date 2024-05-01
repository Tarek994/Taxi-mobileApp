import 'dart:async';
import 'package:flutter/widgets.dart' as widgets;
import 'package:gql/ast.dart';
import 'package:graphql/client.dart' as graphql;
import 'package:graphql_flutter/graphql_flutter.dart' as graphql_flutter;

class Query$GetProfile {
  Query$GetProfile({this.driver});

  factory Query$GetProfile.fromJson(Map<String, dynamic> json) {
    final l$driver = json['driver'];
    return Query$GetProfile(
        driver: l$driver == null
            ? null
            : Query$GetProfile$driver.fromJson(
                (l$driver as Map<String, dynamic>)));
  }

  final Query$GetProfile$driver? driver;

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
    if (!(other is Query$GetProfile) || runtimeType != other.runtimeType) {
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

extension UtilityExtension$Query$GetProfile on Query$GetProfile {
  CopyWith$Query$GetProfile<Query$GetProfile> get copyWith =>
      CopyWith$Query$GetProfile(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$GetProfile<TRes> {
  factory CopyWith$Query$GetProfile(
    Query$GetProfile instance,
    TRes Function(Query$GetProfile) then,
  ) = _CopyWithImpl$Query$GetProfile;

  factory CopyWith$Query$GetProfile.stub(TRes res) =
      _CopyWithStubImpl$Query$GetProfile;

  TRes call({Query$GetProfile$driver? driver});
  CopyWith$Query$GetProfile$driver<TRes> get driver;
}

class _CopyWithImpl$Query$GetProfile<TRes>
    implements CopyWith$Query$GetProfile<TRes> {
  _CopyWithImpl$Query$GetProfile(
    this._instance,
    this._then,
  );

  final Query$GetProfile _instance;

  final TRes Function(Query$GetProfile) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? driver = _undefined}) => _then(Query$GetProfile(
      driver: driver == _undefined
          ? _instance.driver
          : (driver as Query$GetProfile$driver?)));
  CopyWith$Query$GetProfile$driver<TRes> get driver {
    final local$driver = _instance.driver;
    return local$driver == null
        ? CopyWith$Query$GetProfile$driver.stub(_then(_instance))
        : CopyWith$Query$GetProfile$driver(
            local$driver, (e) => call(driver: e));
  }
}

class _CopyWithStubImpl$Query$GetProfile<TRes>
    implements CopyWith$Query$GetProfile<TRes> {
  _CopyWithStubImpl$Query$GetProfile(this._res);

  TRes _res;

  call({Query$GetProfile$driver? driver}) => _res;
  CopyWith$Query$GetProfile$driver<TRes> get driver =>
      CopyWith$Query$GetProfile$driver.stub(_res);
}

const documentNodeQueryGetProfile = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.query,
    name: NameNode(value: 'GetProfile'),
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
            name: NameNode(value: 'mobileNumber'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'accountNumber'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'bankName'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'address'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'rating'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'documents'),
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
                name: NameNode(value: 'address'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
            ]),
          ),
          FieldNode(
            name: NameNode(value: 'bankSwift'),
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
                name: NameNode(value: 'id'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
              FieldNode(
                name: NameNode(value: 'address'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
            ]),
          ),
          FieldNode(
            name: NameNode(value: 'carPlate'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'enabledServices'),
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
            name: NameNode(value: 'carColor'),
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
            name: NameNode(value: 'car'),
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
            name: NameNode(value: 'historyOrdersAggregate'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: SelectionSetNode(selections: [
              FieldNode(
                name: NameNode(value: 'sum'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: SelectionSetNode(selections: [
                  FieldNode(
                    name: NameNode(value: 'distanceBest'),
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
            ]),
          ),
        ]),
      )
    ]),
  ),
]);
Query$GetProfile _parserFn$Query$GetProfile(Map<String, dynamic> data) =>
    Query$GetProfile.fromJson(data);
typedef OnQueryComplete$Query$GetProfile = FutureOr<void> Function(
  Map<String, dynamic>?,
  Query$GetProfile?,
);

class Options$Query$GetProfile extends graphql.QueryOptions<Query$GetProfile> {
  Options$Query$GetProfile({
    String? operationName,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Query$GetProfile? typedOptimisticResult,
    Duration? pollInterval,
    graphql.Context? context,
    OnQueryComplete$Query$GetProfile? onComplete,
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
                    data == null ? null : _parserFn$Query$GetProfile(data),
                  ),
          onError: onError,
          document: documentNodeQueryGetProfile,
          parserFn: _parserFn$Query$GetProfile,
        );

  final OnQueryComplete$Query$GetProfile? onCompleteWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onComplete == null
            ? super.properties
            : super.properties.where((property) => property != onComplete),
        onCompleteWithParsed,
      ];
}

class WatchOptions$Query$GetProfile
    extends graphql.WatchQueryOptions<Query$GetProfile> {
  WatchOptions$Query$GetProfile({
    String? operationName,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Query$GetProfile? typedOptimisticResult,
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
          document: documentNodeQueryGetProfile,
          pollInterval: pollInterval,
          eagerlyFetchResults: eagerlyFetchResults,
          carryForwardDataOnException: carryForwardDataOnException,
          fetchResults: fetchResults,
          parserFn: _parserFn$Query$GetProfile,
        );
}

class FetchMoreOptions$Query$GetProfile extends graphql.FetchMoreOptions {
  FetchMoreOptions$Query$GetProfile({required graphql.UpdateQuery updateQuery})
      : super(
          updateQuery: updateQuery,
          document: documentNodeQueryGetProfile,
        );
}

extension ClientExtension$Query$GetProfile on graphql.GraphQLClient {
  Future<graphql.QueryResult<Query$GetProfile>> query$GetProfile(
          [Options$Query$GetProfile? options]) async =>
      await this.query(options ?? Options$Query$GetProfile());
  graphql.ObservableQuery<Query$GetProfile> watchQuery$GetProfile(
          [WatchOptions$Query$GetProfile? options]) =>
      this.watchQuery(options ?? WatchOptions$Query$GetProfile());
  void writeQuery$GetProfile({
    required Query$GetProfile data,
    bool broadcast = true,
  }) =>
      this.writeQuery(
        graphql.Request(
            operation:
                graphql.Operation(document: documentNodeQueryGetProfile)),
        data: data.toJson(),
        broadcast: broadcast,
      );
  Query$GetProfile? readQuery$GetProfile({bool optimistic = true}) {
    final result = this.readQuery(
      graphql.Request(
          operation: graphql.Operation(document: documentNodeQueryGetProfile)),
      optimistic: optimistic,
    );
    return result == null ? null : Query$GetProfile.fromJson(result);
  }
}

graphql_flutter.QueryHookResult<Query$GetProfile> useQuery$GetProfile(
        [Options$Query$GetProfile? options]) =>
    graphql_flutter.useQuery(options ?? Options$Query$GetProfile());
graphql.ObservableQuery<Query$GetProfile> useWatchQuery$GetProfile(
        [WatchOptions$Query$GetProfile? options]) =>
    graphql_flutter.useWatchQuery(options ?? WatchOptions$Query$GetProfile());

class Query$GetProfile$Widget extends graphql_flutter.Query<Query$GetProfile> {
  Query$GetProfile$Widget({
    widgets.Key? key,
    Options$Query$GetProfile? options,
    required graphql_flutter.QueryBuilder<Query$GetProfile> builder,
  }) : super(
          key: key,
          options: options ?? Options$Query$GetProfile(),
          builder: builder,
        );
}

class Query$GetProfile$driver {
  Query$GetProfile$driver({
    required this.id,
    this.firstName,
    this.lastName,
    required this.mobileNumber,
    this.accountNumber,
    this.bankName,
    this.address,
    this.rating,
    this.documents,
    this.bankSwift,
    this.media,
    this.carPlate,
    required this.enabledServices,
    this.carColor,
    this.car,
    required this.historyOrdersAggregate,
  });

  factory Query$GetProfile$driver.fromJson(Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$firstName = json['firstName'];
    final l$lastName = json['lastName'];
    final l$mobileNumber = json['mobileNumber'];
    final l$accountNumber = json['accountNumber'];
    final l$bankName = json['bankName'];
    final l$address = json['address'];
    final l$rating = json['rating'];
    final l$documents = json['documents'];
    final l$bankSwift = json['bankSwift'];
    final l$media = json['media'];
    final l$carPlate = json['carPlate'];
    final l$enabledServices = json['enabledServices'];
    final l$carColor = json['carColor'];
    final l$car = json['car'];
    final l$historyOrdersAggregate = json['historyOrdersAggregate'];
    return Query$GetProfile$driver(
      id: (l$id as String),
      firstName: (l$firstName as String?),
      lastName: (l$lastName as String?),
      mobileNumber: (l$mobileNumber as String),
      accountNumber: (l$accountNumber as String?),
      bankName: (l$bankName as String?),
      address: (l$address as String?),
      rating: (l$rating as num?)?.toDouble(),
      documents: (l$documents as List<dynamic>?)
          ?.map((e) => Query$GetProfile$driver$documents.fromJson(
              (e as Map<String, dynamic>)))
          .toList(),
      bankSwift: (l$bankSwift as String?),
      media: l$media == null
          ? null
          : Query$GetProfile$driver$media.fromJson(
              (l$media as Map<String, dynamic>)),
      carPlate: (l$carPlate as String?),
      enabledServices: (l$enabledServices as List<dynamic>)
          .map((e) => Query$GetProfile$driver$enabledServices.fromJson(
              (e as Map<String, dynamic>)))
          .toList(),
      carColor: l$carColor == null
          ? null
          : Query$GetProfile$driver$carColor.fromJson(
              (l$carColor as Map<String, dynamic>)),
      car: l$car == null
          ? null
          : Query$GetProfile$driver$car.fromJson(
              (l$car as Map<String, dynamic>)),
      historyOrdersAggregate: (l$historyOrdersAggregate as List<dynamic>)
          .map((e) => Query$GetProfile$driver$historyOrdersAggregate.fromJson(
              (e as Map<String, dynamic>)))
          .toList(),
    );
  }

  final String id;

  final String? firstName;

  final String? lastName;

  final String mobileNumber;

  final String? accountNumber;

  final String? bankName;

  final String? address;

  final double? rating;

  final List<Query$GetProfile$driver$documents>? documents;

  final String? bankSwift;

  final Query$GetProfile$driver$media? media;

  final String? carPlate;

  final List<Query$GetProfile$driver$enabledServices> enabledServices;

  final Query$GetProfile$driver$carColor? carColor;

  final Query$GetProfile$driver$car? car;

  final List<Query$GetProfile$driver$historyOrdersAggregate>
      historyOrdersAggregate;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = l$id;
    final l$firstName = firstName;
    _resultData['firstName'] = l$firstName;
    final l$lastName = lastName;
    _resultData['lastName'] = l$lastName;
    final l$mobileNumber = mobileNumber;
    _resultData['mobileNumber'] = l$mobileNumber;
    final l$accountNumber = accountNumber;
    _resultData['accountNumber'] = l$accountNumber;
    final l$bankName = bankName;
    _resultData['bankName'] = l$bankName;
    final l$address = address;
    _resultData['address'] = l$address;
    final l$rating = rating;
    _resultData['rating'] = l$rating;
    final l$documents = documents;
    _resultData['documents'] = l$documents?.map((e) => e.toJson()).toList();
    final l$bankSwift = bankSwift;
    _resultData['bankSwift'] = l$bankSwift;
    final l$media = media;
    _resultData['media'] = l$media?.toJson();
    final l$carPlate = carPlate;
    _resultData['carPlate'] = l$carPlate;
    final l$enabledServices = enabledServices;
    _resultData['enabledServices'] =
        l$enabledServices.map((e) => e.toJson()).toList();
    final l$carColor = carColor;
    _resultData['carColor'] = l$carColor?.toJson();
    final l$car = car;
    _resultData['car'] = l$car?.toJson();
    final l$historyOrdersAggregate = historyOrdersAggregate;
    _resultData['historyOrdersAggregate'] =
        l$historyOrdersAggregate.map((e) => e.toJson()).toList();
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$firstName = firstName;
    final l$lastName = lastName;
    final l$mobileNumber = mobileNumber;
    final l$accountNumber = accountNumber;
    final l$bankName = bankName;
    final l$address = address;
    final l$rating = rating;
    final l$documents = documents;
    final l$bankSwift = bankSwift;
    final l$media = media;
    final l$carPlate = carPlate;
    final l$enabledServices = enabledServices;
    final l$carColor = carColor;
    final l$car = car;
    final l$historyOrdersAggregate = historyOrdersAggregate;
    return Object.hashAll([
      l$id,
      l$firstName,
      l$lastName,
      l$mobileNumber,
      l$accountNumber,
      l$bankName,
      l$address,
      l$rating,
      l$documents == null ? null : Object.hashAll(l$documents.map((v) => v)),
      l$bankSwift,
      l$media,
      l$carPlate,
      Object.hashAll(l$enabledServices.map((v) => v)),
      l$carColor,
      l$car,
      Object.hashAll(l$historyOrdersAggregate.map((v) => v)),
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$GetProfile$driver) ||
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
    final l$mobileNumber = mobileNumber;
    final lOther$mobileNumber = other.mobileNumber;
    if (l$mobileNumber != lOther$mobileNumber) {
      return false;
    }
    final l$accountNumber = accountNumber;
    final lOther$accountNumber = other.accountNumber;
    if (l$accountNumber != lOther$accountNumber) {
      return false;
    }
    final l$bankName = bankName;
    final lOther$bankName = other.bankName;
    if (l$bankName != lOther$bankName) {
      return false;
    }
    final l$address = address;
    final lOther$address = other.address;
    if (l$address != lOther$address) {
      return false;
    }
    final l$rating = rating;
    final lOther$rating = other.rating;
    if (l$rating != lOther$rating) {
      return false;
    }
    final l$documents = documents;
    final lOther$documents = other.documents;
    if (l$documents != null && lOther$documents != null) {
      if (l$documents.length != lOther$documents.length) {
        return false;
      }
      for (int i = 0; i < l$documents.length; i++) {
        final l$documents$entry = l$documents[i];
        final lOther$documents$entry = lOther$documents[i];
        if (l$documents$entry != lOther$documents$entry) {
          return false;
        }
      }
    } else if (l$documents != lOther$documents) {
      return false;
    }
    final l$bankSwift = bankSwift;
    final lOther$bankSwift = other.bankSwift;
    if (l$bankSwift != lOther$bankSwift) {
      return false;
    }
    final l$media = media;
    final lOther$media = other.media;
    if (l$media != lOther$media) {
      return false;
    }
    final l$carPlate = carPlate;
    final lOther$carPlate = other.carPlate;
    if (l$carPlate != lOther$carPlate) {
      return false;
    }
    final l$enabledServices = enabledServices;
    final lOther$enabledServices = other.enabledServices;
    if (l$enabledServices.length != lOther$enabledServices.length) {
      return false;
    }
    for (int i = 0; i < l$enabledServices.length; i++) {
      final l$enabledServices$entry = l$enabledServices[i];
      final lOther$enabledServices$entry = lOther$enabledServices[i];
      if (l$enabledServices$entry != lOther$enabledServices$entry) {
        return false;
      }
    }
    final l$carColor = carColor;
    final lOther$carColor = other.carColor;
    if (l$carColor != lOther$carColor) {
      return false;
    }
    final l$car = car;
    final lOther$car = other.car;
    if (l$car != lOther$car) {
      return false;
    }
    final l$historyOrdersAggregate = historyOrdersAggregate;
    final lOther$historyOrdersAggregate = other.historyOrdersAggregate;
    if (l$historyOrdersAggregate.length !=
        lOther$historyOrdersAggregate.length) {
      return false;
    }
    for (int i = 0; i < l$historyOrdersAggregate.length; i++) {
      final l$historyOrdersAggregate$entry = l$historyOrdersAggregate[i];
      final lOther$historyOrdersAggregate$entry =
          lOther$historyOrdersAggregate[i];
      if (l$historyOrdersAggregate$entry !=
          lOther$historyOrdersAggregate$entry) {
        return false;
      }
    }
    return true;
  }
}

extension UtilityExtension$Query$GetProfile$driver on Query$GetProfile$driver {
  CopyWith$Query$GetProfile$driver<Query$GetProfile$driver> get copyWith =>
      CopyWith$Query$GetProfile$driver(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$GetProfile$driver<TRes> {
  factory CopyWith$Query$GetProfile$driver(
    Query$GetProfile$driver instance,
    TRes Function(Query$GetProfile$driver) then,
  ) = _CopyWithImpl$Query$GetProfile$driver;

  factory CopyWith$Query$GetProfile$driver.stub(TRes res) =
      _CopyWithStubImpl$Query$GetProfile$driver;

  TRes call({
    String? id,
    String? firstName,
    String? lastName,
    String? mobileNumber,
    String? accountNumber,
    String? bankName,
    String? address,
    double? rating,
    List<Query$GetProfile$driver$documents>? documents,
    String? bankSwift,
    Query$GetProfile$driver$media? media,
    String? carPlate,
    List<Query$GetProfile$driver$enabledServices>? enabledServices,
    Query$GetProfile$driver$carColor? carColor,
    Query$GetProfile$driver$car? car,
    List<Query$GetProfile$driver$historyOrdersAggregate>?
        historyOrdersAggregate,
  });
  TRes documents(
      Iterable<Query$GetProfile$driver$documents>? Function(
              Iterable<
                  CopyWith$Query$GetProfile$driver$documents<
                      Query$GetProfile$driver$documents>>?)
          _fn);
  CopyWith$Query$GetProfile$driver$media<TRes> get media;
  TRes enabledServices(
      Iterable<Query$GetProfile$driver$enabledServices> Function(
              Iterable<
                  CopyWith$Query$GetProfile$driver$enabledServices<
                      Query$GetProfile$driver$enabledServices>>)
          _fn);
  CopyWith$Query$GetProfile$driver$carColor<TRes> get carColor;
  CopyWith$Query$GetProfile$driver$car<TRes> get car;
  TRes historyOrdersAggregate(
      Iterable<Query$GetProfile$driver$historyOrdersAggregate> Function(
              Iterable<
                  CopyWith$Query$GetProfile$driver$historyOrdersAggregate<
                      Query$GetProfile$driver$historyOrdersAggregate>>)
          _fn);
}

class _CopyWithImpl$Query$GetProfile$driver<TRes>
    implements CopyWith$Query$GetProfile$driver<TRes> {
  _CopyWithImpl$Query$GetProfile$driver(
    this._instance,
    this._then,
  );

  final Query$GetProfile$driver _instance;

  final TRes Function(Query$GetProfile$driver) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? firstName = _undefined,
    Object? lastName = _undefined,
    Object? mobileNumber = _undefined,
    Object? accountNumber = _undefined,
    Object? bankName = _undefined,
    Object? address = _undefined,
    Object? rating = _undefined,
    Object? documents = _undefined,
    Object? bankSwift = _undefined,
    Object? media = _undefined,
    Object? carPlate = _undefined,
    Object? enabledServices = _undefined,
    Object? carColor = _undefined,
    Object? car = _undefined,
    Object? historyOrdersAggregate = _undefined,
  }) =>
      _then(Query$GetProfile$driver(
        id: id == _undefined || id == null ? _instance.id : (id as String),
        firstName: firstName == _undefined
            ? _instance.firstName
            : (firstName as String?),
        lastName:
            lastName == _undefined ? _instance.lastName : (lastName as String?),
        mobileNumber: mobileNumber == _undefined || mobileNumber == null
            ? _instance.mobileNumber
            : (mobileNumber as String),
        accountNumber: accountNumber == _undefined
            ? _instance.accountNumber
            : (accountNumber as String?),
        bankName:
            bankName == _undefined ? _instance.bankName : (bankName as String?),
        address:
            address == _undefined ? _instance.address : (address as String?),
        rating: rating == _undefined ? _instance.rating : (rating as double?),
        documents: documents == _undefined
            ? _instance.documents
            : (documents as List<Query$GetProfile$driver$documents>?),
        bankSwift: bankSwift == _undefined
            ? _instance.bankSwift
            : (bankSwift as String?),
        media: media == _undefined
            ? _instance.media
            : (media as Query$GetProfile$driver$media?),
        carPlate:
            carPlate == _undefined ? _instance.carPlate : (carPlate as String?),
        enabledServices:
            enabledServices == _undefined || enabledServices == null
                ? _instance.enabledServices
                : (enabledServices
                    as List<Query$GetProfile$driver$enabledServices>),
        carColor: carColor == _undefined
            ? _instance.carColor
            : (carColor as Query$GetProfile$driver$carColor?),
        car: car == _undefined
            ? _instance.car
            : (car as Query$GetProfile$driver$car?),
        historyOrdersAggregate: historyOrdersAggregate == _undefined ||
                historyOrdersAggregate == null
            ? _instance.historyOrdersAggregate
            : (historyOrdersAggregate
                as List<Query$GetProfile$driver$historyOrdersAggregate>),
      ));
  TRes documents(
          Iterable<Query$GetProfile$driver$documents>? Function(
                  Iterable<
                      CopyWith$Query$GetProfile$driver$documents<
                          Query$GetProfile$driver$documents>>?)
              _fn) =>
      call(
          documents: _fn(_instance.documents
              ?.map((e) => CopyWith$Query$GetProfile$driver$documents(
                    e,
                    (i) => i,
                  )))?.toList());
  CopyWith$Query$GetProfile$driver$media<TRes> get media {
    final local$media = _instance.media;
    return local$media == null
        ? CopyWith$Query$GetProfile$driver$media.stub(_then(_instance))
        : CopyWith$Query$GetProfile$driver$media(
            local$media, (e) => call(media: e));
  }

  TRes enabledServices(
          Iterable<Query$GetProfile$driver$enabledServices> Function(
                  Iterable<
                      CopyWith$Query$GetProfile$driver$enabledServices<
                          Query$GetProfile$driver$enabledServices>>)
              _fn) =>
      call(
          enabledServices: _fn(_instance.enabledServices
              .map((e) => CopyWith$Query$GetProfile$driver$enabledServices(
                    e,
                    (i) => i,
                  ))).toList());
  CopyWith$Query$GetProfile$driver$carColor<TRes> get carColor {
    final local$carColor = _instance.carColor;
    return local$carColor == null
        ? CopyWith$Query$GetProfile$driver$carColor.stub(_then(_instance))
        : CopyWith$Query$GetProfile$driver$carColor(
            local$carColor, (e) => call(carColor: e));
  }

  CopyWith$Query$GetProfile$driver$car<TRes> get car {
    final local$car = _instance.car;
    return local$car == null
        ? CopyWith$Query$GetProfile$driver$car.stub(_then(_instance))
        : CopyWith$Query$GetProfile$driver$car(local$car, (e) => call(car: e));
  }

  TRes historyOrdersAggregate(
          Iterable<Query$GetProfile$driver$historyOrdersAggregate> Function(
                  Iterable<
                      CopyWith$Query$GetProfile$driver$historyOrdersAggregate<
                          Query$GetProfile$driver$historyOrdersAggregate>>)
              _fn) =>
      call(
          historyOrdersAggregate: _fn(_instance.historyOrdersAggregate.map(
              (e) => CopyWith$Query$GetProfile$driver$historyOrdersAggregate(
                    e,
                    (i) => i,
                  ))).toList());
}

class _CopyWithStubImpl$Query$GetProfile$driver<TRes>
    implements CopyWith$Query$GetProfile$driver<TRes> {
  _CopyWithStubImpl$Query$GetProfile$driver(this._res);

  TRes _res;

  call({
    String? id,
    String? firstName,
    String? lastName,
    String? mobileNumber,
    String? accountNumber,
    String? bankName,
    String? address,
    double? rating,
    List<Query$GetProfile$driver$documents>? documents,
    String? bankSwift,
    Query$GetProfile$driver$media? media,
    String? carPlate,
    List<Query$GetProfile$driver$enabledServices>? enabledServices,
    Query$GetProfile$driver$carColor? carColor,
    Query$GetProfile$driver$car? car,
    List<Query$GetProfile$driver$historyOrdersAggregate>?
        historyOrdersAggregate,
  }) =>
      _res;
  documents(_fn) => _res;
  CopyWith$Query$GetProfile$driver$media<TRes> get media =>
      CopyWith$Query$GetProfile$driver$media.stub(_res);
  enabledServices(_fn) => _res;
  CopyWith$Query$GetProfile$driver$carColor<TRes> get carColor =>
      CopyWith$Query$GetProfile$driver$carColor.stub(_res);
  CopyWith$Query$GetProfile$driver$car<TRes> get car =>
      CopyWith$Query$GetProfile$driver$car.stub(_res);
  historyOrdersAggregate(_fn) => _res;
}

class Query$GetProfile$driver$documents {
  Query$GetProfile$driver$documents({
    required this.id,
    required this.address,
  });

  factory Query$GetProfile$driver$documents.fromJson(
      Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$address = json['address'];
    return Query$GetProfile$driver$documents(
      id: (l$id as String),
      address: (l$address as String),
    );
  }

  final String id;

  final String address;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = l$id;
    final l$address = address;
    _resultData['address'] = l$address;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$address = address;
    return Object.hashAll([
      l$id,
      l$address,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$GetProfile$driver$documents) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
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

extension UtilityExtension$Query$GetProfile$driver$documents
    on Query$GetProfile$driver$documents {
  CopyWith$Query$GetProfile$driver$documents<Query$GetProfile$driver$documents>
      get copyWith => CopyWith$Query$GetProfile$driver$documents(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$GetProfile$driver$documents<TRes> {
  factory CopyWith$Query$GetProfile$driver$documents(
    Query$GetProfile$driver$documents instance,
    TRes Function(Query$GetProfile$driver$documents) then,
  ) = _CopyWithImpl$Query$GetProfile$driver$documents;

  factory CopyWith$Query$GetProfile$driver$documents.stub(TRes res) =
      _CopyWithStubImpl$Query$GetProfile$driver$documents;

  TRes call({
    String? id,
    String? address,
  });
}

class _CopyWithImpl$Query$GetProfile$driver$documents<TRes>
    implements CopyWith$Query$GetProfile$driver$documents<TRes> {
  _CopyWithImpl$Query$GetProfile$driver$documents(
    this._instance,
    this._then,
  );

  final Query$GetProfile$driver$documents _instance;

  final TRes Function(Query$GetProfile$driver$documents) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? address = _undefined,
  }) =>
      _then(Query$GetProfile$driver$documents(
        id: id == _undefined || id == null ? _instance.id : (id as String),
        address: address == _undefined || address == null
            ? _instance.address
            : (address as String),
      ));
}

class _CopyWithStubImpl$Query$GetProfile$driver$documents<TRes>
    implements CopyWith$Query$GetProfile$driver$documents<TRes> {
  _CopyWithStubImpl$Query$GetProfile$driver$documents(this._res);

  TRes _res;

  call({
    String? id,
    String? address,
  }) =>
      _res;
}

class Query$GetProfile$driver$media {
  Query$GetProfile$driver$media({
    required this.id,
    required this.address,
  });

  factory Query$GetProfile$driver$media.fromJson(Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$address = json['address'];
    return Query$GetProfile$driver$media(
      id: (l$id as String),
      address: (l$address as String),
    );
  }

  final String id;

  final String address;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = l$id;
    final l$address = address;
    _resultData['address'] = l$address;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$address = address;
    return Object.hashAll([
      l$id,
      l$address,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$GetProfile$driver$media) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
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

extension UtilityExtension$Query$GetProfile$driver$media
    on Query$GetProfile$driver$media {
  CopyWith$Query$GetProfile$driver$media<Query$GetProfile$driver$media>
      get copyWith => CopyWith$Query$GetProfile$driver$media(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$GetProfile$driver$media<TRes> {
  factory CopyWith$Query$GetProfile$driver$media(
    Query$GetProfile$driver$media instance,
    TRes Function(Query$GetProfile$driver$media) then,
  ) = _CopyWithImpl$Query$GetProfile$driver$media;

  factory CopyWith$Query$GetProfile$driver$media.stub(TRes res) =
      _CopyWithStubImpl$Query$GetProfile$driver$media;

  TRes call({
    String? id,
    String? address,
  });
}

class _CopyWithImpl$Query$GetProfile$driver$media<TRes>
    implements CopyWith$Query$GetProfile$driver$media<TRes> {
  _CopyWithImpl$Query$GetProfile$driver$media(
    this._instance,
    this._then,
  );

  final Query$GetProfile$driver$media _instance;

  final TRes Function(Query$GetProfile$driver$media) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? address = _undefined,
  }) =>
      _then(Query$GetProfile$driver$media(
        id: id == _undefined || id == null ? _instance.id : (id as String),
        address: address == _undefined || address == null
            ? _instance.address
            : (address as String),
      ));
}

class _CopyWithStubImpl$Query$GetProfile$driver$media<TRes>
    implements CopyWith$Query$GetProfile$driver$media<TRes> {
  _CopyWithStubImpl$Query$GetProfile$driver$media(this._res);

  TRes _res;

  call({
    String? id,
    String? address,
  }) =>
      _res;
}

class Query$GetProfile$driver$enabledServices {
  Query$GetProfile$driver$enabledServices({required this.name});

  factory Query$GetProfile$driver$enabledServices.fromJson(
      Map<String, dynamic> json) {
    final l$name = json['name'];
    return Query$GetProfile$driver$enabledServices(name: (l$name as String));
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
    if (!(other is Query$GetProfile$driver$enabledServices) ||
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

extension UtilityExtension$Query$GetProfile$driver$enabledServices
    on Query$GetProfile$driver$enabledServices {
  CopyWith$Query$GetProfile$driver$enabledServices<
          Query$GetProfile$driver$enabledServices>
      get copyWith => CopyWith$Query$GetProfile$driver$enabledServices(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$GetProfile$driver$enabledServices<TRes> {
  factory CopyWith$Query$GetProfile$driver$enabledServices(
    Query$GetProfile$driver$enabledServices instance,
    TRes Function(Query$GetProfile$driver$enabledServices) then,
  ) = _CopyWithImpl$Query$GetProfile$driver$enabledServices;

  factory CopyWith$Query$GetProfile$driver$enabledServices.stub(TRes res) =
      _CopyWithStubImpl$Query$GetProfile$driver$enabledServices;

  TRes call({String? name});
}

class _CopyWithImpl$Query$GetProfile$driver$enabledServices<TRes>
    implements CopyWith$Query$GetProfile$driver$enabledServices<TRes> {
  _CopyWithImpl$Query$GetProfile$driver$enabledServices(
    this._instance,
    this._then,
  );

  final Query$GetProfile$driver$enabledServices _instance;

  final TRes Function(Query$GetProfile$driver$enabledServices) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? name = _undefined}) =>
      _then(Query$GetProfile$driver$enabledServices(
          name: name == _undefined || name == null
              ? _instance.name
              : (name as String)));
}

class _CopyWithStubImpl$Query$GetProfile$driver$enabledServices<TRes>
    implements CopyWith$Query$GetProfile$driver$enabledServices<TRes> {
  _CopyWithStubImpl$Query$GetProfile$driver$enabledServices(this._res);

  TRes _res;

  call({String? name}) => _res;
}

class Query$GetProfile$driver$carColor {
  Query$GetProfile$driver$carColor({required this.name});

  factory Query$GetProfile$driver$carColor.fromJson(Map<String, dynamic> json) {
    final l$name = json['name'];
    return Query$GetProfile$driver$carColor(name: (l$name as String));
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
    if (!(other is Query$GetProfile$driver$carColor) ||
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

extension UtilityExtension$Query$GetProfile$driver$carColor
    on Query$GetProfile$driver$carColor {
  CopyWith$Query$GetProfile$driver$carColor<Query$GetProfile$driver$carColor>
      get copyWith => CopyWith$Query$GetProfile$driver$carColor(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$GetProfile$driver$carColor<TRes> {
  factory CopyWith$Query$GetProfile$driver$carColor(
    Query$GetProfile$driver$carColor instance,
    TRes Function(Query$GetProfile$driver$carColor) then,
  ) = _CopyWithImpl$Query$GetProfile$driver$carColor;

  factory CopyWith$Query$GetProfile$driver$carColor.stub(TRes res) =
      _CopyWithStubImpl$Query$GetProfile$driver$carColor;

  TRes call({String? name});
}

class _CopyWithImpl$Query$GetProfile$driver$carColor<TRes>
    implements CopyWith$Query$GetProfile$driver$carColor<TRes> {
  _CopyWithImpl$Query$GetProfile$driver$carColor(
    this._instance,
    this._then,
  );

  final Query$GetProfile$driver$carColor _instance;

  final TRes Function(Query$GetProfile$driver$carColor) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? name = _undefined}) =>
      _then(Query$GetProfile$driver$carColor(
          name: name == _undefined || name == null
              ? _instance.name
              : (name as String)));
}

class _CopyWithStubImpl$Query$GetProfile$driver$carColor<TRes>
    implements CopyWith$Query$GetProfile$driver$carColor<TRes> {
  _CopyWithStubImpl$Query$GetProfile$driver$carColor(this._res);

  TRes _res;

  call({String? name}) => _res;
}

class Query$GetProfile$driver$car {
  Query$GetProfile$driver$car({required this.name});

  factory Query$GetProfile$driver$car.fromJson(Map<String, dynamic> json) {
    final l$name = json['name'];
    return Query$GetProfile$driver$car(name: (l$name as String));
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
    if (!(other is Query$GetProfile$driver$car) ||
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

extension UtilityExtension$Query$GetProfile$driver$car
    on Query$GetProfile$driver$car {
  CopyWith$Query$GetProfile$driver$car<Query$GetProfile$driver$car>
      get copyWith => CopyWith$Query$GetProfile$driver$car(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$GetProfile$driver$car<TRes> {
  factory CopyWith$Query$GetProfile$driver$car(
    Query$GetProfile$driver$car instance,
    TRes Function(Query$GetProfile$driver$car) then,
  ) = _CopyWithImpl$Query$GetProfile$driver$car;

  factory CopyWith$Query$GetProfile$driver$car.stub(TRes res) =
      _CopyWithStubImpl$Query$GetProfile$driver$car;

  TRes call({String? name});
}

class _CopyWithImpl$Query$GetProfile$driver$car<TRes>
    implements CopyWith$Query$GetProfile$driver$car<TRes> {
  _CopyWithImpl$Query$GetProfile$driver$car(
    this._instance,
    this._then,
  );

  final Query$GetProfile$driver$car _instance;

  final TRes Function(Query$GetProfile$driver$car) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? name = _undefined}) => _then(Query$GetProfile$driver$car(
      name: name == _undefined || name == null
          ? _instance.name
          : (name as String)));
}

class _CopyWithStubImpl$Query$GetProfile$driver$car<TRes>
    implements CopyWith$Query$GetProfile$driver$car<TRes> {
  _CopyWithStubImpl$Query$GetProfile$driver$car(this._res);

  TRes _res;

  call({String? name}) => _res;
}

class Query$GetProfile$driver$historyOrdersAggregate {
  Query$GetProfile$driver$historyOrdersAggregate({
    this.sum,
    this.count,
  });

  factory Query$GetProfile$driver$historyOrdersAggregate.fromJson(
      Map<String, dynamic> json) {
    final l$sum = json['sum'];
    final l$count = json['count'];
    return Query$GetProfile$driver$historyOrdersAggregate(
      sum: l$sum == null
          ? null
          : Query$GetProfile$driver$historyOrdersAggregate$sum.fromJson(
              (l$sum as Map<String, dynamic>)),
      count: l$count == null
          ? null
          : Query$GetProfile$driver$historyOrdersAggregate$count.fromJson(
              (l$count as Map<String, dynamic>)),
    );
  }

  final Query$GetProfile$driver$historyOrdersAggregate$sum? sum;

  final Query$GetProfile$driver$historyOrdersAggregate$count? count;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$sum = sum;
    _resultData['sum'] = l$sum?.toJson();
    final l$count = count;
    _resultData['count'] = l$count?.toJson();
    return _resultData;
  }

  @override
  int get hashCode {
    final l$sum = sum;
    final l$count = count;
    return Object.hashAll([
      l$sum,
      l$count,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$GetProfile$driver$historyOrdersAggregate) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$sum = sum;
    final lOther$sum = other.sum;
    if (l$sum != lOther$sum) {
      return false;
    }
    final l$count = count;
    final lOther$count = other.count;
    if (l$count != lOther$count) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Query$GetProfile$driver$historyOrdersAggregate
    on Query$GetProfile$driver$historyOrdersAggregate {
  CopyWith$Query$GetProfile$driver$historyOrdersAggregate<
          Query$GetProfile$driver$historyOrdersAggregate>
      get copyWith => CopyWith$Query$GetProfile$driver$historyOrdersAggregate(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$GetProfile$driver$historyOrdersAggregate<TRes> {
  factory CopyWith$Query$GetProfile$driver$historyOrdersAggregate(
    Query$GetProfile$driver$historyOrdersAggregate instance,
    TRes Function(Query$GetProfile$driver$historyOrdersAggregate) then,
  ) = _CopyWithImpl$Query$GetProfile$driver$historyOrdersAggregate;

  factory CopyWith$Query$GetProfile$driver$historyOrdersAggregate.stub(
          TRes res) =
      _CopyWithStubImpl$Query$GetProfile$driver$historyOrdersAggregate;

  TRes call({
    Query$GetProfile$driver$historyOrdersAggregate$sum? sum,
    Query$GetProfile$driver$historyOrdersAggregate$count? count,
  });
  CopyWith$Query$GetProfile$driver$historyOrdersAggregate$sum<TRes> get sum;
  CopyWith$Query$GetProfile$driver$historyOrdersAggregate$count<TRes> get count;
}

class _CopyWithImpl$Query$GetProfile$driver$historyOrdersAggregate<TRes>
    implements CopyWith$Query$GetProfile$driver$historyOrdersAggregate<TRes> {
  _CopyWithImpl$Query$GetProfile$driver$historyOrdersAggregate(
    this._instance,
    this._then,
  );

  final Query$GetProfile$driver$historyOrdersAggregate _instance;

  final TRes Function(Query$GetProfile$driver$historyOrdersAggregate) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? sum = _undefined,
    Object? count = _undefined,
  }) =>
      _then(Query$GetProfile$driver$historyOrdersAggregate(
        sum: sum == _undefined
            ? _instance.sum
            : (sum as Query$GetProfile$driver$historyOrdersAggregate$sum?),
        count: count == _undefined
            ? _instance.count
            : (count as Query$GetProfile$driver$historyOrdersAggregate$count?),
      ));
  CopyWith$Query$GetProfile$driver$historyOrdersAggregate$sum<TRes> get sum {
    final local$sum = _instance.sum;
    return local$sum == null
        ? CopyWith$Query$GetProfile$driver$historyOrdersAggregate$sum.stub(
            _then(_instance))
        : CopyWith$Query$GetProfile$driver$historyOrdersAggregate$sum(
            local$sum, (e) => call(sum: e));
  }

  CopyWith$Query$GetProfile$driver$historyOrdersAggregate$count<TRes>
      get count {
    final local$count = _instance.count;
    return local$count == null
        ? CopyWith$Query$GetProfile$driver$historyOrdersAggregate$count.stub(
            _then(_instance))
        : CopyWith$Query$GetProfile$driver$historyOrdersAggregate$count(
            local$count, (e) => call(count: e));
  }
}

class _CopyWithStubImpl$Query$GetProfile$driver$historyOrdersAggregate<TRes>
    implements CopyWith$Query$GetProfile$driver$historyOrdersAggregate<TRes> {
  _CopyWithStubImpl$Query$GetProfile$driver$historyOrdersAggregate(this._res);

  TRes _res;

  call({
    Query$GetProfile$driver$historyOrdersAggregate$sum? sum,
    Query$GetProfile$driver$historyOrdersAggregate$count? count,
  }) =>
      _res;
  CopyWith$Query$GetProfile$driver$historyOrdersAggregate$sum<TRes> get sum =>
      CopyWith$Query$GetProfile$driver$historyOrdersAggregate$sum.stub(_res);
  CopyWith$Query$GetProfile$driver$historyOrdersAggregate$count<TRes>
      get count =>
          CopyWith$Query$GetProfile$driver$historyOrdersAggregate$count.stub(
              _res);
}

class Query$GetProfile$driver$historyOrdersAggregate$sum {
  Query$GetProfile$driver$historyOrdersAggregate$sum({this.distanceBest});

  factory Query$GetProfile$driver$historyOrdersAggregate$sum.fromJson(
      Map<String, dynamic> json) {
    final l$distanceBest = json['distanceBest'];
    return Query$GetProfile$driver$historyOrdersAggregate$sum(
        distanceBest: (l$distanceBest as num?)?.toDouble());
  }

  final double? distanceBest;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$distanceBest = distanceBest;
    _resultData['distanceBest'] = l$distanceBest;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$distanceBest = distanceBest;
    return Object.hashAll([l$distanceBest]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$GetProfile$driver$historyOrdersAggregate$sum) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$distanceBest = distanceBest;
    final lOther$distanceBest = other.distanceBest;
    if (l$distanceBest != lOther$distanceBest) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Query$GetProfile$driver$historyOrdersAggregate$sum
    on Query$GetProfile$driver$historyOrdersAggregate$sum {
  CopyWith$Query$GetProfile$driver$historyOrdersAggregate$sum<
          Query$GetProfile$driver$historyOrdersAggregate$sum>
      get copyWith =>
          CopyWith$Query$GetProfile$driver$historyOrdersAggregate$sum(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$GetProfile$driver$historyOrdersAggregate$sum<
    TRes> {
  factory CopyWith$Query$GetProfile$driver$historyOrdersAggregate$sum(
    Query$GetProfile$driver$historyOrdersAggregate$sum instance,
    TRes Function(Query$GetProfile$driver$historyOrdersAggregate$sum) then,
  ) = _CopyWithImpl$Query$GetProfile$driver$historyOrdersAggregate$sum;

  factory CopyWith$Query$GetProfile$driver$historyOrdersAggregate$sum.stub(
          TRes res) =
      _CopyWithStubImpl$Query$GetProfile$driver$historyOrdersAggregate$sum;

  TRes call({double? distanceBest});
}

class _CopyWithImpl$Query$GetProfile$driver$historyOrdersAggregate$sum<TRes>
    implements
        CopyWith$Query$GetProfile$driver$historyOrdersAggregate$sum<TRes> {
  _CopyWithImpl$Query$GetProfile$driver$historyOrdersAggregate$sum(
    this._instance,
    this._then,
  );

  final Query$GetProfile$driver$historyOrdersAggregate$sum _instance;

  final TRes Function(Query$GetProfile$driver$historyOrdersAggregate$sum) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? distanceBest = _undefined}) =>
      _then(Query$GetProfile$driver$historyOrdersAggregate$sum(
          distanceBest: distanceBest == _undefined
              ? _instance.distanceBest
              : (distanceBest as double?)));
}

class _CopyWithStubImpl$Query$GetProfile$driver$historyOrdersAggregate$sum<TRes>
    implements
        CopyWith$Query$GetProfile$driver$historyOrdersAggregate$sum<TRes> {
  _CopyWithStubImpl$Query$GetProfile$driver$historyOrdersAggregate$sum(
      this._res);

  TRes _res;

  call({double? distanceBest}) => _res;
}

class Query$GetProfile$driver$historyOrdersAggregate$count {
  Query$GetProfile$driver$historyOrdersAggregate$count({this.id});

  factory Query$GetProfile$driver$historyOrdersAggregate$count.fromJson(
      Map<String, dynamic> json) {
    final l$id = json['id'];
    return Query$GetProfile$driver$historyOrdersAggregate$count(
        id: (l$id as int?));
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
    if (!(other is Query$GetProfile$driver$historyOrdersAggregate$count) ||
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

extension UtilityExtension$Query$GetProfile$driver$historyOrdersAggregate$count
    on Query$GetProfile$driver$historyOrdersAggregate$count {
  CopyWith$Query$GetProfile$driver$historyOrdersAggregate$count<
          Query$GetProfile$driver$historyOrdersAggregate$count>
      get copyWith =>
          CopyWith$Query$GetProfile$driver$historyOrdersAggregate$count(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$GetProfile$driver$historyOrdersAggregate$count<
    TRes> {
  factory CopyWith$Query$GetProfile$driver$historyOrdersAggregate$count(
    Query$GetProfile$driver$historyOrdersAggregate$count instance,
    TRes Function(Query$GetProfile$driver$historyOrdersAggregate$count) then,
  ) = _CopyWithImpl$Query$GetProfile$driver$historyOrdersAggregate$count;

  factory CopyWith$Query$GetProfile$driver$historyOrdersAggregate$count.stub(
          TRes res) =
      _CopyWithStubImpl$Query$GetProfile$driver$historyOrdersAggregate$count;

  TRes call({int? id});
}

class _CopyWithImpl$Query$GetProfile$driver$historyOrdersAggregate$count<TRes>
    implements
        CopyWith$Query$GetProfile$driver$historyOrdersAggregate$count<TRes> {
  _CopyWithImpl$Query$GetProfile$driver$historyOrdersAggregate$count(
    this._instance,
    this._then,
  );

  final Query$GetProfile$driver$historyOrdersAggregate$count _instance;

  final TRes Function(Query$GetProfile$driver$historyOrdersAggregate$count)
      _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? id = _undefined}) =>
      _then(Query$GetProfile$driver$historyOrdersAggregate$count(
          id: id == _undefined ? _instance.id : (id as int?)));
}

class _CopyWithStubImpl$Query$GetProfile$driver$historyOrdersAggregate$count<
        TRes>
    implements
        CopyWith$Query$GetProfile$driver$historyOrdersAggregate$count<TRes> {
  _CopyWithStubImpl$Query$GetProfile$driver$historyOrdersAggregate$count(
      this._res);

  TRes _res;

  call({int? id}) => _res;
}
