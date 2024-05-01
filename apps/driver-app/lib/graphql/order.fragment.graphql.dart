import '../schema.gql.dart';
import 'package:gql/ast.dart';
import 'package:graphql/client.dart' as graphql;
import 'package:ridy/graphql/scalars/connection_cursor.dart';
import 'package:ridy/graphql/scalars/timestamp.dart';

class Fragment$Point {
  Fragment$Point({
    required this.lat,
    required this.lng,
  });

  factory Fragment$Point.fromJson(Map<String, dynamic> json) {
    final l$lat = json['lat'];
    final l$lng = json['lng'];
    return Fragment$Point(
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
    if (!(other is Fragment$Point) || runtimeType != other.runtimeType) {
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

extension UtilityExtension$Fragment$Point on Fragment$Point {
  CopyWith$Fragment$Point<Fragment$Point> get copyWith =>
      CopyWith$Fragment$Point(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Fragment$Point<TRes> {
  factory CopyWith$Fragment$Point(
    Fragment$Point instance,
    TRes Function(Fragment$Point) then,
  ) = _CopyWithImpl$Fragment$Point;

  factory CopyWith$Fragment$Point.stub(TRes res) =
      _CopyWithStubImpl$Fragment$Point;

  TRes call({
    double? lat,
    double? lng,
  });
}

class _CopyWithImpl$Fragment$Point<TRes>
    implements CopyWith$Fragment$Point<TRes> {
  _CopyWithImpl$Fragment$Point(
    this._instance,
    this._then,
  );

  final Fragment$Point _instance;

  final TRes Function(Fragment$Point) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? lat = _undefined,
    Object? lng = _undefined,
  }) =>
      _then(Fragment$Point(
        lat: lat == _undefined || lat == null ? _instance.lat : (lat as double),
        lng: lng == _undefined || lng == null ? _instance.lng : (lng as double),
      ));
}

class _CopyWithStubImpl$Fragment$Point<TRes>
    implements CopyWith$Fragment$Point<TRes> {
  _CopyWithStubImpl$Fragment$Point(this._res);

  TRes _res;

  call({
    double? lat,
    double? lng,
  }) =>
      _res;
}

const fragmentDefinitionPoint = FragmentDefinitionNode(
  name: NameNode(value: 'Point'),
  typeCondition: TypeConditionNode(
      on: NamedTypeNode(
    name: NameNode(value: 'Point'),
    isNonNull: false,
  )),
  directives: [],
  selectionSet: SelectionSetNode(selections: [
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
);
const documentNodeFragmentPoint = DocumentNode(definitions: [
  fragmentDefinitionPoint,
]);

extension ClientExtension$Fragment$Point on graphql.GraphQLClient {
  void writeFragment$Point({
    required Fragment$Point data,
    required Map<String, dynamic> idFields,
    bool broadcast = true,
  }) =>
      this.writeFragment(
        graphql.FragmentRequest(
          idFields: idFields,
          fragment: const graphql.Fragment(
            fragmentName: 'Point',
            document: documentNodeFragmentPoint,
          ),
        ),
        data: data.toJson(),
        broadcast: broadcast,
      );
  Fragment$Point? readFragment$Point({
    required Map<String, dynamic> idFields,
    bool optimistic = true,
  }) {
    final result = this.readFragment(
      graphql.FragmentRequest(
        idFields: idFields,
        fragment: const graphql.Fragment(
          fragmentName: 'Point',
          document: documentNodeFragmentPoint,
        ),
      ),
      optimistic: optimistic,
    );
    return result == null ? null : Fragment$Point.fromJson(result);
  }
}

class Fragment$AvailableOrder {
  Fragment$AvailableOrder({
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

  factory Fragment$AvailableOrder.fromJson(Map<String, dynamic> json) {
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
    return Fragment$AvailableOrder(
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
          .map((e) => Fragment$AvailableOrder$options.fromJson(
              (e as Map<String, dynamic>)))
          .toList(),
      service: l$service == null
          ? null
          : Fragment$AvailableOrder$service.fromJson(
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

  final List<Fragment$AvailableOrder$options> options;

  final Fragment$AvailableOrder$service? service;

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
    if (!(other is Fragment$AvailableOrder) ||
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

extension UtilityExtension$Fragment$AvailableOrder on Fragment$AvailableOrder {
  CopyWith$Fragment$AvailableOrder<Fragment$AvailableOrder> get copyWith =>
      CopyWith$Fragment$AvailableOrder(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Fragment$AvailableOrder<TRes> {
  factory CopyWith$Fragment$AvailableOrder(
    Fragment$AvailableOrder instance,
    TRes Function(Fragment$AvailableOrder) then,
  ) = _CopyWithImpl$Fragment$AvailableOrder;

  factory CopyWith$Fragment$AvailableOrder.stub(TRes res) =
      _CopyWithStubImpl$Fragment$AvailableOrder;

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
    List<Fragment$AvailableOrder$options>? options,
    Fragment$AvailableOrder$service? service,
    List<Fragment$Point>? points,
  });
  TRes directions(
      Iterable<Fragment$Point>? Function(
              Iterable<CopyWith$Fragment$Point<Fragment$Point>>?)
          _fn);
  TRes options(
      Iterable<Fragment$AvailableOrder$options> Function(
              Iterable<
                  CopyWith$Fragment$AvailableOrder$options<
                      Fragment$AvailableOrder$options>>)
          _fn);
  CopyWith$Fragment$AvailableOrder$service<TRes> get service;
  TRes points(
      Iterable<Fragment$Point> Function(
              Iterable<CopyWith$Fragment$Point<Fragment$Point>>)
          _fn);
}

class _CopyWithImpl$Fragment$AvailableOrder<TRes>
    implements CopyWith$Fragment$AvailableOrder<TRes> {
  _CopyWithImpl$Fragment$AvailableOrder(
    this._instance,
    this._then,
  );

  final Fragment$AvailableOrder _instance;

  final TRes Function(Fragment$AvailableOrder) _then;

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
      _then(Fragment$AvailableOrder(
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
            : (options as List<Fragment$AvailableOrder$options>),
        service: service == _undefined
            ? _instance.service
            : (service as Fragment$AvailableOrder$service?),
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
          Iterable<Fragment$AvailableOrder$options> Function(
                  Iterable<
                      CopyWith$Fragment$AvailableOrder$options<
                          Fragment$AvailableOrder$options>>)
              _fn) =>
      call(
          options: _fn(_instance.options
              .map((e) => CopyWith$Fragment$AvailableOrder$options(
                    e,
                    (i) => i,
                  ))).toList());
  CopyWith$Fragment$AvailableOrder$service<TRes> get service {
    final local$service = _instance.service;
    return local$service == null
        ? CopyWith$Fragment$AvailableOrder$service.stub(_then(_instance))
        : CopyWith$Fragment$AvailableOrder$service(
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

class _CopyWithStubImpl$Fragment$AvailableOrder<TRes>
    implements CopyWith$Fragment$AvailableOrder<TRes> {
  _CopyWithStubImpl$Fragment$AvailableOrder(this._res);

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
    List<Fragment$AvailableOrder$options>? options,
    Fragment$AvailableOrder$service? service,
    List<Fragment$Point>? points,
  }) =>
      _res;
  directions(_fn) => _res;
  options(_fn) => _res;
  CopyWith$Fragment$AvailableOrder$service<TRes> get service =>
      CopyWith$Fragment$AvailableOrder$service.stub(_res);
  points(_fn) => _res;
}

const fragmentDefinitionAvailableOrder = FragmentDefinitionNode(
  name: NameNode(value: 'AvailableOrder'),
  typeCondition: TypeConditionNode(
      on: NamedTypeNode(
    name: NameNode(value: 'Order'),
    isNonNull: false,
  )),
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
        )
      ]),
    ),
  ]),
);
const documentNodeFragmentAvailableOrder = DocumentNode(definitions: [
  fragmentDefinitionAvailableOrder,
  fragmentDefinitionPoint,
]);

extension ClientExtension$Fragment$AvailableOrder on graphql.GraphQLClient {
  void writeFragment$AvailableOrder({
    required Fragment$AvailableOrder data,
    required Map<String, dynamic> idFields,
    bool broadcast = true,
  }) =>
      this.writeFragment(
        graphql.FragmentRequest(
          idFields: idFields,
          fragment: const graphql.Fragment(
            fragmentName: 'AvailableOrder',
            document: documentNodeFragmentAvailableOrder,
          ),
        ),
        data: data.toJson(),
        broadcast: broadcast,
      );
  Fragment$AvailableOrder? readFragment$AvailableOrder({
    required Map<String, dynamic> idFields,
    bool optimistic = true,
  }) {
    final result = this.readFragment(
      graphql.FragmentRequest(
        idFields: idFields,
        fragment: const graphql.Fragment(
          fragmentName: 'AvailableOrder',
          document: documentNodeFragmentAvailableOrder,
        ),
      ),
      optimistic: optimistic,
    );
    return result == null ? null : Fragment$AvailableOrder.fromJson(result);
  }
}

class Fragment$AvailableOrder$options {
  Fragment$AvailableOrder$options({
    required this.name,
    required this.icon,
  });

  factory Fragment$AvailableOrder$options.fromJson(Map<String, dynamic> json) {
    final l$name = json['name'];
    final l$icon = json['icon'];
    return Fragment$AvailableOrder$options(
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
    if (!(other is Fragment$AvailableOrder$options) ||
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

extension UtilityExtension$Fragment$AvailableOrder$options
    on Fragment$AvailableOrder$options {
  CopyWith$Fragment$AvailableOrder$options<Fragment$AvailableOrder$options>
      get copyWith => CopyWith$Fragment$AvailableOrder$options(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Fragment$AvailableOrder$options<TRes> {
  factory CopyWith$Fragment$AvailableOrder$options(
    Fragment$AvailableOrder$options instance,
    TRes Function(Fragment$AvailableOrder$options) then,
  ) = _CopyWithImpl$Fragment$AvailableOrder$options;

  factory CopyWith$Fragment$AvailableOrder$options.stub(TRes res) =
      _CopyWithStubImpl$Fragment$AvailableOrder$options;

  TRes call({
    String? name,
    Enum$ServiceOptionIcon? icon,
  });
}

class _CopyWithImpl$Fragment$AvailableOrder$options<TRes>
    implements CopyWith$Fragment$AvailableOrder$options<TRes> {
  _CopyWithImpl$Fragment$AvailableOrder$options(
    this._instance,
    this._then,
  );

  final Fragment$AvailableOrder$options _instance;

  final TRes Function(Fragment$AvailableOrder$options) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? name = _undefined,
    Object? icon = _undefined,
  }) =>
      _then(Fragment$AvailableOrder$options(
        name: name == _undefined || name == null
            ? _instance.name
            : (name as String),
        icon: icon == _undefined || icon == null
            ? _instance.icon
            : (icon as Enum$ServiceOptionIcon),
      ));
}

class _CopyWithStubImpl$Fragment$AvailableOrder$options<TRes>
    implements CopyWith$Fragment$AvailableOrder$options<TRes> {
  _CopyWithStubImpl$Fragment$AvailableOrder$options(this._res);

  TRes _res;

  call({
    String? name,
    Enum$ServiceOptionIcon? icon,
  }) =>
      _res;
}

class Fragment$AvailableOrder$service {
  Fragment$AvailableOrder$service({required this.name});

  factory Fragment$AvailableOrder$service.fromJson(Map<String, dynamic> json) {
    final l$name = json['name'];
    return Fragment$AvailableOrder$service(name: (l$name as String));
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
    if (!(other is Fragment$AvailableOrder$service) ||
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

extension UtilityExtension$Fragment$AvailableOrder$service
    on Fragment$AvailableOrder$service {
  CopyWith$Fragment$AvailableOrder$service<Fragment$AvailableOrder$service>
      get copyWith => CopyWith$Fragment$AvailableOrder$service(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Fragment$AvailableOrder$service<TRes> {
  factory CopyWith$Fragment$AvailableOrder$service(
    Fragment$AvailableOrder$service instance,
    TRes Function(Fragment$AvailableOrder$service) then,
  ) = _CopyWithImpl$Fragment$AvailableOrder$service;

  factory CopyWith$Fragment$AvailableOrder$service.stub(TRes res) =
      _CopyWithStubImpl$Fragment$AvailableOrder$service;

  TRes call({String? name});
}

class _CopyWithImpl$Fragment$AvailableOrder$service<TRes>
    implements CopyWith$Fragment$AvailableOrder$service<TRes> {
  _CopyWithImpl$Fragment$AvailableOrder$service(
    this._instance,
    this._then,
  );

  final Fragment$AvailableOrder$service _instance;

  final TRes Function(Fragment$AvailableOrder$service) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? name = _undefined}) =>
      _then(Fragment$AvailableOrder$service(
          name: name == _undefined || name == null
              ? _instance.name
              : (name as String)));
}

class _CopyWithStubImpl$Fragment$AvailableOrder$service<TRes>
    implements CopyWith$Fragment$AvailableOrder$service<TRes> {
  _CopyWithStubImpl$Fragment$AvailableOrder$service(this._res);

  TRes _res;

  call({String? name}) => _res;
}

class Fragment$CurrentOrder {
  Fragment$CurrentOrder({
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

  factory Fragment$CurrentOrder.fromJson(Map<String, dynamic> json) {
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
    return Fragment$CurrentOrder(
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
          ?.map((e) => Fragment$Point.fromJson((e as Map<String, dynamic>)))
          .toList(),
      points: (l$points as List<dynamic>)
          .map((e) => Fragment$Point.fromJson((e as Map<String, dynamic>)))
          .toList(),
      service: l$service == null
          ? null
          : Fragment$CurrentOrder$service.fromJson(
              (l$service as Map<String, dynamic>)),
      options: (l$options as List<dynamic>)
          .map((e) => Fragment$CurrentOrder$options.fromJson(
              (e as Map<String, dynamic>)))
          .toList(),
      addresses:
          (l$addresses as List<dynamic>).map((e) => (e as String)).toList(),
      rider: l$rider == null
          ? null
          : Fragment$CurrentOrder$rider.fromJson(
              (l$rider as Map<String, dynamic>)),
      driverLastSeenMessagesAt:
          fromGraphQLTimestampToDartDateTime(l$driverLastSeenMessagesAt),
      conversations: (l$conversations as List<dynamic>)
          .map((e) => Fragment$CurrentOrder$conversations.fromJson(
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

  final List<Fragment$Point>? directions;

  final List<Fragment$Point> points;

  final Fragment$CurrentOrder$service? service;

  final List<Fragment$CurrentOrder$options> options;

  final List<String> addresses;

  final Fragment$CurrentOrder$rider? rider;

  final DateTime driverLastSeenMessagesAt;

  final List<Fragment$CurrentOrder$conversations> conversations;

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
    if (!(other is Fragment$CurrentOrder) || runtimeType != other.runtimeType) {
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

extension UtilityExtension$Fragment$CurrentOrder on Fragment$CurrentOrder {
  CopyWith$Fragment$CurrentOrder<Fragment$CurrentOrder> get copyWith =>
      CopyWith$Fragment$CurrentOrder(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Fragment$CurrentOrder<TRes> {
  factory CopyWith$Fragment$CurrentOrder(
    Fragment$CurrentOrder instance,
    TRes Function(Fragment$CurrentOrder) then,
  ) = _CopyWithImpl$Fragment$CurrentOrder;

  factory CopyWith$Fragment$CurrentOrder.stub(TRes res) =
      _CopyWithStubImpl$Fragment$CurrentOrder;

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
    List<Fragment$Point>? directions,
    List<Fragment$Point>? points,
    Fragment$CurrentOrder$service? service,
    List<Fragment$CurrentOrder$options>? options,
    List<String>? addresses,
    Fragment$CurrentOrder$rider? rider,
    DateTime? driverLastSeenMessagesAt,
    List<Fragment$CurrentOrder$conversations>? conversations,
  });
  TRes directions(
      Iterable<Fragment$Point>? Function(
              Iterable<CopyWith$Fragment$Point<Fragment$Point>>?)
          _fn);
  TRes points(
      Iterable<Fragment$Point> Function(
              Iterable<CopyWith$Fragment$Point<Fragment$Point>>)
          _fn);
  CopyWith$Fragment$CurrentOrder$service<TRes> get service;
  TRes options(
      Iterable<Fragment$CurrentOrder$options> Function(
              Iterable<
                  CopyWith$Fragment$CurrentOrder$options<
                      Fragment$CurrentOrder$options>>)
          _fn);
  CopyWith$Fragment$CurrentOrder$rider<TRes> get rider;
  TRes conversations(
      Iterable<Fragment$CurrentOrder$conversations> Function(
              Iterable<
                  CopyWith$Fragment$CurrentOrder$conversations<
                      Fragment$CurrentOrder$conversations>>)
          _fn);
}

class _CopyWithImpl$Fragment$CurrentOrder<TRes>
    implements CopyWith$Fragment$CurrentOrder<TRes> {
  _CopyWithImpl$Fragment$CurrentOrder(
    this._instance,
    this._then,
  );

  final Fragment$CurrentOrder _instance;

  final TRes Function(Fragment$CurrentOrder) _then;

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
      _then(Fragment$CurrentOrder(
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
            : (directions as List<Fragment$Point>?),
        points: points == _undefined || points == null
            ? _instance.points
            : (points as List<Fragment$Point>),
        service: service == _undefined
            ? _instance.service
            : (service as Fragment$CurrentOrder$service?),
        options: options == _undefined || options == null
            ? _instance.options
            : (options as List<Fragment$CurrentOrder$options>),
        addresses: addresses == _undefined || addresses == null
            ? _instance.addresses
            : (addresses as List<String>),
        rider: rider == _undefined
            ? _instance.rider
            : (rider as Fragment$CurrentOrder$rider?),
        driverLastSeenMessagesAt: driverLastSeenMessagesAt == _undefined ||
                driverLastSeenMessagesAt == null
            ? _instance.driverLastSeenMessagesAt
            : (driverLastSeenMessagesAt as DateTime),
        conversations: conversations == _undefined || conversations == null
            ? _instance.conversations
            : (conversations as List<Fragment$CurrentOrder$conversations>),
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
  TRes points(
          Iterable<Fragment$Point> Function(
                  Iterable<CopyWith$Fragment$Point<Fragment$Point>>)
              _fn) =>
      call(
          points: _fn(_instance.points.map((e) => CopyWith$Fragment$Point(
                e,
                (i) => i,
              ))).toList());
  CopyWith$Fragment$CurrentOrder$service<TRes> get service {
    final local$service = _instance.service;
    return local$service == null
        ? CopyWith$Fragment$CurrentOrder$service.stub(_then(_instance))
        : CopyWith$Fragment$CurrentOrder$service(
            local$service, (e) => call(service: e));
  }

  TRes options(
          Iterable<Fragment$CurrentOrder$options> Function(
                  Iterable<
                      CopyWith$Fragment$CurrentOrder$options<
                          Fragment$CurrentOrder$options>>)
              _fn) =>
      call(
          options: _fn(_instance.options
              .map((e) => CopyWith$Fragment$CurrentOrder$options(
                    e,
                    (i) => i,
                  ))).toList());
  CopyWith$Fragment$CurrentOrder$rider<TRes> get rider {
    final local$rider = _instance.rider;
    return local$rider == null
        ? CopyWith$Fragment$CurrentOrder$rider.stub(_then(_instance))
        : CopyWith$Fragment$CurrentOrder$rider(
            local$rider, (e) => call(rider: e));
  }

  TRes conversations(
          Iterable<Fragment$CurrentOrder$conversations> Function(
                  Iterable<
                      CopyWith$Fragment$CurrentOrder$conversations<
                          Fragment$CurrentOrder$conversations>>)
              _fn) =>
      call(
          conversations: _fn(_instance.conversations
              .map((e) => CopyWith$Fragment$CurrentOrder$conversations(
                    e,
                    (i) => i,
                  ))).toList());
}

class _CopyWithStubImpl$Fragment$CurrentOrder<TRes>
    implements CopyWith$Fragment$CurrentOrder<TRes> {
  _CopyWithStubImpl$Fragment$CurrentOrder(this._res);

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
    List<Fragment$Point>? directions,
    List<Fragment$Point>? points,
    Fragment$CurrentOrder$service? service,
    List<Fragment$CurrentOrder$options>? options,
    List<String>? addresses,
    Fragment$CurrentOrder$rider? rider,
    DateTime? driverLastSeenMessagesAt,
    List<Fragment$CurrentOrder$conversations>? conversations,
  }) =>
      _res;
  directions(_fn) => _res;
  points(_fn) => _res;
  CopyWith$Fragment$CurrentOrder$service<TRes> get service =>
      CopyWith$Fragment$CurrentOrder$service.stub(_res);
  options(_fn) => _res;
  CopyWith$Fragment$CurrentOrder$rider<TRes> get rider =>
      CopyWith$Fragment$CurrentOrder$rider.stub(_res);
  conversations(_fn) => _res;
}

const fragmentDefinitionCurrentOrder = FragmentDefinitionNode(
  name: NameNode(value: 'CurrentOrder'),
  typeCondition: TypeConditionNode(
      on: NamedTypeNode(
    name: NameNode(value: 'Order'),
    isNonNull: false,
  )),
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
      name: NameNode(value: 'destinationArrivedTo'),
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
        )
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
);
const documentNodeFragmentCurrentOrder = DocumentNode(definitions: [
  fragmentDefinitionCurrentOrder,
  fragmentDefinitionPoint,
]);

extension ClientExtension$Fragment$CurrentOrder on graphql.GraphQLClient {
  void writeFragment$CurrentOrder({
    required Fragment$CurrentOrder data,
    required Map<String, dynamic> idFields,
    bool broadcast = true,
  }) =>
      this.writeFragment(
        graphql.FragmentRequest(
          idFields: idFields,
          fragment: const graphql.Fragment(
            fragmentName: 'CurrentOrder',
            document: documentNodeFragmentCurrentOrder,
          ),
        ),
        data: data.toJson(),
        broadcast: broadcast,
      );
  Fragment$CurrentOrder? readFragment$CurrentOrder({
    required Map<String, dynamic> idFields,
    bool optimistic = true,
  }) {
    final result = this.readFragment(
      graphql.FragmentRequest(
        idFields: idFields,
        fragment: const graphql.Fragment(
          fragmentName: 'CurrentOrder',
          document: documentNodeFragmentCurrentOrder,
        ),
      ),
      optimistic: optimistic,
    );
    return result == null ? null : Fragment$CurrentOrder.fromJson(result);
  }
}

class Fragment$CurrentOrder$service {
  Fragment$CurrentOrder$service({required this.name});

  factory Fragment$CurrentOrder$service.fromJson(Map<String, dynamic> json) {
    final l$name = json['name'];
    return Fragment$CurrentOrder$service(name: (l$name as String));
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
    if (!(other is Fragment$CurrentOrder$service) ||
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

extension UtilityExtension$Fragment$CurrentOrder$service
    on Fragment$CurrentOrder$service {
  CopyWith$Fragment$CurrentOrder$service<Fragment$CurrentOrder$service>
      get copyWith => CopyWith$Fragment$CurrentOrder$service(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Fragment$CurrentOrder$service<TRes> {
  factory CopyWith$Fragment$CurrentOrder$service(
    Fragment$CurrentOrder$service instance,
    TRes Function(Fragment$CurrentOrder$service) then,
  ) = _CopyWithImpl$Fragment$CurrentOrder$service;

  factory CopyWith$Fragment$CurrentOrder$service.stub(TRes res) =
      _CopyWithStubImpl$Fragment$CurrentOrder$service;

  TRes call({String? name});
}

class _CopyWithImpl$Fragment$CurrentOrder$service<TRes>
    implements CopyWith$Fragment$CurrentOrder$service<TRes> {
  _CopyWithImpl$Fragment$CurrentOrder$service(
    this._instance,
    this._then,
  );

  final Fragment$CurrentOrder$service _instance;

  final TRes Function(Fragment$CurrentOrder$service) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? name = _undefined}) => _then(Fragment$CurrentOrder$service(
      name: name == _undefined || name == null
          ? _instance.name
          : (name as String)));
}

class _CopyWithStubImpl$Fragment$CurrentOrder$service<TRes>
    implements CopyWith$Fragment$CurrentOrder$service<TRes> {
  _CopyWithStubImpl$Fragment$CurrentOrder$service(this._res);

  TRes _res;

  call({String? name}) => _res;
}

class Fragment$CurrentOrder$options {
  Fragment$CurrentOrder$options({
    required this.id,
    required this.name,
    required this.icon,
  });

  factory Fragment$CurrentOrder$options.fromJson(Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$name = json['name'];
    final l$icon = json['icon'];
    return Fragment$CurrentOrder$options(
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
    if (!(other is Fragment$CurrentOrder$options) ||
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

extension UtilityExtension$Fragment$CurrentOrder$options
    on Fragment$CurrentOrder$options {
  CopyWith$Fragment$CurrentOrder$options<Fragment$CurrentOrder$options>
      get copyWith => CopyWith$Fragment$CurrentOrder$options(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Fragment$CurrentOrder$options<TRes> {
  factory CopyWith$Fragment$CurrentOrder$options(
    Fragment$CurrentOrder$options instance,
    TRes Function(Fragment$CurrentOrder$options) then,
  ) = _CopyWithImpl$Fragment$CurrentOrder$options;

  factory CopyWith$Fragment$CurrentOrder$options.stub(TRes res) =
      _CopyWithStubImpl$Fragment$CurrentOrder$options;

  TRes call({
    String? id,
    String? name,
    Enum$ServiceOptionIcon? icon,
  });
}

class _CopyWithImpl$Fragment$CurrentOrder$options<TRes>
    implements CopyWith$Fragment$CurrentOrder$options<TRes> {
  _CopyWithImpl$Fragment$CurrentOrder$options(
    this._instance,
    this._then,
  );

  final Fragment$CurrentOrder$options _instance;

  final TRes Function(Fragment$CurrentOrder$options) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? name = _undefined,
    Object? icon = _undefined,
  }) =>
      _then(Fragment$CurrentOrder$options(
        id: id == _undefined || id == null ? _instance.id : (id as String),
        name: name == _undefined || name == null
            ? _instance.name
            : (name as String),
        icon: icon == _undefined || icon == null
            ? _instance.icon
            : (icon as Enum$ServiceOptionIcon),
      ));
}

class _CopyWithStubImpl$Fragment$CurrentOrder$options<TRes>
    implements CopyWith$Fragment$CurrentOrder$options<TRes> {
  _CopyWithStubImpl$Fragment$CurrentOrder$options(this._res);

  TRes _res;

  call({
    String? id,
    String? name,
    Enum$ServiceOptionIcon? icon,
  }) =>
      _res;
}

class Fragment$CurrentOrder$rider {
  Fragment$CurrentOrder$rider({
    required this.mobileNumber,
    this.firstName,
    this.lastName,
    this.media,
    required this.wallets,
  });

  factory Fragment$CurrentOrder$rider.fromJson(Map<String, dynamic> json) {
    final l$mobileNumber = json['mobileNumber'];
    final l$firstName = json['firstName'];
    final l$lastName = json['lastName'];
    final l$media = json['media'];
    final l$wallets = json['wallets'];
    return Fragment$CurrentOrder$rider(
      mobileNumber: (l$mobileNumber as String),
      firstName: (l$firstName as String?),
      lastName: (l$lastName as String?),
      media: l$media == null
          ? null
          : Fragment$CurrentOrder$rider$media.fromJson(
              (l$media as Map<String, dynamic>)),
      wallets: (l$wallets as List<dynamic>)
          .map((e) => Fragment$CurrentOrder$rider$wallets.fromJson(
              (e as Map<String, dynamic>)))
          .toList(),
    );
  }

  final String mobileNumber;

  final String? firstName;

  final String? lastName;

  final Fragment$CurrentOrder$rider$media? media;

  final List<Fragment$CurrentOrder$rider$wallets> wallets;

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
    if (!(other is Fragment$CurrentOrder$rider) ||
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

extension UtilityExtension$Fragment$CurrentOrder$rider
    on Fragment$CurrentOrder$rider {
  CopyWith$Fragment$CurrentOrder$rider<Fragment$CurrentOrder$rider>
      get copyWith => CopyWith$Fragment$CurrentOrder$rider(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Fragment$CurrentOrder$rider<TRes> {
  factory CopyWith$Fragment$CurrentOrder$rider(
    Fragment$CurrentOrder$rider instance,
    TRes Function(Fragment$CurrentOrder$rider) then,
  ) = _CopyWithImpl$Fragment$CurrentOrder$rider;

  factory CopyWith$Fragment$CurrentOrder$rider.stub(TRes res) =
      _CopyWithStubImpl$Fragment$CurrentOrder$rider;

  TRes call({
    String? mobileNumber,
    String? firstName,
    String? lastName,
    Fragment$CurrentOrder$rider$media? media,
    List<Fragment$CurrentOrder$rider$wallets>? wallets,
  });
  CopyWith$Fragment$CurrentOrder$rider$media<TRes> get media;
  TRes wallets(
      Iterable<Fragment$CurrentOrder$rider$wallets> Function(
              Iterable<
                  CopyWith$Fragment$CurrentOrder$rider$wallets<
                      Fragment$CurrentOrder$rider$wallets>>)
          _fn);
}

class _CopyWithImpl$Fragment$CurrentOrder$rider<TRes>
    implements CopyWith$Fragment$CurrentOrder$rider<TRes> {
  _CopyWithImpl$Fragment$CurrentOrder$rider(
    this._instance,
    this._then,
  );

  final Fragment$CurrentOrder$rider _instance;

  final TRes Function(Fragment$CurrentOrder$rider) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? mobileNumber = _undefined,
    Object? firstName = _undefined,
    Object? lastName = _undefined,
    Object? media = _undefined,
    Object? wallets = _undefined,
  }) =>
      _then(Fragment$CurrentOrder$rider(
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
            : (media as Fragment$CurrentOrder$rider$media?),
        wallets: wallets == _undefined || wallets == null
            ? _instance.wallets
            : (wallets as List<Fragment$CurrentOrder$rider$wallets>),
      ));
  CopyWith$Fragment$CurrentOrder$rider$media<TRes> get media {
    final local$media = _instance.media;
    return local$media == null
        ? CopyWith$Fragment$CurrentOrder$rider$media.stub(_then(_instance))
        : CopyWith$Fragment$CurrentOrder$rider$media(
            local$media, (e) => call(media: e));
  }

  TRes wallets(
          Iterable<Fragment$CurrentOrder$rider$wallets> Function(
                  Iterable<
                      CopyWith$Fragment$CurrentOrder$rider$wallets<
                          Fragment$CurrentOrder$rider$wallets>>)
              _fn) =>
      call(
          wallets: _fn(_instance.wallets
              .map((e) => CopyWith$Fragment$CurrentOrder$rider$wallets(
                    e,
                    (i) => i,
                  ))).toList());
}

class _CopyWithStubImpl$Fragment$CurrentOrder$rider<TRes>
    implements CopyWith$Fragment$CurrentOrder$rider<TRes> {
  _CopyWithStubImpl$Fragment$CurrentOrder$rider(this._res);

  TRes _res;

  call({
    String? mobileNumber,
    String? firstName,
    String? lastName,
    Fragment$CurrentOrder$rider$media? media,
    List<Fragment$CurrentOrder$rider$wallets>? wallets,
  }) =>
      _res;
  CopyWith$Fragment$CurrentOrder$rider$media<TRes> get media =>
      CopyWith$Fragment$CurrentOrder$rider$media.stub(_res);
  wallets(_fn) => _res;
}

class Fragment$CurrentOrder$rider$media {
  Fragment$CurrentOrder$rider$media({required this.address});

  factory Fragment$CurrentOrder$rider$media.fromJson(
      Map<String, dynamic> json) {
    final l$address = json['address'];
    return Fragment$CurrentOrder$rider$media(address: (l$address as String));
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
    if (!(other is Fragment$CurrentOrder$rider$media) ||
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

extension UtilityExtension$Fragment$CurrentOrder$rider$media
    on Fragment$CurrentOrder$rider$media {
  CopyWith$Fragment$CurrentOrder$rider$media<Fragment$CurrentOrder$rider$media>
      get copyWith => CopyWith$Fragment$CurrentOrder$rider$media(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Fragment$CurrentOrder$rider$media<TRes> {
  factory CopyWith$Fragment$CurrentOrder$rider$media(
    Fragment$CurrentOrder$rider$media instance,
    TRes Function(Fragment$CurrentOrder$rider$media) then,
  ) = _CopyWithImpl$Fragment$CurrentOrder$rider$media;

  factory CopyWith$Fragment$CurrentOrder$rider$media.stub(TRes res) =
      _CopyWithStubImpl$Fragment$CurrentOrder$rider$media;

  TRes call({String? address});
}

class _CopyWithImpl$Fragment$CurrentOrder$rider$media<TRes>
    implements CopyWith$Fragment$CurrentOrder$rider$media<TRes> {
  _CopyWithImpl$Fragment$CurrentOrder$rider$media(
    this._instance,
    this._then,
  );

  final Fragment$CurrentOrder$rider$media _instance;

  final TRes Function(Fragment$CurrentOrder$rider$media) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? address = _undefined}) =>
      _then(Fragment$CurrentOrder$rider$media(
          address: address == _undefined || address == null
              ? _instance.address
              : (address as String)));
}

class _CopyWithStubImpl$Fragment$CurrentOrder$rider$media<TRes>
    implements CopyWith$Fragment$CurrentOrder$rider$media<TRes> {
  _CopyWithStubImpl$Fragment$CurrentOrder$rider$media(this._res);

  TRes _res;

  call({String? address}) => _res;
}

class Fragment$CurrentOrder$rider$wallets {
  Fragment$CurrentOrder$rider$wallets({
    required this.currency,
    required this.balance,
  });

  factory Fragment$CurrentOrder$rider$wallets.fromJson(
      Map<String, dynamic> json) {
    final l$currency = json['currency'];
    final l$balance = json['balance'];
    return Fragment$CurrentOrder$rider$wallets(
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
    if (!(other is Fragment$CurrentOrder$rider$wallets) ||
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

extension UtilityExtension$Fragment$CurrentOrder$rider$wallets
    on Fragment$CurrentOrder$rider$wallets {
  CopyWith$Fragment$CurrentOrder$rider$wallets<
          Fragment$CurrentOrder$rider$wallets>
      get copyWith => CopyWith$Fragment$CurrentOrder$rider$wallets(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Fragment$CurrentOrder$rider$wallets<TRes> {
  factory CopyWith$Fragment$CurrentOrder$rider$wallets(
    Fragment$CurrentOrder$rider$wallets instance,
    TRes Function(Fragment$CurrentOrder$rider$wallets) then,
  ) = _CopyWithImpl$Fragment$CurrentOrder$rider$wallets;

  factory CopyWith$Fragment$CurrentOrder$rider$wallets.stub(TRes res) =
      _CopyWithStubImpl$Fragment$CurrentOrder$rider$wallets;

  TRes call({
    String? currency,
    double? balance,
  });
}

class _CopyWithImpl$Fragment$CurrentOrder$rider$wallets<TRes>
    implements CopyWith$Fragment$CurrentOrder$rider$wallets<TRes> {
  _CopyWithImpl$Fragment$CurrentOrder$rider$wallets(
    this._instance,
    this._then,
  );

  final Fragment$CurrentOrder$rider$wallets _instance;

  final TRes Function(Fragment$CurrentOrder$rider$wallets) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? currency = _undefined,
    Object? balance = _undefined,
  }) =>
      _then(Fragment$CurrentOrder$rider$wallets(
        currency: currency == _undefined || currency == null
            ? _instance.currency
            : (currency as String),
        balance: balance == _undefined || balance == null
            ? _instance.balance
            : (balance as double),
      ));
}

class _CopyWithStubImpl$Fragment$CurrentOrder$rider$wallets<TRes>
    implements CopyWith$Fragment$CurrentOrder$rider$wallets<TRes> {
  _CopyWithStubImpl$Fragment$CurrentOrder$rider$wallets(this._res);

  TRes _res;

  call({
    String? currency,
    double? balance,
  }) =>
      _res;
}

class Fragment$CurrentOrder$conversations {
  Fragment$CurrentOrder$conversations({required this.sentAt});

  factory Fragment$CurrentOrder$conversations.fromJson(
      Map<String, dynamic> json) {
    final l$sentAt = json['sentAt'];
    return Fragment$CurrentOrder$conversations(
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
    if (!(other is Fragment$CurrentOrder$conversations) ||
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

extension UtilityExtension$Fragment$CurrentOrder$conversations
    on Fragment$CurrentOrder$conversations {
  CopyWith$Fragment$CurrentOrder$conversations<
          Fragment$CurrentOrder$conversations>
      get copyWith => CopyWith$Fragment$CurrentOrder$conversations(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Fragment$CurrentOrder$conversations<TRes> {
  factory CopyWith$Fragment$CurrentOrder$conversations(
    Fragment$CurrentOrder$conversations instance,
    TRes Function(Fragment$CurrentOrder$conversations) then,
  ) = _CopyWithImpl$Fragment$CurrentOrder$conversations;

  factory CopyWith$Fragment$CurrentOrder$conversations.stub(TRes res) =
      _CopyWithStubImpl$Fragment$CurrentOrder$conversations;

  TRes call({DateTime? sentAt});
}

class _CopyWithImpl$Fragment$CurrentOrder$conversations<TRes>
    implements CopyWith$Fragment$CurrentOrder$conversations<TRes> {
  _CopyWithImpl$Fragment$CurrentOrder$conversations(
    this._instance,
    this._then,
  );

  final Fragment$CurrentOrder$conversations _instance;

  final TRes Function(Fragment$CurrentOrder$conversations) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? sentAt = _undefined}) =>
      _then(Fragment$CurrentOrder$conversations(
          sentAt: sentAt == _undefined || sentAt == null
              ? _instance.sentAt
              : (sentAt as DateTime)));
}

class _CopyWithStubImpl$Fragment$CurrentOrder$conversations<TRes>
    implements CopyWith$Fragment$CurrentOrder$conversations<TRes> {
  _CopyWithStubImpl$Fragment$CurrentOrder$conversations(this._res);

  TRes _res;

  call({DateTime? sentAt}) => _res;
}

class Fragment$historyOrderItem {
  Fragment$historyOrderItem({
    required this.edges,
    required this.pageInfo,
  });

  factory Fragment$historyOrderItem.fromJson(Map<String, dynamic> json) {
    final l$edges = json['edges'];
    final l$pageInfo = json['pageInfo'];
    return Fragment$historyOrderItem(
      edges: (l$edges as List<dynamic>)
          .map((e) => Fragment$historyOrderItem$edges.fromJson(
              (e as Map<String, dynamic>)))
          .toList(),
      pageInfo: Fragment$historyOrderItem$pageInfo.fromJson(
          (l$pageInfo as Map<String, dynamic>)),
    );
  }

  final List<Fragment$historyOrderItem$edges> edges;

  final Fragment$historyOrderItem$pageInfo pageInfo;

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
    if (!(other is Fragment$historyOrderItem) ||
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
    final l$pageInfo = pageInfo;
    final lOther$pageInfo = other.pageInfo;
    if (l$pageInfo != lOther$pageInfo) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Fragment$historyOrderItem
    on Fragment$historyOrderItem {
  CopyWith$Fragment$historyOrderItem<Fragment$historyOrderItem> get copyWith =>
      CopyWith$Fragment$historyOrderItem(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Fragment$historyOrderItem<TRes> {
  factory CopyWith$Fragment$historyOrderItem(
    Fragment$historyOrderItem instance,
    TRes Function(Fragment$historyOrderItem) then,
  ) = _CopyWithImpl$Fragment$historyOrderItem;

  factory CopyWith$Fragment$historyOrderItem.stub(TRes res) =
      _CopyWithStubImpl$Fragment$historyOrderItem;

  TRes call({
    List<Fragment$historyOrderItem$edges>? edges,
    Fragment$historyOrderItem$pageInfo? pageInfo,
  });
  TRes edges(
      Iterable<Fragment$historyOrderItem$edges> Function(
              Iterable<
                  CopyWith$Fragment$historyOrderItem$edges<
                      Fragment$historyOrderItem$edges>>)
          _fn);
  CopyWith$Fragment$historyOrderItem$pageInfo<TRes> get pageInfo;
}

class _CopyWithImpl$Fragment$historyOrderItem<TRes>
    implements CopyWith$Fragment$historyOrderItem<TRes> {
  _CopyWithImpl$Fragment$historyOrderItem(
    this._instance,
    this._then,
  );

  final Fragment$historyOrderItem _instance;

  final TRes Function(Fragment$historyOrderItem) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? edges = _undefined,
    Object? pageInfo = _undefined,
  }) =>
      _then(Fragment$historyOrderItem(
        edges: edges == _undefined || edges == null
            ? _instance.edges
            : (edges as List<Fragment$historyOrderItem$edges>),
        pageInfo: pageInfo == _undefined || pageInfo == null
            ? _instance.pageInfo
            : (pageInfo as Fragment$historyOrderItem$pageInfo),
      ));
  TRes edges(
          Iterable<Fragment$historyOrderItem$edges> Function(
                  Iterable<
                      CopyWith$Fragment$historyOrderItem$edges<
                          Fragment$historyOrderItem$edges>>)
              _fn) =>
      call(
          edges: _fn(_instance.edges
              .map((e) => CopyWith$Fragment$historyOrderItem$edges(
                    e,
                    (i) => i,
                  ))).toList());
  CopyWith$Fragment$historyOrderItem$pageInfo<TRes> get pageInfo {
    final local$pageInfo = _instance.pageInfo;
    return CopyWith$Fragment$historyOrderItem$pageInfo(
        local$pageInfo, (e) => call(pageInfo: e));
  }
}

class _CopyWithStubImpl$Fragment$historyOrderItem<TRes>
    implements CopyWith$Fragment$historyOrderItem<TRes> {
  _CopyWithStubImpl$Fragment$historyOrderItem(this._res);

  TRes _res;

  call({
    List<Fragment$historyOrderItem$edges>? edges,
    Fragment$historyOrderItem$pageInfo? pageInfo,
  }) =>
      _res;
  edges(_fn) => _res;
  CopyWith$Fragment$historyOrderItem$pageInfo<TRes> get pageInfo =>
      CopyWith$Fragment$historyOrderItem$pageInfo.stub(_res);
}

const fragmentDefinitionhistoryOrderItem = FragmentDefinitionNode(
  name: NameNode(value: 'historyOrderItem'),
  typeCondition: TypeConditionNode(
      on: NamedTypeNode(
    name: NameNode(value: 'OrderConnection'),
    isNonNull: false,
  )),
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
);
const documentNodeFragmenthistoryOrderItem = DocumentNode(definitions: [
  fragmentDefinitionhistoryOrderItem,
]);

extension ClientExtension$Fragment$historyOrderItem on graphql.GraphQLClient {
  void writeFragment$historyOrderItem({
    required Fragment$historyOrderItem data,
    required Map<String, dynamic> idFields,
    bool broadcast = true,
  }) =>
      this.writeFragment(
        graphql.FragmentRequest(
          idFields: idFields,
          fragment: const graphql.Fragment(
            fragmentName: 'historyOrderItem',
            document: documentNodeFragmenthistoryOrderItem,
          ),
        ),
        data: data.toJson(),
        broadcast: broadcast,
      );
  Fragment$historyOrderItem? readFragment$historyOrderItem({
    required Map<String, dynamic> idFields,
    bool optimistic = true,
  }) {
    final result = this.readFragment(
      graphql.FragmentRequest(
        idFields: idFields,
        fragment: const graphql.Fragment(
          fragmentName: 'historyOrderItem',
          document: documentNodeFragmenthistoryOrderItem,
        ),
      ),
      optimistic: optimistic,
    );
    return result == null ? null : Fragment$historyOrderItem.fromJson(result);
  }
}

class Fragment$historyOrderItem$edges {
  Fragment$historyOrderItem$edges({required this.node});

  factory Fragment$historyOrderItem$edges.fromJson(Map<String, dynamic> json) {
    final l$node = json['node'];
    return Fragment$historyOrderItem$edges(
        node: Fragment$historyOrderItem$edges$node.fromJson(
            (l$node as Map<String, dynamic>)));
  }

  final Fragment$historyOrderItem$edges$node node;

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
    if (!(other is Fragment$historyOrderItem$edges) ||
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

extension UtilityExtension$Fragment$historyOrderItem$edges
    on Fragment$historyOrderItem$edges {
  CopyWith$Fragment$historyOrderItem$edges<Fragment$historyOrderItem$edges>
      get copyWith => CopyWith$Fragment$historyOrderItem$edges(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Fragment$historyOrderItem$edges<TRes> {
  factory CopyWith$Fragment$historyOrderItem$edges(
    Fragment$historyOrderItem$edges instance,
    TRes Function(Fragment$historyOrderItem$edges) then,
  ) = _CopyWithImpl$Fragment$historyOrderItem$edges;

  factory CopyWith$Fragment$historyOrderItem$edges.stub(TRes res) =
      _CopyWithStubImpl$Fragment$historyOrderItem$edges;

  TRes call({Fragment$historyOrderItem$edges$node? node});
  CopyWith$Fragment$historyOrderItem$edges$node<TRes> get node;
}

class _CopyWithImpl$Fragment$historyOrderItem$edges<TRes>
    implements CopyWith$Fragment$historyOrderItem$edges<TRes> {
  _CopyWithImpl$Fragment$historyOrderItem$edges(
    this._instance,
    this._then,
  );

  final Fragment$historyOrderItem$edges _instance;

  final TRes Function(Fragment$historyOrderItem$edges) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? node = _undefined}) =>
      _then(Fragment$historyOrderItem$edges(
          node: node == _undefined || node == null
              ? _instance.node
              : (node as Fragment$historyOrderItem$edges$node)));
  CopyWith$Fragment$historyOrderItem$edges$node<TRes> get node {
    final local$node = _instance.node;
    return CopyWith$Fragment$historyOrderItem$edges$node(
        local$node, (e) => call(node: e));
  }
}

class _CopyWithStubImpl$Fragment$historyOrderItem$edges<TRes>
    implements CopyWith$Fragment$historyOrderItem$edges<TRes> {
  _CopyWithStubImpl$Fragment$historyOrderItem$edges(this._res);

  TRes _res;

  call({Fragment$historyOrderItem$edges$node? node}) => _res;
  CopyWith$Fragment$historyOrderItem$edges$node<TRes> get node =>
      CopyWith$Fragment$historyOrderItem$edges$node.stub(_res);
}

class Fragment$historyOrderItem$edges$node {
  Fragment$historyOrderItem$edges$node({
    required this.id,
    required this.status,
    required this.createdOn,
    required this.currency,
    required this.costAfterCoupon,
    required this.providerShare,
    this.service,
  });

  factory Fragment$historyOrderItem$edges$node.fromJson(
      Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$status = json['status'];
    final l$createdOn = json['createdOn'];
    final l$currency = json['currency'];
    final l$costAfterCoupon = json['costAfterCoupon'];
    final l$providerShare = json['providerShare'];
    final l$service = json['service'];
    return Fragment$historyOrderItem$edges$node(
      id: (l$id as String),
      status: fromJson$Enum$OrderStatus((l$status as String)),
      createdOn: fromGraphQLTimestampToDartDateTime(l$createdOn),
      currency: (l$currency as String),
      costAfterCoupon: (l$costAfterCoupon as num).toDouble(),
      providerShare: (l$providerShare as num).toDouble(),
      service: l$service == null
          ? null
          : Fragment$historyOrderItem$edges$node$service.fromJson(
              (l$service as Map<String, dynamic>)),
    );
  }

  final String id;

  final Enum$OrderStatus status;

  final DateTime createdOn;

  final String currency;

  final double costAfterCoupon;

  final double providerShare;

  final Fragment$historyOrderItem$edges$node$service? service;

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
    if (!(other is Fragment$historyOrderItem$edges$node) ||
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

extension UtilityExtension$Fragment$historyOrderItem$edges$node
    on Fragment$historyOrderItem$edges$node {
  CopyWith$Fragment$historyOrderItem$edges$node<
          Fragment$historyOrderItem$edges$node>
      get copyWith => CopyWith$Fragment$historyOrderItem$edges$node(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Fragment$historyOrderItem$edges$node<TRes> {
  factory CopyWith$Fragment$historyOrderItem$edges$node(
    Fragment$historyOrderItem$edges$node instance,
    TRes Function(Fragment$historyOrderItem$edges$node) then,
  ) = _CopyWithImpl$Fragment$historyOrderItem$edges$node;

  factory CopyWith$Fragment$historyOrderItem$edges$node.stub(TRes res) =
      _CopyWithStubImpl$Fragment$historyOrderItem$edges$node;

  TRes call({
    String? id,
    Enum$OrderStatus? status,
    DateTime? createdOn,
    String? currency,
    double? costAfterCoupon,
    double? providerShare,
    Fragment$historyOrderItem$edges$node$service? service,
  });
  CopyWith$Fragment$historyOrderItem$edges$node$service<TRes> get service;
}

class _CopyWithImpl$Fragment$historyOrderItem$edges$node<TRes>
    implements CopyWith$Fragment$historyOrderItem$edges$node<TRes> {
  _CopyWithImpl$Fragment$historyOrderItem$edges$node(
    this._instance,
    this._then,
  );

  final Fragment$historyOrderItem$edges$node _instance;

  final TRes Function(Fragment$historyOrderItem$edges$node) _then;

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
      _then(Fragment$historyOrderItem$edges$node(
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
            : (service as Fragment$historyOrderItem$edges$node$service?),
      ));
  CopyWith$Fragment$historyOrderItem$edges$node$service<TRes> get service {
    final local$service = _instance.service;
    return local$service == null
        ? CopyWith$Fragment$historyOrderItem$edges$node$service.stub(
            _then(_instance))
        : CopyWith$Fragment$historyOrderItem$edges$node$service(
            local$service, (e) => call(service: e));
  }
}

class _CopyWithStubImpl$Fragment$historyOrderItem$edges$node<TRes>
    implements CopyWith$Fragment$historyOrderItem$edges$node<TRes> {
  _CopyWithStubImpl$Fragment$historyOrderItem$edges$node(this._res);

  TRes _res;

  call({
    String? id,
    Enum$OrderStatus? status,
    DateTime? createdOn,
    String? currency,
    double? costAfterCoupon,
    double? providerShare,
    Fragment$historyOrderItem$edges$node$service? service,
  }) =>
      _res;
  CopyWith$Fragment$historyOrderItem$edges$node$service<TRes> get service =>
      CopyWith$Fragment$historyOrderItem$edges$node$service.stub(_res);
}

class Fragment$historyOrderItem$edges$node$service {
  Fragment$historyOrderItem$edges$node$service({required this.name});

  factory Fragment$historyOrderItem$edges$node$service.fromJson(
      Map<String, dynamic> json) {
    final l$name = json['name'];
    return Fragment$historyOrderItem$edges$node$service(
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
    if (!(other is Fragment$historyOrderItem$edges$node$service) ||
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

extension UtilityExtension$Fragment$historyOrderItem$edges$node$service
    on Fragment$historyOrderItem$edges$node$service {
  CopyWith$Fragment$historyOrderItem$edges$node$service<
          Fragment$historyOrderItem$edges$node$service>
      get copyWith => CopyWith$Fragment$historyOrderItem$edges$node$service(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Fragment$historyOrderItem$edges$node$service<TRes> {
  factory CopyWith$Fragment$historyOrderItem$edges$node$service(
    Fragment$historyOrderItem$edges$node$service instance,
    TRes Function(Fragment$historyOrderItem$edges$node$service) then,
  ) = _CopyWithImpl$Fragment$historyOrderItem$edges$node$service;

  factory CopyWith$Fragment$historyOrderItem$edges$node$service.stub(TRes res) =
      _CopyWithStubImpl$Fragment$historyOrderItem$edges$node$service;

  TRes call({String? name});
}

class _CopyWithImpl$Fragment$historyOrderItem$edges$node$service<TRes>
    implements CopyWith$Fragment$historyOrderItem$edges$node$service<TRes> {
  _CopyWithImpl$Fragment$historyOrderItem$edges$node$service(
    this._instance,
    this._then,
  );

  final Fragment$historyOrderItem$edges$node$service _instance;

  final TRes Function(Fragment$historyOrderItem$edges$node$service) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? name = _undefined}) =>
      _then(Fragment$historyOrderItem$edges$node$service(
          name: name == _undefined || name == null
              ? _instance.name
              : (name as String)));
}

class _CopyWithStubImpl$Fragment$historyOrderItem$edges$node$service<TRes>
    implements CopyWith$Fragment$historyOrderItem$edges$node$service<TRes> {
  _CopyWithStubImpl$Fragment$historyOrderItem$edges$node$service(this._res);

  TRes _res;

  call({String? name}) => _res;
}

class Fragment$historyOrderItem$pageInfo {
  Fragment$historyOrderItem$pageInfo({
    this.hasNextPage,
    this.endCursor,
    this.startCursor,
    this.hasPreviousPage,
  });

  factory Fragment$historyOrderItem$pageInfo.fromJson(
      Map<String, dynamic> json) {
    final l$hasNextPage = json['hasNextPage'];
    final l$endCursor = json['endCursor'];
    final l$startCursor = json['startCursor'];
    final l$hasPreviousPage = json['hasPreviousPage'];
    return Fragment$historyOrderItem$pageInfo(
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
    if (!(other is Fragment$historyOrderItem$pageInfo) ||
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

extension UtilityExtension$Fragment$historyOrderItem$pageInfo
    on Fragment$historyOrderItem$pageInfo {
  CopyWith$Fragment$historyOrderItem$pageInfo<
          Fragment$historyOrderItem$pageInfo>
      get copyWith => CopyWith$Fragment$historyOrderItem$pageInfo(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Fragment$historyOrderItem$pageInfo<TRes> {
  factory CopyWith$Fragment$historyOrderItem$pageInfo(
    Fragment$historyOrderItem$pageInfo instance,
    TRes Function(Fragment$historyOrderItem$pageInfo) then,
  ) = _CopyWithImpl$Fragment$historyOrderItem$pageInfo;

  factory CopyWith$Fragment$historyOrderItem$pageInfo.stub(TRes res) =
      _CopyWithStubImpl$Fragment$historyOrderItem$pageInfo;

  TRes call({
    bool? hasNextPage,
    String? endCursor,
    String? startCursor,
    bool? hasPreviousPage,
  });
}

class _CopyWithImpl$Fragment$historyOrderItem$pageInfo<TRes>
    implements CopyWith$Fragment$historyOrderItem$pageInfo<TRes> {
  _CopyWithImpl$Fragment$historyOrderItem$pageInfo(
    this._instance,
    this._then,
  );

  final Fragment$historyOrderItem$pageInfo _instance;

  final TRes Function(Fragment$historyOrderItem$pageInfo) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? hasNextPage = _undefined,
    Object? endCursor = _undefined,
    Object? startCursor = _undefined,
    Object? hasPreviousPage = _undefined,
  }) =>
      _then(Fragment$historyOrderItem$pageInfo(
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

class _CopyWithStubImpl$Fragment$historyOrderItem$pageInfo<TRes>
    implements CopyWith$Fragment$historyOrderItem$pageInfo<TRes> {
  _CopyWithStubImpl$Fragment$historyOrderItem$pageInfo(this._res);

  TRes _res;

  call({
    bool? hasNextPage,
    String? endCursor,
    String? startCursor,
    bool? hasPreviousPage,
  }) =>
      _res;
}

class Fragment$ChatMessage {
  Fragment$ChatMessage({
    required this.id,
    required this.content,
    required this.sentByDriver,
  });

  factory Fragment$ChatMessage.fromJson(Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$content = json['content'];
    final l$sentByDriver = json['sentByDriver'];
    return Fragment$ChatMessage(
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
    if (!(other is Fragment$ChatMessage) || runtimeType != other.runtimeType) {
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

extension UtilityExtension$Fragment$ChatMessage on Fragment$ChatMessage {
  CopyWith$Fragment$ChatMessage<Fragment$ChatMessage> get copyWith =>
      CopyWith$Fragment$ChatMessage(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Fragment$ChatMessage<TRes> {
  factory CopyWith$Fragment$ChatMessage(
    Fragment$ChatMessage instance,
    TRes Function(Fragment$ChatMessage) then,
  ) = _CopyWithImpl$Fragment$ChatMessage;

  factory CopyWith$Fragment$ChatMessage.stub(TRes res) =
      _CopyWithStubImpl$Fragment$ChatMessage;

  TRes call({
    String? id,
    String? content,
    bool? sentByDriver,
  });
}

class _CopyWithImpl$Fragment$ChatMessage<TRes>
    implements CopyWith$Fragment$ChatMessage<TRes> {
  _CopyWithImpl$Fragment$ChatMessage(
    this._instance,
    this._then,
  );

  final Fragment$ChatMessage _instance;

  final TRes Function(Fragment$ChatMessage) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? content = _undefined,
    Object? sentByDriver = _undefined,
  }) =>
      _then(Fragment$ChatMessage(
        id: id == _undefined || id == null ? _instance.id : (id as String),
        content: content == _undefined || content == null
            ? _instance.content
            : (content as String),
        sentByDriver: sentByDriver == _undefined || sentByDriver == null
            ? _instance.sentByDriver
            : (sentByDriver as bool),
      ));
}

class _CopyWithStubImpl$Fragment$ChatMessage<TRes>
    implements CopyWith$Fragment$ChatMessage<TRes> {
  _CopyWithStubImpl$Fragment$ChatMessage(this._res);

  TRes _res;

  call({
    String? id,
    String? content,
    bool? sentByDriver,
  }) =>
      _res;
}

const fragmentDefinitionChatMessage = FragmentDefinitionNode(
  name: NameNode(value: 'ChatMessage'),
  typeCondition: TypeConditionNode(
      on: NamedTypeNode(
    name: NameNode(value: 'OrderMessage'),
    isNonNull: false,
  )),
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
);
const documentNodeFragmentChatMessage = DocumentNode(definitions: [
  fragmentDefinitionChatMessage,
]);

extension ClientExtension$Fragment$ChatMessage on graphql.GraphQLClient {
  void writeFragment$ChatMessage({
    required Fragment$ChatMessage data,
    required Map<String, dynamic> idFields,
    bool broadcast = true,
  }) =>
      this.writeFragment(
        graphql.FragmentRequest(
          idFields: idFields,
          fragment: const graphql.Fragment(
            fragmentName: 'ChatMessage',
            document: documentNodeFragmentChatMessage,
          ),
        ),
        data: data.toJson(),
        broadcast: broadcast,
      );
  Fragment$ChatMessage? readFragment$ChatMessage({
    required Map<String, dynamic> idFields,
    bool optimistic = true,
  }) {
    final result = this.readFragment(
      graphql.FragmentRequest(
        idFields: idFields,
        fragment: const graphql.Fragment(
          fragmentName: 'ChatMessage',
          document: documentNodeFragmentChatMessage,
        ),
      ),
      optimistic: optimistic,
    );
    return result == null ? null : Fragment$ChatMessage.fromJson(result);
  }
}

class Fragment$ChatDriver {
  Fragment$ChatDriver({
    required this.id,
    this.firstName,
    this.lastName,
    this.media,
  });

  factory Fragment$ChatDriver.fromJson(Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$firstName = json['firstName'];
    final l$lastName = json['lastName'];
    final l$media = json['media'];
    return Fragment$ChatDriver(
      id: (l$id as String),
      firstName: (l$firstName as String?),
      lastName: (l$lastName as String?),
      media: l$media == null
          ? null
          : Fragment$ChatDriver$media.fromJson(
              (l$media as Map<String, dynamic>)),
    );
  }

  final String id;

  final String? firstName;

  final String? lastName;

  final Fragment$ChatDriver$media? media;

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
    if (!(other is Fragment$ChatDriver) || runtimeType != other.runtimeType) {
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

extension UtilityExtension$Fragment$ChatDriver on Fragment$ChatDriver {
  CopyWith$Fragment$ChatDriver<Fragment$ChatDriver> get copyWith =>
      CopyWith$Fragment$ChatDriver(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Fragment$ChatDriver<TRes> {
  factory CopyWith$Fragment$ChatDriver(
    Fragment$ChatDriver instance,
    TRes Function(Fragment$ChatDriver) then,
  ) = _CopyWithImpl$Fragment$ChatDriver;

  factory CopyWith$Fragment$ChatDriver.stub(TRes res) =
      _CopyWithStubImpl$Fragment$ChatDriver;

  TRes call({
    String? id,
    String? firstName,
    String? lastName,
    Fragment$ChatDriver$media? media,
  });
  CopyWith$Fragment$ChatDriver$media<TRes> get media;
}

class _CopyWithImpl$Fragment$ChatDriver<TRes>
    implements CopyWith$Fragment$ChatDriver<TRes> {
  _CopyWithImpl$Fragment$ChatDriver(
    this._instance,
    this._then,
  );

  final Fragment$ChatDriver _instance;

  final TRes Function(Fragment$ChatDriver) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? firstName = _undefined,
    Object? lastName = _undefined,
    Object? media = _undefined,
  }) =>
      _then(Fragment$ChatDriver(
        id: id == _undefined || id == null ? _instance.id : (id as String),
        firstName: firstName == _undefined
            ? _instance.firstName
            : (firstName as String?),
        lastName:
            lastName == _undefined ? _instance.lastName : (lastName as String?),
        media: media == _undefined
            ? _instance.media
            : (media as Fragment$ChatDriver$media?),
      ));
  CopyWith$Fragment$ChatDriver$media<TRes> get media {
    final local$media = _instance.media;
    return local$media == null
        ? CopyWith$Fragment$ChatDriver$media.stub(_then(_instance))
        : CopyWith$Fragment$ChatDriver$media(
            local$media, (e) => call(media: e));
  }
}

class _CopyWithStubImpl$Fragment$ChatDriver<TRes>
    implements CopyWith$Fragment$ChatDriver<TRes> {
  _CopyWithStubImpl$Fragment$ChatDriver(this._res);

  TRes _res;

  call({
    String? id,
    String? firstName,
    String? lastName,
    Fragment$ChatDriver$media? media,
  }) =>
      _res;
  CopyWith$Fragment$ChatDriver$media<TRes> get media =>
      CopyWith$Fragment$ChatDriver$media.stub(_res);
}

const fragmentDefinitionChatDriver = FragmentDefinitionNode(
  name: NameNode(value: 'ChatDriver'),
  typeCondition: TypeConditionNode(
      on: NamedTypeNode(
    name: NameNode(value: 'Driver'),
    isNonNull: false,
  )),
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
);
const documentNodeFragmentChatDriver = DocumentNode(definitions: [
  fragmentDefinitionChatDriver,
]);

extension ClientExtension$Fragment$ChatDriver on graphql.GraphQLClient {
  void writeFragment$ChatDriver({
    required Fragment$ChatDriver data,
    required Map<String, dynamic> idFields,
    bool broadcast = true,
  }) =>
      this.writeFragment(
        graphql.FragmentRequest(
          idFields: idFields,
          fragment: const graphql.Fragment(
            fragmentName: 'ChatDriver',
            document: documentNodeFragmentChatDriver,
          ),
        ),
        data: data.toJson(),
        broadcast: broadcast,
      );
  Fragment$ChatDriver? readFragment$ChatDriver({
    required Map<String, dynamic> idFields,
    bool optimistic = true,
  }) {
    final result = this.readFragment(
      graphql.FragmentRequest(
        idFields: idFields,
        fragment: const graphql.Fragment(
          fragmentName: 'ChatDriver',
          document: documentNodeFragmentChatDriver,
        ),
      ),
      optimistic: optimistic,
    );
    return result == null ? null : Fragment$ChatDriver.fromJson(result);
  }
}

class Fragment$ChatDriver$media {
  Fragment$ChatDriver$media({required this.address});

  factory Fragment$ChatDriver$media.fromJson(Map<String, dynamic> json) {
    final l$address = json['address'];
    return Fragment$ChatDriver$media(address: (l$address as String));
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
    if (!(other is Fragment$ChatDriver$media) ||
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

extension UtilityExtension$Fragment$ChatDriver$media
    on Fragment$ChatDriver$media {
  CopyWith$Fragment$ChatDriver$media<Fragment$ChatDriver$media> get copyWith =>
      CopyWith$Fragment$ChatDriver$media(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Fragment$ChatDriver$media<TRes> {
  factory CopyWith$Fragment$ChatDriver$media(
    Fragment$ChatDriver$media instance,
    TRes Function(Fragment$ChatDriver$media) then,
  ) = _CopyWithImpl$Fragment$ChatDriver$media;

  factory CopyWith$Fragment$ChatDriver$media.stub(TRes res) =
      _CopyWithStubImpl$Fragment$ChatDriver$media;

  TRes call({String? address});
}

class _CopyWithImpl$Fragment$ChatDriver$media<TRes>
    implements CopyWith$Fragment$ChatDriver$media<TRes> {
  _CopyWithImpl$Fragment$ChatDriver$media(
    this._instance,
    this._then,
  );

  final Fragment$ChatDriver$media _instance;

  final TRes Function(Fragment$ChatDriver$media) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? address = _undefined}) => _then(Fragment$ChatDriver$media(
      address: address == _undefined || address == null
          ? _instance.address
          : (address as String)));
}

class _CopyWithStubImpl$Fragment$ChatDriver$media<TRes>
    implements CopyWith$Fragment$ChatDriver$media<TRes> {
  _CopyWithStubImpl$Fragment$ChatDriver$media(this._res);

  TRes _res;

  call({String? address}) => _res;
}

class Fragment$ChatRider {
  Fragment$ChatRider({
    required this.id,
    this.firstName,
    this.lastName,
    this.media,
  });

  factory Fragment$ChatRider.fromJson(Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$firstName = json['firstName'];
    final l$lastName = json['lastName'];
    final l$media = json['media'];
    return Fragment$ChatRider(
      id: (l$id as String),
      firstName: (l$firstName as String?),
      lastName: (l$lastName as String?),
      media: l$media == null
          ? null
          : Fragment$ChatRider$media.fromJson(
              (l$media as Map<String, dynamic>)),
    );
  }

  final String id;

  final String? firstName;

  final String? lastName;

  final Fragment$ChatRider$media? media;

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
    if (!(other is Fragment$ChatRider) || runtimeType != other.runtimeType) {
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

extension UtilityExtension$Fragment$ChatRider on Fragment$ChatRider {
  CopyWith$Fragment$ChatRider<Fragment$ChatRider> get copyWith =>
      CopyWith$Fragment$ChatRider(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Fragment$ChatRider<TRes> {
  factory CopyWith$Fragment$ChatRider(
    Fragment$ChatRider instance,
    TRes Function(Fragment$ChatRider) then,
  ) = _CopyWithImpl$Fragment$ChatRider;

  factory CopyWith$Fragment$ChatRider.stub(TRes res) =
      _CopyWithStubImpl$Fragment$ChatRider;

  TRes call({
    String? id,
    String? firstName,
    String? lastName,
    Fragment$ChatRider$media? media,
  });
  CopyWith$Fragment$ChatRider$media<TRes> get media;
}

class _CopyWithImpl$Fragment$ChatRider<TRes>
    implements CopyWith$Fragment$ChatRider<TRes> {
  _CopyWithImpl$Fragment$ChatRider(
    this._instance,
    this._then,
  );

  final Fragment$ChatRider _instance;

  final TRes Function(Fragment$ChatRider) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? firstName = _undefined,
    Object? lastName = _undefined,
    Object? media = _undefined,
  }) =>
      _then(Fragment$ChatRider(
        id: id == _undefined || id == null ? _instance.id : (id as String),
        firstName: firstName == _undefined
            ? _instance.firstName
            : (firstName as String?),
        lastName:
            lastName == _undefined ? _instance.lastName : (lastName as String?),
        media: media == _undefined
            ? _instance.media
            : (media as Fragment$ChatRider$media?),
      ));
  CopyWith$Fragment$ChatRider$media<TRes> get media {
    final local$media = _instance.media;
    return local$media == null
        ? CopyWith$Fragment$ChatRider$media.stub(_then(_instance))
        : CopyWith$Fragment$ChatRider$media(local$media, (e) => call(media: e));
  }
}

class _CopyWithStubImpl$Fragment$ChatRider<TRes>
    implements CopyWith$Fragment$ChatRider<TRes> {
  _CopyWithStubImpl$Fragment$ChatRider(this._res);

  TRes _res;

  call({
    String? id,
    String? firstName,
    String? lastName,
    Fragment$ChatRider$media? media,
  }) =>
      _res;
  CopyWith$Fragment$ChatRider$media<TRes> get media =>
      CopyWith$Fragment$ChatRider$media.stub(_res);
}

const fragmentDefinitionChatRider = FragmentDefinitionNode(
  name: NameNode(value: 'ChatRider'),
  typeCondition: TypeConditionNode(
      on: NamedTypeNode(
    name: NameNode(value: 'Rider'),
    isNonNull: false,
  )),
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
);
const documentNodeFragmentChatRider = DocumentNode(definitions: [
  fragmentDefinitionChatRider,
]);

extension ClientExtension$Fragment$ChatRider on graphql.GraphQLClient {
  void writeFragment$ChatRider({
    required Fragment$ChatRider data,
    required Map<String, dynamic> idFields,
    bool broadcast = true,
  }) =>
      this.writeFragment(
        graphql.FragmentRequest(
          idFields: idFields,
          fragment: const graphql.Fragment(
            fragmentName: 'ChatRider',
            document: documentNodeFragmentChatRider,
          ),
        ),
        data: data.toJson(),
        broadcast: broadcast,
      );
  Fragment$ChatRider? readFragment$ChatRider({
    required Map<String, dynamic> idFields,
    bool optimistic = true,
  }) {
    final result = this.readFragment(
      graphql.FragmentRequest(
        idFields: idFields,
        fragment: const graphql.Fragment(
          fragmentName: 'ChatRider',
          document: documentNodeFragmentChatRider,
        ),
      ),
      optimistic: optimistic,
    );
    return result == null ? null : Fragment$ChatRider.fromJson(result);
  }
}

class Fragment$ChatRider$media {
  Fragment$ChatRider$media({required this.address});

  factory Fragment$ChatRider$media.fromJson(Map<String, dynamic> json) {
    final l$address = json['address'];
    return Fragment$ChatRider$media(address: (l$address as String));
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
    if (!(other is Fragment$ChatRider$media) ||
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

extension UtilityExtension$Fragment$ChatRider$media
    on Fragment$ChatRider$media {
  CopyWith$Fragment$ChatRider$media<Fragment$ChatRider$media> get copyWith =>
      CopyWith$Fragment$ChatRider$media(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Fragment$ChatRider$media<TRes> {
  factory CopyWith$Fragment$ChatRider$media(
    Fragment$ChatRider$media instance,
    TRes Function(Fragment$ChatRider$media) then,
  ) = _CopyWithImpl$Fragment$ChatRider$media;

  factory CopyWith$Fragment$ChatRider$media.stub(TRes res) =
      _CopyWithStubImpl$Fragment$ChatRider$media;

  TRes call({String? address});
}

class _CopyWithImpl$Fragment$ChatRider$media<TRes>
    implements CopyWith$Fragment$ChatRider$media<TRes> {
  _CopyWithImpl$Fragment$ChatRider$media(
    this._instance,
    this._then,
  );

  final Fragment$ChatRider$media _instance;

  final TRes Function(Fragment$ChatRider$media) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? address = _undefined}) => _then(Fragment$ChatRider$media(
      address: address == _undefined || address == null
          ? _instance.address
          : (address as String)));
}

class _CopyWithStubImpl$Fragment$ChatRider$media<TRes>
    implements CopyWith$Fragment$ChatRider$media<TRes> {
  _CopyWithStubImpl$Fragment$ChatRider$media(this._res);

  TRes _res;

  call({String? address}) => _res;
}

class Fragment$BasicProfile {
  Fragment$BasicProfile({
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

  factory Fragment$BasicProfile.fromJson(Map<String, dynamic> json) {
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
    return Fragment$BasicProfile(
      mobileNumber: (l$mobileNumber as String),
      firstName: (l$firstName as String?),
      lastName: (l$lastName as String?),
      searchDistance: (l$searchDistance as int?),
      media: l$media == null
          ? null
          : Fragment$BasicProfile$media.fromJson(
              (l$media as Map<String, dynamic>)),
      softRejectionNote: (l$softRejectionNote as String?),
      status: fromJson$Enum$DriverStatus((l$status as String)),
      currentOrders: (l$currentOrders as List<dynamic>)
          .map((e) =>
              Fragment$CurrentOrder.fromJson((e as Map<String, dynamic>)))
          .toList(),
      wallets: (l$wallets as List<dynamic>)
          .map((e) => Fragment$BasicProfile$wallets.fromJson(
              (e as Map<String, dynamic>)))
          .toList(),
      isWalletHidden: (l$isWalletHidden as bool),
    );
  }

  final String mobileNumber;

  final String? firstName;

  final String? lastName;

  final int? searchDistance;

  final Fragment$BasicProfile$media? media;

  final String? softRejectionNote;

  final Enum$DriverStatus status;

  final List<Fragment$CurrentOrder> currentOrders;

  final List<Fragment$BasicProfile$wallets> wallets;

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
    if (!(other is Fragment$BasicProfile) || runtimeType != other.runtimeType) {
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

extension UtilityExtension$Fragment$BasicProfile on Fragment$BasicProfile {
  CopyWith$Fragment$BasicProfile<Fragment$BasicProfile> get copyWith =>
      CopyWith$Fragment$BasicProfile(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Fragment$BasicProfile<TRes> {
  factory CopyWith$Fragment$BasicProfile(
    Fragment$BasicProfile instance,
    TRes Function(Fragment$BasicProfile) then,
  ) = _CopyWithImpl$Fragment$BasicProfile;

  factory CopyWith$Fragment$BasicProfile.stub(TRes res) =
      _CopyWithStubImpl$Fragment$BasicProfile;

  TRes call({
    String? mobileNumber,
    String? firstName,
    String? lastName,
    int? searchDistance,
    Fragment$BasicProfile$media? media,
    String? softRejectionNote,
    Enum$DriverStatus? status,
    List<Fragment$CurrentOrder>? currentOrders,
    List<Fragment$BasicProfile$wallets>? wallets,
    bool? isWalletHidden,
  });
  CopyWith$Fragment$BasicProfile$media<TRes> get media;
  TRes currentOrders(
      Iterable<Fragment$CurrentOrder> Function(
              Iterable<CopyWith$Fragment$CurrentOrder<Fragment$CurrentOrder>>)
          _fn);
  TRes wallets(
      Iterable<Fragment$BasicProfile$wallets> Function(
              Iterable<
                  CopyWith$Fragment$BasicProfile$wallets<
                      Fragment$BasicProfile$wallets>>)
          _fn);
}

class _CopyWithImpl$Fragment$BasicProfile<TRes>
    implements CopyWith$Fragment$BasicProfile<TRes> {
  _CopyWithImpl$Fragment$BasicProfile(
    this._instance,
    this._then,
  );

  final Fragment$BasicProfile _instance;

  final TRes Function(Fragment$BasicProfile) _then;

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
      _then(Fragment$BasicProfile(
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
            : (media as Fragment$BasicProfile$media?),
        softRejectionNote: softRejectionNote == _undefined
            ? _instance.softRejectionNote
            : (softRejectionNote as String?),
        status: status == _undefined || status == null
            ? _instance.status
            : (status as Enum$DriverStatus),
        currentOrders: currentOrders == _undefined || currentOrders == null
            ? _instance.currentOrders
            : (currentOrders as List<Fragment$CurrentOrder>),
        wallets: wallets == _undefined || wallets == null
            ? _instance.wallets
            : (wallets as List<Fragment$BasicProfile$wallets>),
        isWalletHidden: isWalletHidden == _undefined || isWalletHidden == null
            ? _instance.isWalletHidden
            : (isWalletHidden as bool),
      ));
  CopyWith$Fragment$BasicProfile$media<TRes> get media {
    final local$media = _instance.media;
    return local$media == null
        ? CopyWith$Fragment$BasicProfile$media.stub(_then(_instance))
        : CopyWith$Fragment$BasicProfile$media(
            local$media, (e) => call(media: e));
  }

  TRes currentOrders(
          Iterable<Fragment$CurrentOrder> Function(
                  Iterable<
                      CopyWith$Fragment$CurrentOrder<Fragment$CurrentOrder>>)
              _fn) =>
      call(
          currentOrders: _fn(
              _instance.currentOrders.map((e) => CopyWith$Fragment$CurrentOrder(
                    e,
                    (i) => i,
                  ))).toList());
  TRes wallets(
          Iterable<Fragment$BasicProfile$wallets> Function(
                  Iterable<
                      CopyWith$Fragment$BasicProfile$wallets<
                          Fragment$BasicProfile$wallets>>)
              _fn) =>
      call(
          wallets: _fn(_instance.wallets
              .map((e) => CopyWith$Fragment$BasicProfile$wallets(
                    e,
                    (i) => i,
                  ))).toList());
}

class _CopyWithStubImpl$Fragment$BasicProfile<TRes>
    implements CopyWith$Fragment$BasicProfile<TRes> {
  _CopyWithStubImpl$Fragment$BasicProfile(this._res);

  TRes _res;

  call({
    String? mobileNumber,
    String? firstName,
    String? lastName,
    int? searchDistance,
    Fragment$BasicProfile$media? media,
    String? softRejectionNote,
    Enum$DriverStatus? status,
    List<Fragment$CurrentOrder>? currentOrders,
    List<Fragment$BasicProfile$wallets>? wallets,
    bool? isWalletHidden,
  }) =>
      _res;
  CopyWith$Fragment$BasicProfile$media<TRes> get media =>
      CopyWith$Fragment$BasicProfile$media.stub(_res);
  currentOrders(_fn) => _res;
  wallets(_fn) => _res;
}

const fragmentDefinitionBasicProfile = FragmentDefinitionNode(
  name: NameNode(value: 'BasicProfile'),
  typeCondition: TypeConditionNode(
      on: NamedTypeNode(
    name: NameNode(value: 'Driver'),
    isNonNull: false,
  )),
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
  ]),
);
const documentNodeFragmentBasicProfile = DocumentNode(definitions: [
  fragmentDefinitionBasicProfile,
  fragmentDefinitionCurrentOrder,
  fragmentDefinitionPoint,
]);

extension ClientExtension$Fragment$BasicProfile on graphql.GraphQLClient {
  void writeFragment$BasicProfile({
    required Fragment$BasicProfile data,
    required Map<String, dynamic> idFields,
    bool broadcast = true,
  }) =>
      this.writeFragment(
        graphql.FragmentRequest(
          idFields: idFields,
          fragment: const graphql.Fragment(
            fragmentName: 'BasicProfile',
            document: documentNodeFragmentBasicProfile,
          ),
        ),
        data: data.toJson(),
        broadcast: broadcast,
      );
  Fragment$BasicProfile? readFragment$BasicProfile({
    required Map<String, dynamic> idFields,
    bool optimistic = true,
  }) {
    final result = this.readFragment(
      graphql.FragmentRequest(
        idFields: idFields,
        fragment: const graphql.Fragment(
          fragmentName: 'BasicProfile',
          document: documentNodeFragmentBasicProfile,
        ),
      ),
      optimistic: optimistic,
    );
    return result == null ? null : Fragment$BasicProfile.fromJson(result);
  }
}

class Fragment$BasicProfile$media {
  Fragment$BasicProfile$media({required this.address});

  factory Fragment$BasicProfile$media.fromJson(Map<String, dynamic> json) {
    final l$address = json['address'];
    return Fragment$BasicProfile$media(address: (l$address as String));
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
    if (!(other is Fragment$BasicProfile$media) ||
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

extension UtilityExtension$Fragment$BasicProfile$media
    on Fragment$BasicProfile$media {
  CopyWith$Fragment$BasicProfile$media<Fragment$BasicProfile$media>
      get copyWith => CopyWith$Fragment$BasicProfile$media(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Fragment$BasicProfile$media<TRes> {
  factory CopyWith$Fragment$BasicProfile$media(
    Fragment$BasicProfile$media instance,
    TRes Function(Fragment$BasicProfile$media) then,
  ) = _CopyWithImpl$Fragment$BasicProfile$media;

  factory CopyWith$Fragment$BasicProfile$media.stub(TRes res) =
      _CopyWithStubImpl$Fragment$BasicProfile$media;

  TRes call({String? address});
}

class _CopyWithImpl$Fragment$BasicProfile$media<TRes>
    implements CopyWith$Fragment$BasicProfile$media<TRes> {
  _CopyWithImpl$Fragment$BasicProfile$media(
    this._instance,
    this._then,
  );

  final Fragment$BasicProfile$media _instance;

  final TRes Function(Fragment$BasicProfile$media) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? address = _undefined}) =>
      _then(Fragment$BasicProfile$media(
          address: address == _undefined || address == null
              ? _instance.address
              : (address as String)));
}

class _CopyWithStubImpl$Fragment$BasicProfile$media<TRes>
    implements CopyWith$Fragment$BasicProfile$media<TRes> {
  _CopyWithStubImpl$Fragment$BasicProfile$media(this._res);

  TRes _res;

  call({String? address}) => _res;
}

class Fragment$BasicProfile$wallets {
  Fragment$BasicProfile$wallets({
    required this.balance,
    required this.currency,
  });

  factory Fragment$BasicProfile$wallets.fromJson(Map<String, dynamic> json) {
    final l$balance = json['balance'];
    final l$currency = json['currency'];
    return Fragment$BasicProfile$wallets(
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
    if (!(other is Fragment$BasicProfile$wallets) ||
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

extension UtilityExtension$Fragment$BasicProfile$wallets
    on Fragment$BasicProfile$wallets {
  CopyWith$Fragment$BasicProfile$wallets<Fragment$BasicProfile$wallets>
      get copyWith => CopyWith$Fragment$BasicProfile$wallets(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Fragment$BasicProfile$wallets<TRes> {
  factory CopyWith$Fragment$BasicProfile$wallets(
    Fragment$BasicProfile$wallets instance,
    TRes Function(Fragment$BasicProfile$wallets) then,
  ) = _CopyWithImpl$Fragment$BasicProfile$wallets;

  factory CopyWith$Fragment$BasicProfile$wallets.stub(TRes res) =
      _CopyWithStubImpl$Fragment$BasicProfile$wallets;

  TRes call({
    double? balance,
    String? currency,
  });
}

class _CopyWithImpl$Fragment$BasicProfile$wallets<TRes>
    implements CopyWith$Fragment$BasicProfile$wallets<TRes> {
  _CopyWithImpl$Fragment$BasicProfile$wallets(
    this._instance,
    this._then,
  );

  final Fragment$BasicProfile$wallets _instance;

  final TRes Function(Fragment$BasicProfile$wallets) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? balance = _undefined,
    Object? currency = _undefined,
  }) =>
      _then(Fragment$BasicProfile$wallets(
        balance: balance == _undefined || balance == null
            ? _instance.balance
            : (balance as double),
        currency: currency == _undefined || currency == null
            ? _instance.currency
            : (currency as String),
      ));
}

class _CopyWithStubImpl$Fragment$BasicProfile$wallets<TRes>
    implements CopyWith$Fragment$BasicProfile$wallets<TRes> {
  _CopyWithStubImpl$Fragment$BasicProfile$wallets(this._res);

  TRes _res;

  call({
    double? balance,
    String? currency,
  }) =>
      _res;
}

class Fragment$DriverMedia {
  Fragment$DriverMedia({
    required this.id,
    required this.address,
  });

  factory Fragment$DriverMedia.fromJson(Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$address = json['address'];
    return Fragment$DriverMedia(
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
    if (!(other is Fragment$DriverMedia) || runtimeType != other.runtimeType) {
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

extension UtilityExtension$Fragment$DriverMedia on Fragment$DriverMedia {
  CopyWith$Fragment$DriverMedia<Fragment$DriverMedia> get copyWith =>
      CopyWith$Fragment$DriverMedia(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Fragment$DriverMedia<TRes> {
  factory CopyWith$Fragment$DriverMedia(
    Fragment$DriverMedia instance,
    TRes Function(Fragment$DriverMedia) then,
  ) = _CopyWithImpl$Fragment$DriverMedia;

  factory CopyWith$Fragment$DriverMedia.stub(TRes res) =
      _CopyWithStubImpl$Fragment$DriverMedia;

  TRes call({
    String? id,
    String? address,
  });
}

class _CopyWithImpl$Fragment$DriverMedia<TRes>
    implements CopyWith$Fragment$DriverMedia<TRes> {
  _CopyWithImpl$Fragment$DriverMedia(
    this._instance,
    this._then,
  );

  final Fragment$DriverMedia _instance;

  final TRes Function(Fragment$DriverMedia) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? address = _undefined,
  }) =>
      _then(Fragment$DriverMedia(
        id: id == _undefined || id == null ? _instance.id : (id as String),
        address: address == _undefined || address == null
            ? _instance.address
            : (address as String),
      ));
}

class _CopyWithStubImpl$Fragment$DriverMedia<TRes>
    implements CopyWith$Fragment$DriverMedia<TRes> {
  _CopyWithStubImpl$Fragment$DriverMedia(this._res);

  TRes _res;

  call({
    String? id,
    String? address,
  }) =>
      _res;
}

const fragmentDefinitionDriverMedia = FragmentDefinitionNode(
  name: NameNode(value: 'DriverMedia'),
  typeCondition: TypeConditionNode(
      on: NamedTypeNode(
    name: NameNode(value: 'Media'),
    isNonNull: false,
  )),
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
);
const documentNodeFragmentDriverMedia = DocumentNode(definitions: [
  fragmentDefinitionDriverMedia,
]);

extension ClientExtension$Fragment$DriverMedia on graphql.GraphQLClient {
  void writeFragment$DriverMedia({
    required Fragment$DriverMedia data,
    required Map<String, dynamic> idFields,
    bool broadcast = true,
  }) =>
      this.writeFragment(
        graphql.FragmentRequest(
          idFields: idFields,
          fragment: const graphql.Fragment(
            fragmentName: 'DriverMedia',
            document: documentNodeFragmentDriverMedia,
          ),
        ),
        data: data.toJson(),
        broadcast: broadcast,
      );
  Fragment$DriverMedia? readFragment$DriverMedia({
    required Map<String, dynamic> idFields,
    bool optimistic = true,
  }) {
    final result = this.readFragment(
      graphql.FragmentRequest(
        idFields: idFields,
        fragment: const graphql.Fragment(
          fragmentName: 'DriverMedia',
          document: documentNodeFragmentDriverMedia,
        ),
      ),
      optimistic: optimistic,
    );
    return result == null ? null : Fragment$DriverMedia.fromJson(result);
  }
}
