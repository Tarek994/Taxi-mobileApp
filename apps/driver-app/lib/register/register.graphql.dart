import '../graphql/order.fragment.graphql.dart';
import '../schema.gql.dart';
import 'dart:async';
import 'package:flutter/widgets.dart' as widgets;
import 'package:gql/ast.dart';
import 'package:graphql/client.dart' as graphql;
import 'package:graphql_flutter/graphql_flutter.dart' as graphql_flutter;

class Variables$Mutation$UpdateProfile {
  factory Variables$Mutation$UpdateProfile(
          {required Input$UpdateDriverInput input}) =>
      Variables$Mutation$UpdateProfile._({
        r'input': input,
      });

  Variables$Mutation$UpdateProfile._(this._$data);

  factory Variables$Mutation$UpdateProfile.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$input = data['input'];
    result$data['input'] =
        Input$UpdateDriverInput.fromJson((l$input as Map<String, dynamic>));
    return Variables$Mutation$UpdateProfile._(result$data);
  }

  Map<String, dynamic> _$data;

  Input$UpdateDriverInput get input =>
      (_$data['input'] as Input$UpdateDriverInput);
  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$input = input;
    result$data['input'] = l$input.toJson();
    return result$data;
  }

  CopyWith$Variables$Mutation$UpdateProfile<Variables$Mutation$UpdateProfile>
      get copyWith => CopyWith$Variables$Mutation$UpdateProfile(
            this,
            (i) => i,
          );
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Variables$Mutation$UpdateProfile) ||
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

abstract class CopyWith$Variables$Mutation$UpdateProfile<TRes> {
  factory CopyWith$Variables$Mutation$UpdateProfile(
    Variables$Mutation$UpdateProfile instance,
    TRes Function(Variables$Mutation$UpdateProfile) then,
  ) = _CopyWithImpl$Variables$Mutation$UpdateProfile;

  factory CopyWith$Variables$Mutation$UpdateProfile.stub(TRes res) =
      _CopyWithStubImpl$Variables$Mutation$UpdateProfile;

  TRes call({Input$UpdateDriverInput? input});
}

class _CopyWithImpl$Variables$Mutation$UpdateProfile<TRes>
    implements CopyWith$Variables$Mutation$UpdateProfile<TRes> {
  _CopyWithImpl$Variables$Mutation$UpdateProfile(
    this._instance,
    this._then,
  );

  final Variables$Mutation$UpdateProfile _instance;

  final TRes Function(Variables$Mutation$UpdateProfile) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? input = _undefined}) =>
      _then(Variables$Mutation$UpdateProfile._({
        ..._instance._$data,
        if (input != _undefined && input != null)
          'input': (input as Input$UpdateDriverInput),
      }));
}

class _CopyWithStubImpl$Variables$Mutation$UpdateProfile<TRes>
    implements CopyWith$Variables$Mutation$UpdateProfile<TRes> {
  _CopyWithStubImpl$Variables$Mutation$UpdateProfile(this._res);

  TRes _res;

  call({Input$UpdateDriverInput? input}) => _res;
}

class Mutation$UpdateProfile {
  Mutation$UpdateProfile({required this.updateOneDriver});

  factory Mutation$UpdateProfile.fromJson(Map<String, dynamic> json) {
    final l$updateOneDriver = json['updateOneDriver'];
    return Mutation$UpdateProfile(
        updateOneDriver: Mutation$UpdateProfile$updateOneDriver.fromJson(
            (l$updateOneDriver as Map<String, dynamic>)));
  }

  final Mutation$UpdateProfile$updateOneDriver updateOneDriver;

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
    if (!(other is Mutation$UpdateProfile) ||
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

extension UtilityExtension$Mutation$UpdateProfile on Mutation$UpdateProfile {
  CopyWith$Mutation$UpdateProfile<Mutation$UpdateProfile> get copyWith =>
      CopyWith$Mutation$UpdateProfile(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$UpdateProfile<TRes> {
  factory CopyWith$Mutation$UpdateProfile(
    Mutation$UpdateProfile instance,
    TRes Function(Mutation$UpdateProfile) then,
  ) = _CopyWithImpl$Mutation$UpdateProfile;

  factory CopyWith$Mutation$UpdateProfile.stub(TRes res) =
      _CopyWithStubImpl$Mutation$UpdateProfile;

  TRes call({Mutation$UpdateProfile$updateOneDriver? updateOneDriver});
  CopyWith$Mutation$UpdateProfile$updateOneDriver<TRes> get updateOneDriver;
}

class _CopyWithImpl$Mutation$UpdateProfile<TRes>
    implements CopyWith$Mutation$UpdateProfile<TRes> {
  _CopyWithImpl$Mutation$UpdateProfile(
    this._instance,
    this._then,
  );

  final Mutation$UpdateProfile _instance;

  final TRes Function(Mutation$UpdateProfile) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? updateOneDriver = _undefined}) => _then(
      Mutation$UpdateProfile(
          updateOneDriver: updateOneDriver == _undefined ||
                  updateOneDriver == null
              ? _instance.updateOneDriver
              : (updateOneDriver as Mutation$UpdateProfile$updateOneDriver)));
  CopyWith$Mutation$UpdateProfile$updateOneDriver<TRes> get updateOneDriver {
    final local$updateOneDriver = _instance.updateOneDriver;
    return CopyWith$Mutation$UpdateProfile$updateOneDriver(
        local$updateOneDriver, (e) => call(updateOneDriver: e));
  }
}

class _CopyWithStubImpl$Mutation$UpdateProfile<TRes>
    implements CopyWith$Mutation$UpdateProfile<TRes> {
  _CopyWithStubImpl$Mutation$UpdateProfile(this._res);

  TRes _res;

  call({Mutation$UpdateProfile$updateOneDriver? updateOneDriver}) => _res;
  CopyWith$Mutation$UpdateProfile$updateOneDriver<TRes> get updateOneDriver =>
      CopyWith$Mutation$UpdateProfile$updateOneDriver.stub(_res);
}

const documentNodeMutationUpdateProfile = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.mutation,
    name: NameNode(value: 'UpdateProfile'),
    variableDefinitions: [
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'input')),
        type: NamedTypeNode(
          name: NameNode(value: 'UpdateDriverInput'),
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
                value: VariableNode(name: NameNode(value: 'input')),
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
Mutation$UpdateProfile _parserFn$Mutation$UpdateProfile(
        Map<String, dynamic> data) =>
    Mutation$UpdateProfile.fromJson(data);
typedef OnMutationCompleted$Mutation$UpdateProfile = FutureOr<void> Function(
  Map<String, dynamic>?,
  Mutation$UpdateProfile?,
);

class Options$Mutation$UpdateProfile
    extends graphql.MutationOptions<Mutation$UpdateProfile> {
  Options$Mutation$UpdateProfile({
    String? operationName,
    required Variables$Mutation$UpdateProfile variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Mutation$UpdateProfile? typedOptimisticResult,
    graphql.Context? context,
    OnMutationCompleted$Mutation$UpdateProfile? onCompleted,
    graphql.OnMutationUpdate<Mutation$UpdateProfile>? update,
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
                        : _parserFn$Mutation$UpdateProfile(data),
                  ),
          update: update,
          onError: onError,
          document: documentNodeMutationUpdateProfile,
          parserFn: _parserFn$Mutation$UpdateProfile,
        );

  final OnMutationCompleted$Mutation$UpdateProfile? onCompletedWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onCompleted == null
            ? super.properties
            : super.properties.where((property) => property != onCompleted),
        onCompletedWithParsed,
      ];
}

class WatchOptions$Mutation$UpdateProfile
    extends graphql.WatchQueryOptions<Mutation$UpdateProfile> {
  WatchOptions$Mutation$UpdateProfile({
    String? operationName,
    required Variables$Mutation$UpdateProfile variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Mutation$UpdateProfile? typedOptimisticResult,
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
          document: documentNodeMutationUpdateProfile,
          pollInterval: pollInterval,
          eagerlyFetchResults: eagerlyFetchResults,
          carryForwardDataOnException: carryForwardDataOnException,
          fetchResults: fetchResults,
          parserFn: _parserFn$Mutation$UpdateProfile,
        );
}

extension ClientExtension$Mutation$UpdateProfile on graphql.GraphQLClient {
  Future<graphql.QueryResult<Mutation$UpdateProfile>> mutate$UpdateProfile(
          Options$Mutation$UpdateProfile options) async =>
      await this.mutate(options);
  graphql.ObservableQuery<Mutation$UpdateProfile> watchMutation$UpdateProfile(
          WatchOptions$Mutation$UpdateProfile options) =>
      this.watchMutation(options);
}

class Mutation$UpdateProfile$HookResult {
  Mutation$UpdateProfile$HookResult(
    this.runMutation,
    this.result,
  );

  final RunMutation$Mutation$UpdateProfile runMutation;

  final graphql.QueryResult<Mutation$UpdateProfile> result;
}

Mutation$UpdateProfile$HookResult useMutation$UpdateProfile(
    [WidgetOptions$Mutation$UpdateProfile? options]) {
  final result = graphql_flutter
      .useMutation(options ?? WidgetOptions$Mutation$UpdateProfile());
  return Mutation$UpdateProfile$HookResult(
    (variables, {optimisticResult, typedOptimisticResult}) =>
        result.runMutation(
      variables.toJson(),
      optimisticResult: optimisticResult ?? typedOptimisticResult?.toJson(),
    ),
    result.result,
  );
}

graphql.ObservableQuery<Mutation$UpdateProfile> useWatchMutation$UpdateProfile(
        WatchOptions$Mutation$UpdateProfile options) =>
    graphql_flutter.useWatchMutation(options);

class WidgetOptions$Mutation$UpdateProfile
    extends graphql.MutationOptions<Mutation$UpdateProfile> {
  WidgetOptions$Mutation$UpdateProfile({
    String? operationName,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Mutation$UpdateProfile? typedOptimisticResult,
    graphql.Context? context,
    OnMutationCompleted$Mutation$UpdateProfile? onCompleted,
    graphql.OnMutationUpdate<Mutation$UpdateProfile>? update,
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
                        : _parserFn$Mutation$UpdateProfile(data),
                  ),
          update: update,
          onError: onError,
          document: documentNodeMutationUpdateProfile,
          parserFn: _parserFn$Mutation$UpdateProfile,
        );

  final OnMutationCompleted$Mutation$UpdateProfile? onCompletedWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onCompleted == null
            ? super.properties
            : super.properties.where((property) => property != onCompleted),
        onCompletedWithParsed,
      ];
}

typedef RunMutation$Mutation$UpdateProfile
    = graphql.MultiSourceResult<Mutation$UpdateProfile> Function(
  Variables$Mutation$UpdateProfile, {
  Object? optimisticResult,
  Mutation$UpdateProfile? typedOptimisticResult,
});
typedef Builder$Mutation$UpdateProfile = widgets.Widget Function(
  RunMutation$Mutation$UpdateProfile,
  graphql.QueryResult<Mutation$UpdateProfile>?,
);

class Mutation$UpdateProfile$Widget
    extends graphql_flutter.Mutation<Mutation$UpdateProfile> {
  Mutation$UpdateProfile$Widget({
    widgets.Key? key,
    WidgetOptions$Mutation$UpdateProfile? options,
    required Builder$Mutation$UpdateProfile builder,
  }) : super(
          key: key,
          options: options ?? WidgetOptions$Mutation$UpdateProfile(),
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

class Mutation$UpdateProfile$updateOneDriver {
  Mutation$UpdateProfile$updateOneDriver({required this.id});

  factory Mutation$UpdateProfile$updateOneDriver.fromJson(
      Map<String, dynamic> json) {
    final l$id = json['id'];
    return Mutation$UpdateProfile$updateOneDriver(id: (l$id as String));
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
    if (!(other is Mutation$UpdateProfile$updateOneDriver) ||
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

extension UtilityExtension$Mutation$UpdateProfile$updateOneDriver
    on Mutation$UpdateProfile$updateOneDriver {
  CopyWith$Mutation$UpdateProfile$updateOneDriver<
          Mutation$UpdateProfile$updateOneDriver>
      get copyWith => CopyWith$Mutation$UpdateProfile$updateOneDriver(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Mutation$UpdateProfile$updateOneDriver<TRes> {
  factory CopyWith$Mutation$UpdateProfile$updateOneDriver(
    Mutation$UpdateProfile$updateOneDriver instance,
    TRes Function(Mutation$UpdateProfile$updateOneDriver) then,
  ) = _CopyWithImpl$Mutation$UpdateProfile$updateOneDriver;

  factory CopyWith$Mutation$UpdateProfile$updateOneDriver.stub(TRes res) =
      _CopyWithStubImpl$Mutation$UpdateProfile$updateOneDriver;

  TRes call({String? id});
}

class _CopyWithImpl$Mutation$UpdateProfile$updateOneDriver<TRes>
    implements CopyWith$Mutation$UpdateProfile$updateOneDriver<TRes> {
  _CopyWithImpl$Mutation$UpdateProfile$updateOneDriver(
    this._instance,
    this._then,
  );

  final Mutation$UpdateProfile$updateOneDriver _instance;

  final TRes Function(Mutation$UpdateProfile$updateOneDriver) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? id = _undefined}) =>
      _then(Mutation$UpdateProfile$updateOneDriver(
          id: id == _undefined || id == null ? _instance.id : (id as String)));
}

class _CopyWithStubImpl$Mutation$UpdateProfile$updateOneDriver<TRes>
    implements CopyWith$Mutation$UpdateProfile$updateOneDriver<TRes> {
  _CopyWithStubImpl$Mutation$UpdateProfile$updateOneDriver(this._res);

  TRes _res;

  call({String? id}) => _res;
}

class Query$GetDriver {
  Query$GetDriver({
    this.driver,
    required this.carModels,
    required this.carColors,
  });

  factory Query$GetDriver.fromJson(Map<String, dynamic> json) {
    final l$driver = json['driver'];
    final l$carModels = json['carModels'];
    final l$carColors = json['carColors'];
    return Query$GetDriver(
      driver: l$driver == null
          ? null
          : Query$GetDriver$driver.fromJson((l$driver as Map<String, dynamic>)),
      carModels: (l$carModels as List<dynamic>)
          .map((e) =>
              Query$GetDriver$carModels.fromJson((e as Map<String, dynamic>)))
          .toList(),
      carColors: (l$carColors as List<dynamic>)
          .map((e) =>
              Query$GetDriver$carColors.fromJson((e as Map<String, dynamic>)))
          .toList(),
    );
  }

  final Query$GetDriver$driver? driver;

  final List<Query$GetDriver$carModels> carModels;

  final List<Query$GetDriver$carColors> carColors;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$driver = driver;
    _resultData['driver'] = l$driver?.toJson();
    final l$carModels = carModels;
    _resultData['carModels'] = l$carModels.map((e) => e.toJson()).toList();
    final l$carColors = carColors;
    _resultData['carColors'] = l$carColors.map((e) => e.toJson()).toList();
    return _resultData;
  }

  @override
  int get hashCode {
    final l$driver = driver;
    final l$carModels = carModels;
    final l$carColors = carColors;
    return Object.hashAll([
      l$driver,
      Object.hashAll(l$carModels.map((v) => v)),
      Object.hashAll(l$carColors.map((v) => v)),
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$GetDriver) || runtimeType != other.runtimeType) {
      return false;
    }
    final l$driver = driver;
    final lOther$driver = other.driver;
    if (l$driver != lOther$driver) {
      return false;
    }
    final l$carModels = carModels;
    final lOther$carModels = other.carModels;
    if (l$carModels.length != lOther$carModels.length) {
      return false;
    }
    for (int i = 0; i < l$carModels.length; i++) {
      final l$carModels$entry = l$carModels[i];
      final lOther$carModels$entry = lOther$carModels[i];
      if (l$carModels$entry != lOther$carModels$entry) {
        return false;
      }
    }
    final l$carColors = carColors;
    final lOther$carColors = other.carColors;
    if (l$carColors.length != lOther$carColors.length) {
      return false;
    }
    for (int i = 0; i < l$carColors.length; i++) {
      final l$carColors$entry = l$carColors[i];
      final lOther$carColors$entry = lOther$carColors[i];
      if (l$carColors$entry != lOther$carColors$entry) {
        return false;
      }
    }
    return true;
  }
}

extension UtilityExtension$Query$GetDriver on Query$GetDriver {
  CopyWith$Query$GetDriver<Query$GetDriver> get copyWith =>
      CopyWith$Query$GetDriver(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$GetDriver<TRes> {
  factory CopyWith$Query$GetDriver(
    Query$GetDriver instance,
    TRes Function(Query$GetDriver) then,
  ) = _CopyWithImpl$Query$GetDriver;

  factory CopyWith$Query$GetDriver.stub(TRes res) =
      _CopyWithStubImpl$Query$GetDriver;

  TRes call({
    Query$GetDriver$driver? driver,
    List<Query$GetDriver$carModels>? carModels,
    List<Query$GetDriver$carColors>? carColors,
  });
  CopyWith$Query$GetDriver$driver<TRes> get driver;
  TRes carModels(
      Iterable<Query$GetDriver$carModels> Function(
              Iterable<
                  CopyWith$Query$GetDriver$carModels<
                      Query$GetDriver$carModels>>)
          _fn);
  TRes carColors(
      Iterable<Query$GetDriver$carColors> Function(
              Iterable<
                  CopyWith$Query$GetDriver$carColors<
                      Query$GetDriver$carColors>>)
          _fn);
}

class _CopyWithImpl$Query$GetDriver<TRes>
    implements CopyWith$Query$GetDriver<TRes> {
  _CopyWithImpl$Query$GetDriver(
    this._instance,
    this._then,
  );

  final Query$GetDriver _instance;

  final TRes Function(Query$GetDriver) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? driver = _undefined,
    Object? carModels = _undefined,
    Object? carColors = _undefined,
  }) =>
      _then(Query$GetDriver(
        driver: driver == _undefined
            ? _instance.driver
            : (driver as Query$GetDriver$driver?),
        carModels: carModels == _undefined || carModels == null
            ? _instance.carModels
            : (carModels as List<Query$GetDriver$carModels>),
        carColors: carColors == _undefined || carColors == null
            ? _instance.carColors
            : (carColors as List<Query$GetDriver$carColors>),
      ));
  CopyWith$Query$GetDriver$driver<TRes> get driver {
    final local$driver = _instance.driver;
    return local$driver == null
        ? CopyWith$Query$GetDriver$driver.stub(_then(_instance))
        : CopyWith$Query$GetDriver$driver(local$driver, (e) => call(driver: e));
  }

  TRes carModels(
          Iterable<Query$GetDriver$carModels> Function(
                  Iterable<
                      CopyWith$Query$GetDriver$carModels<
                          Query$GetDriver$carModels>>)
              _fn) =>
      call(
          carModels: _fn(
              _instance.carModels.map((e) => CopyWith$Query$GetDriver$carModels(
                    e,
                    (i) => i,
                  ))).toList());
  TRes carColors(
          Iterable<Query$GetDriver$carColors> Function(
                  Iterable<
                      CopyWith$Query$GetDriver$carColors<
                          Query$GetDriver$carColors>>)
              _fn) =>
      call(
          carColors: _fn(
              _instance.carColors.map((e) => CopyWith$Query$GetDriver$carColors(
                    e,
                    (i) => i,
                  ))).toList());
}

class _CopyWithStubImpl$Query$GetDriver<TRes>
    implements CopyWith$Query$GetDriver<TRes> {
  _CopyWithStubImpl$Query$GetDriver(this._res);

  TRes _res;

  call({
    Query$GetDriver$driver? driver,
    List<Query$GetDriver$carModels>? carModels,
    List<Query$GetDriver$carColors>? carColors,
  }) =>
      _res;
  CopyWith$Query$GetDriver$driver<TRes> get driver =>
      CopyWith$Query$GetDriver$driver.stub(_res);
  carModels(_fn) => _res;
  carColors(_fn) => _res;
}

const documentNodeQueryGetDriver = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.query,
    name: NameNode(value: 'GetDriver'),
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
            name: NameNode(value: 'status'),
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
            name: NameNode(value: 'gender'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'email'),
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
            name: NameNode(value: 'bankRoutingNumber'),
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
              FragmentSpreadNode(
                name: NameNode(value: 'DriverMedia'),
                directives: [],
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
              FragmentSpreadNode(
                name: NameNode(value: 'DriverMedia'),
                directives: [],
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
            name: NameNode(value: 'carProductionYear'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'certificateNumber'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'carColorId'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'carId'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
        ]),
      ),
      FieldNode(
        name: NameNode(value: 'carModels'),
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
        ]),
      ),
      FieldNode(
        name: NameNode(value: 'carColors'),
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
        ]),
      ),
    ]),
  ),
  fragmentDefinitionDriverMedia,
]);
Query$GetDriver _parserFn$Query$GetDriver(Map<String, dynamic> data) =>
    Query$GetDriver.fromJson(data);
typedef OnQueryComplete$Query$GetDriver = FutureOr<void> Function(
  Map<String, dynamic>?,
  Query$GetDriver?,
);

class Options$Query$GetDriver extends graphql.QueryOptions<Query$GetDriver> {
  Options$Query$GetDriver({
    String? operationName,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Query$GetDriver? typedOptimisticResult,
    Duration? pollInterval,
    graphql.Context? context,
    OnQueryComplete$Query$GetDriver? onComplete,
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
                    data == null ? null : _parserFn$Query$GetDriver(data),
                  ),
          onError: onError,
          document: documentNodeQueryGetDriver,
          parserFn: _parserFn$Query$GetDriver,
        );

  final OnQueryComplete$Query$GetDriver? onCompleteWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onComplete == null
            ? super.properties
            : super.properties.where((property) => property != onComplete),
        onCompleteWithParsed,
      ];
}

class WatchOptions$Query$GetDriver
    extends graphql.WatchQueryOptions<Query$GetDriver> {
  WatchOptions$Query$GetDriver({
    String? operationName,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Query$GetDriver? typedOptimisticResult,
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
          document: documentNodeQueryGetDriver,
          pollInterval: pollInterval,
          eagerlyFetchResults: eagerlyFetchResults,
          carryForwardDataOnException: carryForwardDataOnException,
          fetchResults: fetchResults,
          parserFn: _parserFn$Query$GetDriver,
        );
}

class FetchMoreOptions$Query$GetDriver extends graphql.FetchMoreOptions {
  FetchMoreOptions$Query$GetDriver({required graphql.UpdateQuery updateQuery})
      : super(
          updateQuery: updateQuery,
          document: documentNodeQueryGetDriver,
        );
}

extension ClientExtension$Query$GetDriver on graphql.GraphQLClient {
  Future<graphql.QueryResult<Query$GetDriver>> query$GetDriver(
          [Options$Query$GetDriver? options]) async =>
      await this.query(options ?? Options$Query$GetDriver());
  graphql.ObservableQuery<Query$GetDriver> watchQuery$GetDriver(
          [WatchOptions$Query$GetDriver? options]) =>
      this.watchQuery(options ?? WatchOptions$Query$GetDriver());
  void writeQuery$GetDriver({
    required Query$GetDriver data,
    bool broadcast = true,
  }) =>
      this.writeQuery(
        graphql.Request(
            operation: graphql.Operation(document: documentNodeQueryGetDriver)),
        data: data.toJson(),
        broadcast: broadcast,
      );
  Query$GetDriver? readQuery$GetDriver({bool optimistic = true}) {
    final result = this.readQuery(
      graphql.Request(
          operation: graphql.Operation(document: documentNodeQueryGetDriver)),
      optimistic: optimistic,
    );
    return result == null ? null : Query$GetDriver.fromJson(result);
  }
}

graphql_flutter.QueryHookResult<Query$GetDriver> useQuery$GetDriver(
        [Options$Query$GetDriver? options]) =>
    graphql_flutter.useQuery(options ?? Options$Query$GetDriver());
graphql.ObservableQuery<Query$GetDriver> useWatchQuery$GetDriver(
        [WatchOptions$Query$GetDriver? options]) =>
    graphql_flutter.useWatchQuery(options ?? WatchOptions$Query$GetDriver());

class Query$GetDriver$Widget extends graphql_flutter.Query<Query$GetDriver> {
  Query$GetDriver$Widget({
    widgets.Key? key,
    Options$Query$GetDriver? options,
    required graphql_flutter.QueryBuilder<Query$GetDriver> builder,
  }) : super(
          key: key,
          options: options ?? Options$Query$GetDriver(),
          builder: builder,
        );
}

class Query$GetDriver$driver {
  Query$GetDriver$driver({
    required this.id,
    required this.status,
    this.firstName,
    this.lastName,
    this.gender,
    this.email,
    required this.mobileNumber,
    this.accountNumber,
    this.bankName,
    this.bankRoutingNumber,
    this.address,
    this.documents,
    this.bankSwift,
    this.media,
    this.carPlate,
    this.carProductionYear,
    this.certificateNumber,
    this.carColorId,
    this.carId,
  });

  factory Query$GetDriver$driver.fromJson(Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$status = json['status'];
    final l$firstName = json['firstName'];
    final l$lastName = json['lastName'];
    final l$gender = json['gender'];
    final l$email = json['email'];
    final l$mobileNumber = json['mobileNumber'];
    final l$accountNumber = json['accountNumber'];
    final l$bankName = json['bankName'];
    final l$bankRoutingNumber = json['bankRoutingNumber'];
    final l$address = json['address'];
    final l$documents = json['documents'];
    final l$bankSwift = json['bankSwift'];
    final l$media = json['media'];
    final l$carPlate = json['carPlate'];
    final l$carProductionYear = json['carProductionYear'];
    final l$certificateNumber = json['certificateNumber'];
    final l$carColorId = json['carColorId'];
    final l$carId = json['carId'];
    return Query$GetDriver$driver(
      id: (l$id as String),
      status: fromJson$Enum$DriverStatus((l$status as String)),
      firstName: (l$firstName as String?),
      lastName: (l$lastName as String?),
      gender:
          l$gender == null ? null : fromJson$Enum$Gender((l$gender as String)),
      email: (l$email as String?),
      mobileNumber: (l$mobileNumber as String),
      accountNumber: (l$accountNumber as String?),
      bankName: (l$bankName as String?),
      bankRoutingNumber: (l$bankRoutingNumber as String?),
      address: (l$address as String?),
      documents: (l$documents as List<dynamic>?)
          ?.map((e) => Query$GetDriver$driver$documents.fromJson(
              (e as Map<String, dynamic>)))
          .toList(),
      bankSwift: (l$bankSwift as String?),
      media: l$media == null
          ? null
          : Query$GetDriver$driver$media.fromJson(
              (l$media as Map<String, dynamic>)),
      carPlate: (l$carPlate as String?),
      carProductionYear: (l$carProductionYear as int?),
      certificateNumber: (l$certificateNumber as String?),
      carColorId: (l$carColorId as String?),
      carId: (l$carId as String?),
    );
  }

  final String id;

  final Enum$DriverStatus status;

  final String? firstName;

  final String? lastName;

  final Enum$Gender? gender;

  final String? email;

  final String mobileNumber;

  final String? accountNumber;

  final String? bankName;

  final String? bankRoutingNumber;

  final String? address;

  final List<Query$GetDriver$driver$documents>? documents;

  final String? bankSwift;

  final Query$GetDriver$driver$media? media;

  final String? carPlate;

  final int? carProductionYear;

  final String? certificateNumber;

  final String? carColorId;

  final String? carId;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = l$id;
    final l$status = status;
    _resultData['status'] = toJson$Enum$DriverStatus(l$status);
    final l$firstName = firstName;
    _resultData['firstName'] = l$firstName;
    final l$lastName = lastName;
    _resultData['lastName'] = l$lastName;
    final l$gender = gender;
    _resultData['gender'] =
        l$gender == null ? null : toJson$Enum$Gender(l$gender);
    final l$email = email;
    _resultData['email'] = l$email;
    final l$mobileNumber = mobileNumber;
    _resultData['mobileNumber'] = l$mobileNumber;
    final l$accountNumber = accountNumber;
    _resultData['accountNumber'] = l$accountNumber;
    final l$bankName = bankName;
    _resultData['bankName'] = l$bankName;
    final l$bankRoutingNumber = bankRoutingNumber;
    _resultData['bankRoutingNumber'] = l$bankRoutingNumber;
    final l$address = address;
    _resultData['address'] = l$address;
    final l$documents = documents;
    _resultData['documents'] = l$documents?.map((e) => e.toJson()).toList();
    final l$bankSwift = bankSwift;
    _resultData['bankSwift'] = l$bankSwift;
    final l$media = media;
    _resultData['media'] = l$media?.toJson();
    final l$carPlate = carPlate;
    _resultData['carPlate'] = l$carPlate;
    final l$carProductionYear = carProductionYear;
    _resultData['carProductionYear'] = l$carProductionYear;
    final l$certificateNumber = certificateNumber;
    _resultData['certificateNumber'] = l$certificateNumber;
    final l$carColorId = carColorId;
    _resultData['carColorId'] = l$carColorId;
    final l$carId = carId;
    _resultData['carId'] = l$carId;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$status = status;
    final l$firstName = firstName;
    final l$lastName = lastName;
    final l$gender = gender;
    final l$email = email;
    final l$mobileNumber = mobileNumber;
    final l$accountNumber = accountNumber;
    final l$bankName = bankName;
    final l$bankRoutingNumber = bankRoutingNumber;
    final l$address = address;
    final l$documents = documents;
    final l$bankSwift = bankSwift;
    final l$media = media;
    final l$carPlate = carPlate;
    final l$carProductionYear = carProductionYear;
    final l$certificateNumber = certificateNumber;
    final l$carColorId = carColorId;
    final l$carId = carId;
    return Object.hashAll([
      l$id,
      l$status,
      l$firstName,
      l$lastName,
      l$gender,
      l$email,
      l$mobileNumber,
      l$accountNumber,
      l$bankName,
      l$bankRoutingNumber,
      l$address,
      l$documents == null ? null : Object.hashAll(l$documents.map((v) => v)),
      l$bankSwift,
      l$media,
      l$carPlate,
      l$carProductionYear,
      l$certificateNumber,
      l$carColorId,
      l$carId,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$GetDriver$driver) ||
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
    final l$gender = gender;
    final lOther$gender = other.gender;
    if (l$gender != lOther$gender) {
      return false;
    }
    final l$email = email;
    final lOther$email = other.email;
    if (l$email != lOther$email) {
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
    final l$bankRoutingNumber = bankRoutingNumber;
    final lOther$bankRoutingNumber = other.bankRoutingNumber;
    if (l$bankRoutingNumber != lOther$bankRoutingNumber) {
      return false;
    }
    final l$address = address;
    final lOther$address = other.address;
    if (l$address != lOther$address) {
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
    final l$carProductionYear = carProductionYear;
    final lOther$carProductionYear = other.carProductionYear;
    if (l$carProductionYear != lOther$carProductionYear) {
      return false;
    }
    final l$certificateNumber = certificateNumber;
    final lOther$certificateNumber = other.certificateNumber;
    if (l$certificateNumber != lOther$certificateNumber) {
      return false;
    }
    final l$carColorId = carColorId;
    final lOther$carColorId = other.carColorId;
    if (l$carColorId != lOther$carColorId) {
      return false;
    }
    final l$carId = carId;
    final lOther$carId = other.carId;
    if (l$carId != lOther$carId) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Query$GetDriver$driver on Query$GetDriver$driver {
  CopyWith$Query$GetDriver$driver<Query$GetDriver$driver> get copyWith =>
      CopyWith$Query$GetDriver$driver(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$GetDriver$driver<TRes> {
  factory CopyWith$Query$GetDriver$driver(
    Query$GetDriver$driver instance,
    TRes Function(Query$GetDriver$driver) then,
  ) = _CopyWithImpl$Query$GetDriver$driver;

  factory CopyWith$Query$GetDriver$driver.stub(TRes res) =
      _CopyWithStubImpl$Query$GetDriver$driver;

  TRes call({
    String? id,
    Enum$DriverStatus? status,
    String? firstName,
    String? lastName,
    Enum$Gender? gender,
    String? email,
    String? mobileNumber,
    String? accountNumber,
    String? bankName,
    String? bankRoutingNumber,
    String? address,
    List<Query$GetDriver$driver$documents>? documents,
    String? bankSwift,
    Query$GetDriver$driver$media? media,
    String? carPlate,
    int? carProductionYear,
    String? certificateNumber,
    String? carColorId,
    String? carId,
  });
  TRes documents(
      Iterable<Query$GetDriver$driver$documents>? Function(
              Iterable<
                  CopyWith$Query$GetDriver$driver$documents<
                      Query$GetDriver$driver$documents>>?)
          _fn);
  CopyWith$Query$GetDriver$driver$media<TRes> get media;
}

class _CopyWithImpl$Query$GetDriver$driver<TRes>
    implements CopyWith$Query$GetDriver$driver<TRes> {
  _CopyWithImpl$Query$GetDriver$driver(
    this._instance,
    this._then,
  );

  final Query$GetDriver$driver _instance;

  final TRes Function(Query$GetDriver$driver) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? status = _undefined,
    Object? firstName = _undefined,
    Object? lastName = _undefined,
    Object? gender = _undefined,
    Object? email = _undefined,
    Object? mobileNumber = _undefined,
    Object? accountNumber = _undefined,
    Object? bankName = _undefined,
    Object? bankRoutingNumber = _undefined,
    Object? address = _undefined,
    Object? documents = _undefined,
    Object? bankSwift = _undefined,
    Object? media = _undefined,
    Object? carPlate = _undefined,
    Object? carProductionYear = _undefined,
    Object? certificateNumber = _undefined,
    Object? carColorId = _undefined,
    Object? carId = _undefined,
  }) =>
      _then(Query$GetDriver$driver(
        id: id == _undefined || id == null ? _instance.id : (id as String),
        status: status == _undefined || status == null
            ? _instance.status
            : (status as Enum$DriverStatus),
        firstName: firstName == _undefined
            ? _instance.firstName
            : (firstName as String?),
        lastName:
            lastName == _undefined ? _instance.lastName : (lastName as String?),
        gender:
            gender == _undefined ? _instance.gender : (gender as Enum$Gender?),
        email: email == _undefined ? _instance.email : (email as String?),
        mobileNumber: mobileNumber == _undefined || mobileNumber == null
            ? _instance.mobileNumber
            : (mobileNumber as String),
        accountNumber: accountNumber == _undefined
            ? _instance.accountNumber
            : (accountNumber as String?),
        bankName:
            bankName == _undefined ? _instance.bankName : (bankName as String?),
        bankRoutingNumber: bankRoutingNumber == _undefined
            ? _instance.bankRoutingNumber
            : (bankRoutingNumber as String?),
        address:
            address == _undefined ? _instance.address : (address as String?),
        documents: documents == _undefined
            ? _instance.documents
            : (documents as List<Query$GetDriver$driver$documents>?),
        bankSwift: bankSwift == _undefined
            ? _instance.bankSwift
            : (bankSwift as String?),
        media: media == _undefined
            ? _instance.media
            : (media as Query$GetDriver$driver$media?),
        carPlate:
            carPlate == _undefined ? _instance.carPlate : (carPlate as String?),
        carProductionYear: carProductionYear == _undefined
            ? _instance.carProductionYear
            : (carProductionYear as int?),
        certificateNumber: certificateNumber == _undefined
            ? _instance.certificateNumber
            : (certificateNumber as String?),
        carColorId: carColorId == _undefined
            ? _instance.carColorId
            : (carColorId as String?),
        carId: carId == _undefined ? _instance.carId : (carId as String?),
      ));
  TRes documents(
          Iterable<Query$GetDriver$driver$documents>? Function(
                  Iterable<
                      CopyWith$Query$GetDriver$driver$documents<
                          Query$GetDriver$driver$documents>>?)
              _fn) =>
      call(
          documents: _fn(_instance.documents
              ?.map((e) => CopyWith$Query$GetDriver$driver$documents(
                    e,
                    (i) => i,
                  )))?.toList());
  CopyWith$Query$GetDriver$driver$media<TRes> get media {
    final local$media = _instance.media;
    return local$media == null
        ? CopyWith$Query$GetDriver$driver$media.stub(_then(_instance))
        : CopyWith$Query$GetDriver$driver$media(
            local$media, (e) => call(media: e));
  }
}

class _CopyWithStubImpl$Query$GetDriver$driver<TRes>
    implements CopyWith$Query$GetDriver$driver<TRes> {
  _CopyWithStubImpl$Query$GetDriver$driver(this._res);

  TRes _res;

  call({
    String? id,
    Enum$DriverStatus? status,
    String? firstName,
    String? lastName,
    Enum$Gender? gender,
    String? email,
    String? mobileNumber,
    String? accountNumber,
    String? bankName,
    String? bankRoutingNumber,
    String? address,
    List<Query$GetDriver$driver$documents>? documents,
    String? bankSwift,
    Query$GetDriver$driver$media? media,
    String? carPlate,
    int? carProductionYear,
    String? certificateNumber,
    String? carColorId,
    String? carId,
  }) =>
      _res;
  documents(_fn) => _res;
  CopyWith$Query$GetDriver$driver$media<TRes> get media =>
      CopyWith$Query$GetDriver$driver$media.stub(_res);
}

class Query$GetDriver$driver$documents implements Fragment$DriverMedia {
  Query$GetDriver$driver$documents({
    required this.id,
    required this.address,
  });

  factory Query$GetDriver$driver$documents.fromJson(Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$address = json['address'];
    return Query$GetDriver$driver$documents(
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
    if (!(other is Query$GetDriver$driver$documents) ||
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

extension UtilityExtension$Query$GetDriver$driver$documents
    on Query$GetDriver$driver$documents {
  CopyWith$Query$GetDriver$driver$documents<Query$GetDriver$driver$documents>
      get copyWith => CopyWith$Query$GetDriver$driver$documents(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$GetDriver$driver$documents<TRes> {
  factory CopyWith$Query$GetDriver$driver$documents(
    Query$GetDriver$driver$documents instance,
    TRes Function(Query$GetDriver$driver$documents) then,
  ) = _CopyWithImpl$Query$GetDriver$driver$documents;

  factory CopyWith$Query$GetDriver$driver$documents.stub(TRes res) =
      _CopyWithStubImpl$Query$GetDriver$driver$documents;

  TRes call({
    String? id,
    String? address,
  });
}

class _CopyWithImpl$Query$GetDriver$driver$documents<TRes>
    implements CopyWith$Query$GetDriver$driver$documents<TRes> {
  _CopyWithImpl$Query$GetDriver$driver$documents(
    this._instance,
    this._then,
  );

  final Query$GetDriver$driver$documents _instance;

  final TRes Function(Query$GetDriver$driver$documents) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? address = _undefined,
  }) =>
      _then(Query$GetDriver$driver$documents(
        id: id == _undefined || id == null ? _instance.id : (id as String),
        address: address == _undefined || address == null
            ? _instance.address
            : (address as String),
      ));
}

class _CopyWithStubImpl$Query$GetDriver$driver$documents<TRes>
    implements CopyWith$Query$GetDriver$driver$documents<TRes> {
  _CopyWithStubImpl$Query$GetDriver$driver$documents(this._res);

  TRes _res;

  call({
    String? id,
    String? address,
  }) =>
      _res;
}

class Query$GetDriver$driver$media implements Fragment$DriverMedia {
  Query$GetDriver$driver$media({
    required this.id,
    required this.address,
  });

  factory Query$GetDriver$driver$media.fromJson(Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$address = json['address'];
    return Query$GetDriver$driver$media(
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
    if (!(other is Query$GetDriver$driver$media) ||
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

extension UtilityExtension$Query$GetDriver$driver$media
    on Query$GetDriver$driver$media {
  CopyWith$Query$GetDriver$driver$media<Query$GetDriver$driver$media>
      get copyWith => CopyWith$Query$GetDriver$driver$media(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$GetDriver$driver$media<TRes> {
  factory CopyWith$Query$GetDriver$driver$media(
    Query$GetDriver$driver$media instance,
    TRes Function(Query$GetDriver$driver$media) then,
  ) = _CopyWithImpl$Query$GetDriver$driver$media;

  factory CopyWith$Query$GetDriver$driver$media.stub(TRes res) =
      _CopyWithStubImpl$Query$GetDriver$driver$media;

  TRes call({
    String? id,
    String? address,
  });
}

class _CopyWithImpl$Query$GetDriver$driver$media<TRes>
    implements CopyWith$Query$GetDriver$driver$media<TRes> {
  _CopyWithImpl$Query$GetDriver$driver$media(
    this._instance,
    this._then,
  );

  final Query$GetDriver$driver$media _instance;

  final TRes Function(Query$GetDriver$driver$media) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? address = _undefined,
  }) =>
      _then(Query$GetDriver$driver$media(
        id: id == _undefined || id == null ? _instance.id : (id as String),
        address: address == _undefined || address == null
            ? _instance.address
            : (address as String),
      ));
}

class _CopyWithStubImpl$Query$GetDriver$driver$media<TRes>
    implements CopyWith$Query$GetDriver$driver$media<TRes> {
  _CopyWithStubImpl$Query$GetDriver$driver$media(this._res);

  TRes _res;

  call({
    String? id,
    String? address,
  }) =>
      _res;
}

class Query$GetDriver$carModels {
  Query$GetDriver$carModels({
    required this.id,
    required this.name,
  });

  factory Query$GetDriver$carModels.fromJson(Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$name = json['name'];
    return Query$GetDriver$carModels(
      id: (l$id as String),
      name: (l$name as String),
    );
  }

  final String id;

  final String name;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = l$id;
    final l$name = name;
    _resultData['name'] = l$name;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$name = name;
    return Object.hashAll([
      l$id,
      l$name,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$GetDriver$carModels) ||
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
    return true;
  }
}

extension UtilityExtension$Query$GetDriver$carModels
    on Query$GetDriver$carModels {
  CopyWith$Query$GetDriver$carModels<Query$GetDriver$carModels> get copyWith =>
      CopyWith$Query$GetDriver$carModels(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$GetDriver$carModels<TRes> {
  factory CopyWith$Query$GetDriver$carModels(
    Query$GetDriver$carModels instance,
    TRes Function(Query$GetDriver$carModels) then,
  ) = _CopyWithImpl$Query$GetDriver$carModels;

  factory CopyWith$Query$GetDriver$carModels.stub(TRes res) =
      _CopyWithStubImpl$Query$GetDriver$carModels;

  TRes call({
    String? id,
    String? name,
  });
}

class _CopyWithImpl$Query$GetDriver$carModels<TRes>
    implements CopyWith$Query$GetDriver$carModels<TRes> {
  _CopyWithImpl$Query$GetDriver$carModels(
    this._instance,
    this._then,
  );

  final Query$GetDriver$carModels _instance;

  final TRes Function(Query$GetDriver$carModels) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? name = _undefined,
  }) =>
      _then(Query$GetDriver$carModels(
        id: id == _undefined || id == null ? _instance.id : (id as String),
        name: name == _undefined || name == null
            ? _instance.name
            : (name as String),
      ));
}

class _CopyWithStubImpl$Query$GetDriver$carModels<TRes>
    implements CopyWith$Query$GetDriver$carModels<TRes> {
  _CopyWithStubImpl$Query$GetDriver$carModels(this._res);

  TRes _res;

  call({
    String? id,
    String? name,
  }) =>
      _res;
}

class Query$GetDriver$carColors {
  Query$GetDriver$carColors({
    required this.id,
    required this.name,
  });

  factory Query$GetDriver$carColors.fromJson(Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$name = json['name'];
    return Query$GetDriver$carColors(
      id: (l$id as String),
      name: (l$name as String),
    );
  }

  final String id;

  final String name;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = l$id;
    final l$name = name;
    _resultData['name'] = l$name;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$name = name;
    return Object.hashAll([
      l$id,
      l$name,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$GetDriver$carColors) ||
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
    return true;
  }
}

extension UtilityExtension$Query$GetDriver$carColors
    on Query$GetDriver$carColors {
  CopyWith$Query$GetDriver$carColors<Query$GetDriver$carColors> get copyWith =>
      CopyWith$Query$GetDriver$carColors(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$GetDriver$carColors<TRes> {
  factory CopyWith$Query$GetDriver$carColors(
    Query$GetDriver$carColors instance,
    TRes Function(Query$GetDriver$carColors) then,
  ) = _CopyWithImpl$Query$GetDriver$carColors;

  factory CopyWith$Query$GetDriver$carColors.stub(TRes res) =
      _CopyWithStubImpl$Query$GetDriver$carColors;

  TRes call({
    String? id,
    String? name,
  });
}

class _CopyWithImpl$Query$GetDriver$carColors<TRes>
    implements CopyWith$Query$GetDriver$carColors<TRes> {
  _CopyWithImpl$Query$GetDriver$carColors(
    this._instance,
    this._then,
  );

  final Query$GetDriver$carColors _instance;

  final TRes Function(Query$GetDriver$carColors) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? name = _undefined,
  }) =>
      _then(Query$GetDriver$carColors(
        id: id == _undefined || id == null ? _instance.id : (id as String),
        name: name == _undefined || name == null
            ? _instance.name
            : (name as String),
      ));
}

class _CopyWithStubImpl$Query$GetDriver$carColors<TRes>
    implements CopyWith$Query$GetDriver$carColors<TRes> {
  _CopyWithStubImpl$Query$GetDriver$carColors(this._res);

  TRes _res;

  call({
    String? id,
    String? name,
  }) =>
      _res;
}

class Variables$Mutation$Login {
  factory Variables$Mutation$Login({required String firebaseToken}) =>
      Variables$Mutation$Login._({
        r'firebaseToken': firebaseToken,
      });

  Variables$Mutation$Login._(this._$data);

  factory Variables$Mutation$Login.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$firebaseToken = data['firebaseToken'];
    result$data['firebaseToken'] = (l$firebaseToken as String);
    return Variables$Mutation$Login._(result$data);
  }

  Map<String, dynamic> _$data;

  String get firebaseToken => (_$data['firebaseToken'] as String);
  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$firebaseToken = firebaseToken;
    result$data['firebaseToken'] = l$firebaseToken;
    return result$data;
  }

  CopyWith$Variables$Mutation$Login<Variables$Mutation$Login> get copyWith =>
      CopyWith$Variables$Mutation$Login(
        this,
        (i) => i,
      );
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Variables$Mutation$Login) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$firebaseToken = firebaseToken;
    final lOther$firebaseToken = other.firebaseToken;
    if (l$firebaseToken != lOther$firebaseToken) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$firebaseToken = firebaseToken;
    return Object.hashAll([l$firebaseToken]);
  }
}

abstract class CopyWith$Variables$Mutation$Login<TRes> {
  factory CopyWith$Variables$Mutation$Login(
    Variables$Mutation$Login instance,
    TRes Function(Variables$Mutation$Login) then,
  ) = _CopyWithImpl$Variables$Mutation$Login;

  factory CopyWith$Variables$Mutation$Login.stub(TRes res) =
      _CopyWithStubImpl$Variables$Mutation$Login;

  TRes call({String? firebaseToken});
}

class _CopyWithImpl$Variables$Mutation$Login<TRes>
    implements CopyWith$Variables$Mutation$Login<TRes> {
  _CopyWithImpl$Variables$Mutation$Login(
    this._instance,
    this._then,
  );

  final Variables$Mutation$Login _instance;

  final TRes Function(Variables$Mutation$Login) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? firebaseToken = _undefined}) =>
      _then(Variables$Mutation$Login._({
        ..._instance._$data,
        if (firebaseToken != _undefined && firebaseToken != null)
          'firebaseToken': (firebaseToken as String),
      }));
}

class _CopyWithStubImpl$Variables$Mutation$Login<TRes>
    implements CopyWith$Variables$Mutation$Login<TRes> {
  _CopyWithStubImpl$Variables$Mutation$Login(this._res);

  TRes _res;

  call({String? firebaseToken}) => _res;
}

class Mutation$Login {
  Mutation$Login({required this.login});

  factory Mutation$Login.fromJson(Map<String, dynamic> json) {
    final l$login = json['login'];
    return Mutation$Login(
        login:
            Mutation$Login$login.fromJson((l$login as Map<String, dynamic>)));
  }

  final Mutation$Login$login login;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$login = login;
    _resultData['login'] = l$login.toJson();
    return _resultData;
  }

  @override
  int get hashCode {
    final l$login = login;
    return Object.hashAll([l$login]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Mutation$Login) || runtimeType != other.runtimeType) {
      return false;
    }
    final l$login = login;
    final lOther$login = other.login;
    if (l$login != lOther$login) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Mutation$Login on Mutation$Login {
  CopyWith$Mutation$Login<Mutation$Login> get copyWith =>
      CopyWith$Mutation$Login(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$Login<TRes> {
  factory CopyWith$Mutation$Login(
    Mutation$Login instance,
    TRes Function(Mutation$Login) then,
  ) = _CopyWithImpl$Mutation$Login;

  factory CopyWith$Mutation$Login.stub(TRes res) =
      _CopyWithStubImpl$Mutation$Login;

  TRes call({Mutation$Login$login? login});
  CopyWith$Mutation$Login$login<TRes> get login;
}

class _CopyWithImpl$Mutation$Login<TRes>
    implements CopyWith$Mutation$Login<TRes> {
  _CopyWithImpl$Mutation$Login(
    this._instance,
    this._then,
  );

  final Mutation$Login _instance;

  final TRes Function(Mutation$Login) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? login = _undefined}) => _then(Mutation$Login(
      login: login == _undefined || login == null
          ? _instance.login
          : (login as Mutation$Login$login)));
  CopyWith$Mutation$Login$login<TRes> get login {
    final local$login = _instance.login;
    return CopyWith$Mutation$Login$login(local$login, (e) => call(login: e));
  }
}

class _CopyWithStubImpl$Mutation$Login<TRes>
    implements CopyWith$Mutation$Login<TRes> {
  _CopyWithStubImpl$Mutation$Login(this._res);

  TRes _res;

  call({Mutation$Login$login? login}) => _res;
  CopyWith$Mutation$Login$login<TRes> get login =>
      CopyWith$Mutation$Login$login.stub(_res);
}

const documentNodeMutationLogin = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.mutation,
    name: NameNode(value: 'Login'),
    variableDefinitions: [
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'firebaseToken')),
        type: NamedTypeNode(
          name: NameNode(value: 'String'),
          isNonNull: true,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      )
    ],
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
        name: NameNode(value: 'login'),
        alias: null,
        arguments: [
          ArgumentNode(
            name: NameNode(value: 'input'),
            value: ObjectValueNode(fields: [
              ObjectFieldNode(
                name: NameNode(value: 'firebaseToken'),
                value: VariableNode(name: NameNode(value: 'firebaseToken')),
              )
            ]),
          )
        ],
        directives: [],
        selectionSet: SelectionSetNode(selections: [
          FieldNode(
            name: NameNode(value: 'jwtToken'),
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
Mutation$Login _parserFn$Mutation$Login(Map<String, dynamic> data) =>
    Mutation$Login.fromJson(data);
typedef OnMutationCompleted$Mutation$Login = FutureOr<void> Function(
  Map<String, dynamic>?,
  Mutation$Login?,
);

class Options$Mutation$Login extends graphql.MutationOptions<Mutation$Login> {
  Options$Mutation$Login({
    String? operationName,
    required Variables$Mutation$Login variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Mutation$Login? typedOptimisticResult,
    graphql.Context? context,
    OnMutationCompleted$Mutation$Login? onCompleted,
    graphql.OnMutationUpdate<Mutation$Login>? update,
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
                    data == null ? null : _parserFn$Mutation$Login(data),
                  ),
          update: update,
          onError: onError,
          document: documentNodeMutationLogin,
          parserFn: _parserFn$Mutation$Login,
        );

  final OnMutationCompleted$Mutation$Login? onCompletedWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onCompleted == null
            ? super.properties
            : super.properties.where((property) => property != onCompleted),
        onCompletedWithParsed,
      ];
}

class WatchOptions$Mutation$Login
    extends graphql.WatchQueryOptions<Mutation$Login> {
  WatchOptions$Mutation$Login({
    String? operationName,
    required Variables$Mutation$Login variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Mutation$Login? typedOptimisticResult,
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
          document: documentNodeMutationLogin,
          pollInterval: pollInterval,
          eagerlyFetchResults: eagerlyFetchResults,
          carryForwardDataOnException: carryForwardDataOnException,
          fetchResults: fetchResults,
          parserFn: _parserFn$Mutation$Login,
        );
}

extension ClientExtension$Mutation$Login on graphql.GraphQLClient {
  Future<graphql.QueryResult<Mutation$Login>> mutate$Login(
          Options$Mutation$Login options) async =>
      await this.mutate(options);
  graphql.ObservableQuery<Mutation$Login> watchMutation$Login(
          WatchOptions$Mutation$Login options) =>
      this.watchMutation(options);
}

class Mutation$Login$HookResult {
  Mutation$Login$HookResult(
    this.runMutation,
    this.result,
  );

  final RunMutation$Mutation$Login runMutation;

  final graphql.QueryResult<Mutation$Login> result;
}

Mutation$Login$HookResult useMutation$Login(
    [WidgetOptions$Mutation$Login? options]) {
  final result =
      graphql_flutter.useMutation(options ?? WidgetOptions$Mutation$Login());
  return Mutation$Login$HookResult(
    (variables, {optimisticResult, typedOptimisticResult}) =>
        result.runMutation(
      variables.toJson(),
      optimisticResult: optimisticResult ?? typedOptimisticResult?.toJson(),
    ),
    result.result,
  );
}

graphql.ObservableQuery<Mutation$Login> useWatchMutation$Login(
        WatchOptions$Mutation$Login options) =>
    graphql_flutter.useWatchMutation(options);

class WidgetOptions$Mutation$Login
    extends graphql.MutationOptions<Mutation$Login> {
  WidgetOptions$Mutation$Login({
    String? operationName,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Mutation$Login? typedOptimisticResult,
    graphql.Context? context,
    OnMutationCompleted$Mutation$Login? onCompleted,
    graphql.OnMutationUpdate<Mutation$Login>? update,
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
                    data == null ? null : _parserFn$Mutation$Login(data),
                  ),
          update: update,
          onError: onError,
          document: documentNodeMutationLogin,
          parserFn: _parserFn$Mutation$Login,
        );

  final OnMutationCompleted$Mutation$Login? onCompletedWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onCompleted == null
            ? super.properties
            : super.properties.where((property) => property != onCompleted),
        onCompletedWithParsed,
      ];
}

typedef RunMutation$Mutation$Login = graphql.MultiSourceResult<Mutation$Login>
    Function(
  Variables$Mutation$Login, {
  Object? optimisticResult,
  Mutation$Login? typedOptimisticResult,
});
typedef Builder$Mutation$Login = widgets.Widget Function(
  RunMutation$Mutation$Login,
  graphql.QueryResult<Mutation$Login>?,
);

class Mutation$Login$Widget extends graphql_flutter.Mutation<Mutation$Login> {
  Mutation$Login$Widget({
    widgets.Key? key,
    WidgetOptions$Mutation$Login? options,
    required Builder$Mutation$Login builder,
  }) : super(
          key: key,
          options: options ?? WidgetOptions$Mutation$Login(),
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

class Mutation$Login$login {
  Mutation$Login$login({required this.jwtToken});

  factory Mutation$Login$login.fromJson(Map<String, dynamic> json) {
    final l$jwtToken = json['jwtToken'];
    return Mutation$Login$login(jwtToken: (l$jwtToken as String));
  }

  final String jwtToken;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$jwtToken = jwtToken;
    _resultData['jwtToken'] = l$jwtToken;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$jwtToken = jwtToken;
    return Object.hashAll([l$jwtToken]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Mutation$Login$login) || runtimeType != other.runtimeType) {
      return false;
    }
    final l$jwtToken = jwtToken;
    final lOther$jwtToken = other.jwtToken;
    if (l$jwtToken != lOther$jwtToken) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Mutation$Login$login on Mutation$Login$login {
  CopyWith$Mutation$Login$login<Mutation$Login$login> get copyWith =>
      CopyWith$Mutation$Login$login(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$Login$login<TRes> {
  factory CopyWith$Mutation$Login$login(
    Mutation$Login$login instance,
    TRes Function(Mutation$Login$login) then,
  ) = _CopyWithImpl$Mutation$Login$login;

  factory CopyWith$Mutation$Login$login.stub(TRes res) =
      _CopyWithStubImpl$Mutation$Login$login;

  TRes call({String? jwtToken});
}

class _CopyWithImpl$Mutation$Login$login<TRes>
    implements CopyWith$Mutation$Login$login<TRes> {
  _CopyWithImpl$Mutation$Login$login(
    this._instance,
    this._then,
  );

  final Mutation$Login$login _instance;

  final TRes Function(Mutation$Login$login) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? jwtToken = _undefined}) => _then(Mutation$Login$login(
      jwtToken: jwtToken == _undefined || jwtToken == null
          ? _instance.jwtToken
          : (jwtToken as String)));
}

class _CopyWithStubImpl$Mutation$Login$login<TRes>
    implements CopyWith$Mutation$Login$login<TRes> {
  _CopyWithStubImpl$Mutation$Login$login(this._res);

  TRes _res;

  call({String? jwtToken}) => _res;
}

class Variables$Mutation$SetDocumentsOnDriver {
  factory Variables$Mutation$SetDocumentsOnDriver({
    required String driverId,
    required List<String> relationIds,
  }) =>
      Variables$Mutation$SetDocumentsOnDriver._({
        r'driverId': driverId,
        r'relationIds': relationIds,
      });

  Variables$Mutation$SetDocumentsOnDriver._(this._$data);

  factory Variables$Mutation$SetDocumentsOnDriver.fromJson(
      Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$driverId = data['driverId'];
    result$data['driverId'] = (l$driverId as String);
    final l$relationIds = data['relationIds'];
    result$data['relationIds'] =
        (l$relationIds as List<dynamic>).map((e) => (e as String)).toList();
    return Variables$Mutation$SetDocumentsOnDriver._(result$data);
  }

  Map<String, dynamic> _$data;

  String get driverId => (_$data['driverId'] as String);
  List<String> get relationIds => (_$data['relationIds'] as List<String>);
  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$driverId = driverId;
    result$data['driverId'] = l$driverId;
    final l$relationIds = relationIds;
    result$data['relationIds'] = l$relationIds.map((e) => e).toList();
    return result$data;
  }

  CopyWith$Variables$Mutation$SetDocumentsOnDriver<
          Variables$Mutation$SetDocumentsOnDriver>
      get copyWith => CopyWith$Variables$Mutation$SetDocumentsOnDriver(
            this,
            (i) => i,
          );
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Variables$Mutation$SetDocumentsOnDriver) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$driverId = driverId;
    final lOther$driverId = other.driverId;
    if (l$driverId != lOther$driverId) {
      return false;
    }
    final l$relationIds = relationIds;
    final lOther$relationIds = other.relationIds;
    if (l$relationIds.length != lOther$relationIds.length) {
      return false;
    }
    for (int i = 0; i < l$relationIds.length; i++) {
      final l$relationIds$entry = l$relationIds[i];
      final lOther$relationIds$entry = lOther$relationIds[i];
      if (l$relationIds$entry != lOther$relationIds$entry) {
        return false;
      }
    }
    return true;
  }

  @override
  int get hashCode {
    final l$driverId = driverId;
    final l$relationIds = relationIds;
    return Object.hashAll([
      l$driverId,
      Object.hashAll(l$relationIds.map((v) => v)),
    ]);
  }
}

abstract class CopyWith$Variables$Mutation$SetDocumentsOnDriver<TRes> {
  factory CopyWith$Variables$Mutation$SetDocumentsOnDriver(
    Variables$Mutation$SetDocumentsOnDriver instance,
    TRes Function(Variables$Mutation$SetDocumentsOnDriver) then,
  ) = _CopyWithImpl$Variables$Mutation$SetDocumentsOnDriver;

  factory CopyWith$Variables$Mutation$SetDocumentsOnDriver.stub(TRes res) =
      _CopyWithStubImpl$Variables$Mutation$SetDocumentsOnDriver;

  TRes call({
    String? driverId,
    List<String>? relationIds,
  });
}

class _CopyWithImpl$Variables$Mutation$SetDocumentsOnDriver<TRes>
    implements CopyWith$Variables$Mutation$SetDocumentsOnDriver<TRes> {
  _CopyWithImpl$Variables$Mutation$SetDocumentsOnDriver(
    this._instance,
    this._then,
  );

  final Variables$Mutation$SetDocumentsOnDriver _instance;

  final TRes Function(Variables$Mutation$SetDocumentsOnDriver) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? driverId = _undefined,
    Object? relationIds = _undefined,
  }) =>
      _then(Variables$Mutation$SetDocumentsOnDriver._({
        ..._instance._$data,
        if (driverId != _undefined && driverId != null)
          'driverId': (driverId as String),
        if (relationIds != _undefined && relationIds != null)
          'relationIds': (relationIds as List<String>),
      }));
}

class _CopyWithStubImpl$Variables$Mutation$SetDocumentsOnDriver<TRes>
    implements CopyWith$Variables$Mutation$SetDocumentsOnDriver<TRes> {
  _CopyWithStubImpl$Variables$Mutation$SetDocumentsOnDriver(this._res);

  TRes _res;

  call({
    String? driverId,
    List<String>? relationIds,
  }) =>
      _res;
}

class Mutation$SetDocumentsOnDriver {
  Mutation$SetDocumentsOnDriver({
    required this.updateOneDriver,
    required this.setDocumentsOnDriver,
  });

  factory Mutation$SetDocumentsOnDriver.fromJson(Map<String, dynamic> json) {
    final l$updateOneDriver = json['updateOneDriver'];
    final l$setDocumentsOnDriver = json['setDocumentsOnDriver'];
    return Mutation$SetDocumentsOnDriver(
      updateOneDriver: Fragment$BasicProfile.fromJson(
          (l$updateOneDriver as Map<String, dynamic>)),
      setDocumentsOnDriver: Fragment$BasicProfile.fromJson(
          (l$setDocumentsOnDriver as Map<String, dynamic>)),
    );
  }

  final Fragment$BasicProfile updateOneDriver;

  final Fragment$BasicProfile setDocumentsOnDriver;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$updateOneDriver = updateOneDriver;
    _resultData['updateOneDriver'] = l$updateOneDriver.toJson();
    final l$setDocumentsOnDriver = setDocumentsOnDriver;
    _resultData['setDocumentsOnDriver'] = l$setDocumentsOnDriver.toJson();
    return _resultData;
  }

  @override
  int get hashCode {
    final l$updateOneDriver = updateOneDriver;
    final l$setDocumentsOnDriver = setDocumentsOnDriver;
    return Object.hashAll([
      l$updateOneDriver,
      l$setDocumentsOnDriver,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Mutation$SetDocumentsOnDriver) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$updateOneDriver = updateOneDriver;
    final lOther$updateOneDriver = other.updateOneDriver;
    if (l$updateOneDriver != lOther$updateOneDriver) {
      return false;
    }
    final l$setDocumentsOnDriver = setDocumentsOnDriver;
    final lOther$setDocumentsOnDriver = other.setDocumentsOnDriver;
    if (l$setDocumentsOnDriver != lOther$setDocumentsOnDriver) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Mutation$SetDocumentsOnDriver
    on Mutation$SetDocumentsOnDriver {
  CopyWith$Mutation$SetDocumentsOnDriver<Mutation$SetDocumentsOnDriver>
      get copyWith => CopyWith$Mutation$SetDocumentsOnDriver(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Mutation$SetDocumentsOnDriver<TRes> {
  factory CopyWith$Mutation$SetDocumentsOnDriver(
    Mutation$SetDocumentsOnDriver instance,
    TRes Function(Mutation$SetDocumentsOnDriver) then,
  ) = _CopyWithImpl$Mutation$SetDocumentsOnDriver;

  factory CopyWith$Mutation$SetDocumentsOnDriver.stub(TRes res) =
      _CopyWithStubImpl$Mutation$SetDocumentsOnDriver;

  TRes call({
    Fragment$BasicProfile? updateOneDriver,
    Fragment$BasicProfile? setDocumentsOnDriver,
  });
  CopyWith$Fragment$BasicProfile<TRes> get updateOneDriver;
  CopyWith$Fragment$BasicProfile<TRes> get setDocumentsOnDriver;
}

class _CopyWithImpl$Mutation$SetDocumentsOnDriver<TRes>
    implements CopyWith$Mutation$SetDocumentsOnDriver<TRes> {
  _CopyWithImpl$Mutation$SetDocumentsOnDriver(
    this._instance,
    this._then,
  );

  final Mutation$SetDocumentsOnDriver _instance;

  final TRes Function(Mutation$SetDocumentsOnDriver) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? updateOneDriver = _undefined,
    Object? setDocumentsOnDriver = _undefined,
  }) =>
      _then(Mutation$SetDocumentsOnDriver(
        updateOneDriver:
            updateOneDriver == _undefined || updateOneDriver == null
                ? _instance.updateOneDriver
                : (updateOneDriver as Fragment$BasicProfile),
        setDocumentsOnDriver:
            setDocumentsOnDriver == _undefined || setDocumentsOnDriver == null
                ? _instance.setDocumentsOnDriver
                : (setDocumentsOnDriver as Fragment$BasicProfile),
      ));
  CopyWith$Fragment$BasicProfile<TRes> get updateOneDriver {
    final local$updateOneDriver = _instance.updateOneDriver;
    return CopyWith$Fragment$BasicProfile(
        local$updateOneDriver, (e) => call(updateOneDriver: e));
  }

  CopyWith$Fragment$BasicProfile<TRes> get setDocumentsOnDriver {
    final local$setDocumentsOnDriver = _instance.setDocumentsOnDriver;
    return CopyWith$Fragment$BasicProfile(
        local$setDocumentsOnDriver, (e) => call(setDocumentsOnDriver: e));
  }
}

class _CopyWithStubImpl$Mutation$SetDocumentsOnDriver<TRes>
    implements CopyWith$Mutation$SetDocumentsOnDriver<TRes> {
  _CopyWithStubImpl$Mutation$SetDocumentsOnDriver(this._res);

  TRes _res;

  call({
    Fragment$BasicProfile? updateOneDriver,
    Fragment$BasicProfile? setDocumentsOnDriver,
  }) =>
      _res;
  CopyWith$Fragment$BasicProfile<TRes> get updateOneDriver =>
      CopyWith$Fragment$BasicProfile.stub(_res);
  CopyWith$Fragment$BasicProfile<TRes> get setDocumentsOnDriver =>
      CopyWith$Fragment$BasicProfile.stub(_res);
}

const documentNodeMutationSetDocumentsOnDriver = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.mutation,
    name: NameNode(value: 'SetDocumentsOnDriver'),
    variableDefinitions: [
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'driverId')),
        type: NamedTypeNode(
          name: NameNode(value: 'ID'),
          isNonNull: true,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      ),
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'relationIds')),
        type: ListTypeNode(
          type: NamedTypeNode(
            name: NameNode(value: 'ID'),
            isNonNull: true,
          ),
          isNonNull: true,
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
                value: VariableNode(name: NameNode(value: 'driverId')),
              ),
              ObjectFieldNode(
                name: NameNode(value: 'update'),
                value: ObjectValueNode(fields: [
                  ObjectFieldNode(
                    name: NameNode(value: 'status'),
                    value:
                        EnumValueNode(name: NameNode(value: 'PendingApproval')),
                  )
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
      ),
      FieldNode(
        name: NameNode(value: 'setDocumentsOnDriver'),
        alias: null,
        arguments: [
          ArgumentNode(
            name: NameNode(value: 'input'),
            value: ObjectValueNode(fields: [
              ObjectFieldNode(
                name: NameNode(value: 'id'),
                value: VariableNode(name: NameNode(value: 'driverId')),
              ),
              ObjectFieldNode(
                name: NameNode(value: 'relationIds'),
                value: VariableNode(name: NameNode(value: 'relationIds')),
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
      ),
    ]),
  ),
  fragmentDefinitionBasicProfile,
  fragmentDefinitionCurrentOrder,
  fragmentDefinitionPoint,
]);
Mutation$SetDocumentsOnDriver _parserFn$Mutation$SetDocumentsOnDriver(
        Map<String, dynamic> data) =>
    Mutation$SetDocumentsOnDriver.fromJson(data);
typedef OnMutationCompleted$Mutation$SetDocumentsOnDriver = FutureOr<void>
    Function(
  Map<String, dynamic>?,
  Mutation$SetDocumentsOnDriver?,
);

class Options$Mutation$SetDocumentsOnDriver
    extends graphql.MutationOptions<Mutation$SetDocumentsOnDriver> {
  Options$Mutation$SetDocumentsOnDriver({
    String? operationName,
    required Variables$Mutation$SetDocumentsOnDriver variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Mutation$SetDocumentsOnDriver? typedOptimisticResult,
    graphql.Context? context,
    OnMutationCompleted$Mutation$SetDocumentsOnDriver? onCompleted,
    graphql.OnMutationUpdate<Mutation$SetDocumentsOnDriver>? update,
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
                        : _parserFn$Mutation$SetDocumentsOnDriver(data),
                  ),
          update: update,
          onError: onError,
          document: documentNodeMutationSetDocumentsOnDriver,
          parserFn: _parserFn$Mutation$SetDocumentsOnDriver,
        );

  final OnMutationCompleted$Mutation$SetDocumentsOnDriver?
      onCompletedWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onCompleted == null
            ? super.properties
            : super.properties.where((property) => property != onCompleted),
        onCompletedWithParsed,
      ];
}

class WatchOptions$Mutation$SetDocumentsOnDriver
    extends graphql.WatchQueryOptions<Mutation$SetDocumentsOnDriver> {
  WatchOptions$Mutation$SetDocumentsOnDriver({
    String? operationName,
    required Variables$Mutation$SetDocumentsOnDriver variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Mutation$SetDocumentsOnDriver? typedOptimisticResult,
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
          document: documentNodeMutationSetDocumentsOnDriver,
          pollInterval: pollInterval,
          eagerlyFetchResults: eagerlyFetchResults,
          carryForwardDataOnException: carryForwardDataOnException,
          fetchResults: fetchResults,
          parserFn: _parserFn$Mutation$SetDocumentsOnDriver,
        );
}

extension ClientExtension$Mutation$SetDocumentsOnDriver
    on graphql.GraphQLClient {
  Future<graphql.QueryResult<Mutation$SetDocumentsOnDriver>>
      mutate$SetDocumentsOnDriver(
              Options$Mutation$SetDocumentsOnDriver options) async =>
          await this.mutate(options);
  graphql.ObservableQuery<Mutation$SetDocumentsOnDriver>
      watchMutation$SetDocumentsOnDriver(
              WatchOptions$Mutation$SetDocumentsOnDriver options) =>
          this.watchMutation(options);
}

class Mutation$SetDocumentsOnDriver$HookResult {
  Mutation$SetDocumentsOnDriver$HookResult(
    this.runMutation,
    this.result,
  );

  final RunMutation$Mutation$SetDocumentsOnDriver runMutation;

  final graphql.QueryResult<Mutation$SetDocumentsOnDriver> result;
}

Mutation$SetDocumentsOnDriver$HookResult useMutation$SetDocumentsOnDriver(
    [WidgetOptions$Mutation$SetDocumentsOnDriver? options]) {
  final result = graphql_flutter
      .useMutation(options ?? WidgetOptions$Mutation$SetDocumentsOnDriver());
  return Mutation$SetDocumentsOnDriver$HookResult(
    (variables, {optimisticResult, typedOptimisticResult}) =>
        result.runMutation(
      variables.toJson(),
      optimisticResult: optimisticResult ?? typedOptimisticResult?.toJson(),
    ),
    result.result,
  );
}

graphql.ObservableQuery<Mutation$SetDocumentsOnDriver>
    useWatchMutation$SetDocumentsOnDriver(
            WatchOptions$Mutation$SetDocumentsOnDriver options) =>
        graphql_flutter.useWatchMutation(options);

class WidgetOptions$Mutation$SetDocumentsOnDriver
    extends graphql.MutationOptions<Mutation$SetDocumentsOnDriver> {
  WidgetOptions$Mutation$SetDocumentsOnDriver({
    String? operationName,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Mutation$SetDocumentsOnDriver? typedOptimisticResult,
    graphql.Context? context,
    OnMutationCompleted$Mutation$SetDocumentsOnDriver? onCompleted,
    graphql.OnMutationUpdate<Mutation$SetDocumentsOnDriver>? update,
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
                        : _parserFn$Mutation$SetDocumentsOnDriver(data),
                  ),
          update: update,
          onError: onError,
          document: documentNodeMutationSetDocumentsOnDriver,
          parserFn: _parserFn$Mutation$SetDocumentsOnDriver,
        );

  final OnMutationCompleted$Mutation$SetDocumentsOnDriver?
      onCompletedWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onCompleted == null
            ? super.properties
            : super.properties.where((property) => property != onCompleted),
        onCompletedWithParsed,
      ];
}

typedef RunMutation$Mutation$SetDocumentsOnDriver
    = graphql.MultiSourceResult<Mutation$SetDocumentsOnDriver> Function(
  Variables$Mutation$SetDocumentsOnDriver, {
  Object? optimisticResult,
  Mutation$SetDocumentsOnDriver? typedOptimisticResult,
});
typedef Builder$Mutation$SetDocumentsOnDriver = widgets.Widget Function(
  RunMutation$Mutation$SetDocumentsOnDriver,
  graphql.QueryResult<Mutation$SetDocumentsOnDriver>?,
);

class Mutation$SetDocumentsOnDriver$Widget
    extends graphql_flutter.Mutation<Mutation$SetDocumentsOnDriver> {
  Mutation$SetDocumentsOnDriver$Widget({
    widgets.Key? key,
    WidgetOptions$Mutation$SetDocumentsOnDriver? options,
    required Builder$Mutation$SetDocumentsOnDriver builder,
  }) : super(
          key: key,
          options: options ?? WidgetOptions$Mutation$SetDocumentsOnDriver(),
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

class Mutation$DeleteUser {
  Mutation$DeleteUser({required this.deleteUser});

  factory Mutation$DeleteUser.fromJson(Map<String, dynamic> json) {
    final l$deleteUser = json['deleteUser'];
    return Mutation$DeleteUser(
        deleteUser: Mutation$DeleteUser$deleteUser.fromJson(
            (l$deleteUser as Map<String, dynamic>)));
  }

  final Mutation$DeleteUser$deleteUser deleteUser;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$deleteUser = deleteUser;
    _resultData['deleteUser'] = l$deleteUser.toJson();
    return _resultData;
  }

  @override
  int get hashCode {
    final l$deleteUser = deleteUser;
    return Object.hashAll([l$deleteUser]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Mutation$DeleteUser) || runtimeType != other.runtimeType) {
      return false;
    }
    final l$deleteUser = deleteUser;
    final lOther$deleteUser = other.deleteUser;
    if (l$deleteUser != lOther$deleteUser) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Mutation$DeleteUser on Mutation$DeleteUser {
  CopyWith$Mutation$DeleteUser<Mutation$DeleteUser> get copyWith =>
      CopyWith$Mutation$DeleteUser(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$DeleteUser<TRes> {
  factory CopyWith$Mutation$DeleteUser(
    Mutation$DeleteUser instance,
    TRes Function(Mutation$DeleteUser) then,
  ) = _CopyWithImpl$Mutation$DeleteUser;

  factory CopyWith$Mutation$DeleteUser.stub(TRes res) =
      _CopyWithStubImpl$Mutation$DeleteUser;

  TRes call({Mutation$DeleteUser$deleteUser? deleteUser});
  CopyWith$Mutation$DeleteUser$deleteUser<TRes> get deleteUser;
}

class _CopyWithImpl$Mutation$DeleteUser<TRes>
    implements CopyWith$Mutation$DeleteUser<TRes> {
  _CopyWithImpl$Mutation$DeleteUser(
    this._instance,
    this._then,
  );

  final Mutation$DeleteUser _instance;

  final TRes Function(Mutation$DeleteUser) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? deleteUser = _undefined}) => _then(Mutation$DeleteUser(
      deleteUser: deleteUser == _undefined || deleteUser == null
          ? _instance.deleteUser
          : (deleteUser as Mutation$DeleteUser$deleteUser)));
  CopyWith$Mutation$DeleteUser$deleteUser<TRes> get deleteUser {
    final local$deleteUser = _instance.deleteUser;
    return CopyWith$Mutation$DeleteUser$deleteUser(
        local$deleteUser, (e) => call(deleteUser: e));
  }
}

class _CopyWithStubImpl$Mutation$DeleteUser<TRes>
    implements CopyWith$Mutation$DeleteUser<TRes> {
  _CopyWithStubImpl$Mutation$DeleteUser(this._res);

  TRes _res;

  call({Mutation$DeleteUser$deleteUser? deleteUser}) => _res;
  CopyWith$Mutation$DeleteUser$deleteUser<TRes> get deleteUser =>
      CopyWith$Mutation$DeleteUser$deleteUser.stub(_res);
}

const documentNodeMutationDeleteUser = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.mutation,
    name: NameNode(value: 'DeleteUser'),
    variableDefinitions: [],
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
        name: NameNode(value: 'deleteUser'),
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
Mutation$DeleteUser _parserFn$Mutation$DeleteUser(Map<String, dynamic> data) =>
    Mutation$DeleteUser.fromJson(data);
typedef OnMutationCompleted$Mutation$DeleteUser = FutureOr<void> Function(
  Map<String, dynamic>?,
  Mutation$DeleteUser?,
);

class Options$Mutation$DeleteUser
    extends graphql.MutationOptions<Mutation$DeleteUser> {
  Options$Mutation$DeleteUser({
    String? operationName,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Mutation$DeleteUser? typedOptimisticResult,
    graphql.Context? context,
    OnMutationCompleted$Mutation$DeleteUser? onCompleted,
    graphql.OnMutationUpdate<Mutation$DeleteUser>? update,
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
                    data == null ? null : _parserFn$Mutation$DeleteUser(data),
                  ),
          update: update,
          onError: onError,
          document: documentNodeMutationDeleteUser,
          parserFn: _parserFn$Mutation$DeleteUser,
        );

  final OnMutationCompleted$Mutation$DeleteUser? onCompletedWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onCompleted == null
            ? super.properties
            : super.properties.where((property) => property != onCompleted),
        onCompletedWithParsed,
      ];
}

class WatchOptions$Mutation$DeleteUser
    extends graphql.WatchQueryOptions<Mutation$DeleteUser> {
  WatchOptions$Mutation$DeleteUser({
    String? operationName,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Mutation$DeleteUser? typedOptimisticResult,
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
          document: documentNodeMutationDeleteUser,
          pollInterval: pollInterval,
          eagerlyFetchResults: eagerlyFetchResults,
          carryForwardDataOnException: carryForwardDataOnException,
          fetchResults: fetchResults,
          parserFn: _parserFn$Mutation$DeleteUser,
        );
}

extension ClientExtension$Mutation$DeleteUser on graphql.GraphQLClient {
  Future<graphql.QueryResult<Mutation$DeleteUser>> mutate$DeleteUser(
          [Options$Mutation$DeleteUser? options]) async =>
      await this.mutate(options ?? Options$Mutation$DeleteUser());
  graphql.ObservableQuery<Mutation$DeleteUser> watchMutation$DeleteUser(
          [WatchOptions$Mutation$DeleteUser? options]) =>
      this.watchMutation(options ?? WatchOptions$Mutation$DeleteUser());
}

class Mutation$DeleteUser$HookResult {
  Mutation$DeleteUser$HookResult(
    this.runMutation,
    this.result,
  );

  final RunMutation$Mutation$DeleteUser runMutation;

  final graphql.QueryResult<Mutation$DeleteUser> result;
}

Mutation$DeleteUser$HookResult useMutation$DeleteUser(
    [WidgetOptions$Mutation$DeleteUser? options]) {
  final result = graphql_flutter
      .useMutation(options ?? WidgetOptions$Mutation$DeleteUser());
  return Mutation$DeleteUser$HookResult(
    ({optimisticResult, typedOptimisticResult}) => result.runMutation(
      const {},
      optimisticResult: optimisticResult ?? typedOptimisticResult?.toJson(),
    ),
    result.result,
  );
}

graphql.ObservableQuery<Mutation$DeleteUser> useWatchMutation$DeleteUser(
        [WatchOptions$Mutation$DeleteUser? options]) =>
    graphql_flutter
        .useWatchMutation(options ?? WatchOptions$Mutation$DeleteUser());

class WidgetOptions$Mutation$DeleteUser
    extends graphql.MutationOptions<Mutation$DeleteUser> {
  WidgetOptions$Mutation$DeleteUser({
    String? operationName,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Mutation$DeleteUser? typedOptimisticResult,
    graphql.Context? context,
    OnMutationCompleted$Mutation$DeleteUser? onCompleted,
    graphql.OnMutationUpdate<Mutation$DeleteUser>? update,
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
                    data == null ? null : _parserFn$Mutation$DeleteUser(data),
                  ),
          update: update,
          onError: onError,
          document: documentNodeMutationDeleteUser,
          parserFn: _parserFn$Mutation$DeleteUser,
        );

  final OnMutationCompleted$Mutation$DeleteUser? onCompletedWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onCompleted == null
            ? super.properties
            : super.properties.where((property) => property != onCompleted),
        onCompletedWithParsed,
      ];
}

typedef RunMutation$Mutation$DeleteUser
    = graphql.MultiSourceResult<Mutation$DeleteUser> Function({
  Object? optimisticResult,
  Mutation$DeleteUser? typedOptimisticResult,
});
typedef Builder$Mutation$DeleteUser = widgets.Widget Function(
  RunMutation$Mutation$DeleteUser,
  graphql.QueryResult<Mutation$DeleteUser>?,
);

class Mutation$DeleteUser$Widget
    extends graphql_flutter.Mutation<Mutation$DeleteUser> {
  Mutation$DeleteUser$Widget({
    widgets.Key? key,
    WidgetOptions$Mutation$DeleteUser? options,
    required Builder$Mutation$DeleteUser builder,
  }) : super(
          key: key,
          options: options ?? WidgetOptions$Mutation$DeleteUser(),
          builder: (
            run,
            result,
          ) =>
              builder(
            ({
              optimisticResult,
              typedOptimisticResult,
            }) =>
                run(
              const {},
              optimisticResult:
                  optimisticResult ?? typedOptimisticResult?.toJson(),
            ),
            result,
          ),
        );
}

class Mutation$DeleteUser$deleteUser {
  Mutation$DeleteUser$deleteUser({required this.id});

  factory Mutation$DeleteUser$deleteUser.fromJson(Map<String, dynamic> json) {
    final l$id = json['id'];
    return Mutation$DeleteUser$deleteUser(id: (l$id as String));
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
    if (!(other is Mutation$DeleteUser$deleteUser) ||
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

extension UtilityExtension$Mutation$DeleteUser$deleteUser
    on Mutation$DeleteUser$deleteUser {
  CopyWith$Mutation$DeleteUser$deleteUser<Mutation$DeleteUser$deleteUser>
      get copyWith => CopyWith$Mutation$DeleteUser$deleteUser(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Mutation$DeleteUser$deleteUser<TRes> {
  factory CopyWith$Mutation$DeleteUser$deleteUser(
    Mutation$DeleteUser$deleteUser instance,
    TRes Function(Mutation$DeleteUser$deleteUser) then,
  ) = _CopyWithImpl$Mutation$DeleteUser$deleteUser;

  factory CopyWith$Mutation$DeleteUser$deleteUser.stub(TRes res) =
      _CopyWithStubImpl$Mutation$DeleteUser$deleteUser;

  TRes call({String? id});
}

class _CopyWithImpl$Mutation$DeleteUser$deleteUser<TRes>
    implements CopyWith$Mutation$DeleteUser$deleteUser<TRes> {
  _CopyWithImpl$Mutation$DeleteUser$deleteUser(
    this._instance,
    this._then,
  );

  final Mutation$DeleteUser$deleteUser _instance;

  final TRes Function(Mutation$DeleteUser$deleteUser) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? id = _undefined}) => _then(Mutation$DeleteUser$deleteUser(
      id: id == _undefined || id == null ? _instance.id : (id as String)));
}

class _CopyWithStubImpl$Mutation$DeleteUser$deleteUser<TRes>
    implements CopyWith$Mutation$DeleteUser$deleteUser<TRes> {
  _CopyWithStubImpl$Mutation$DeleteUser$deleteUser(this._res);

  TRes _res;

  call({String? id}) => _res;
}
