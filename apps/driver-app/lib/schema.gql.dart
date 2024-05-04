import 'package:ridy/graphql/scalars/connection_cursor.dart';
import 'package:ridy/graphql/scalars/datetime.dart';

class Input$RiderWalletFilter {
  factory Input$RiderWalletFilter({
    List<Input$RiderWalletFilter>? and,
    List<Input$RiderWalletFilter>? or,
    Input$IDFilterComparison? id,
    Input$IDFilterComparison? riderId,
  }) =>
      Input$RiderWalletFilter._({
        if (and != null) r'and': and,
        if (or != null) r'or': or,
        if (id != null) r'id': id,
        if (riderId != null) r'riderId': riderId,
      });

  Input$RiderWalletFilter._(this._$data);

  factory Input$RiderWalletFilter.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('and')) {
      final l$and = data['and'];
      result$data['and'] = (l$and as List<dynamic>?)
          ?.map((e) =>
              Input$RiderWalletFilter.fromJson((e as Map<String, dynamic>)))
          .toList();
    }
    if (data.containsKey('or')) {
      final l$or = data['or'];
      result$data['or'] = (l$or as List<dynamic>?)
          ?.map((e) =>
              Input$RiderWalletFilter.fromJson((e as Map<String, dynamic>)))
          .toList();
    }
    if (data.containsKey('id')) {
      final l$id = data['id'];
      result$data['id'] = l$id == null
          ? null
          : Input$IDFilterComparison.fromJson((l$id as Map<String, dynamic>));
    }
    if (data.containsKey('riderId')) {
      final l$riderId = data['riderId'];
      result$data['riderId'] = l$riderId == null
          ? null
          : Input$IDFilterComparison.fromJson(
              (l$riderId as Map<String, dynamic>));
    }
    return Input$RiderWalletFilter._(result$data);
  }

  Map<String, dynamic> _$data;

  List<Input$RiderWalletFilter>? get and =>
      (_$data['and'] as List<Input$RiderWalletFilter>?);
  List<Input$RiderWalletFilter>? get or =>
      (_$data['or'] as List<Input$RiderWalletFilter>?);
  Input$IDFilterComparison? get id =>
      (_$data['id'] as Input$IDFilterComparison?);
  Input$IDFilterComparison? get riderId =>
      (_$data['riderId'] as Input$IDFilterComparison?);
  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('and')) {
      final l$and = and;
      result$data['and'] = l$and?.map((e) => e.toJson()).toList();
    }
    if (_$data.containsKey('or')) {
      final l$or = or;
      result$data['or'] = l$or?.map((e) => e.toJson()).toList();
    }
    if (_$data.containsKey('id')) {
      final l$id = id;
      result$data['id'] = l$id?.toJson();
    }
    if (_$data.containsKey('riderId')) {
      final l$riderId = riderId;
      result$data['riderId'] = l$riderId?.toJson();
    }
    return result$data;
  }

  CopyWith$Input$RiderWalletFilter<Input$RiderWalletFilter> get copyWith =>
      CopyWith$Input$RiderWalletFilter(
        this,
        (i) => i,
      );
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Input$RiderWalletFilter) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$and = and;
    final lOther$and = other.and;
    if (_$data.containsKey('and') != other._$data.containsKey('and')) {
      return false;
    }
    if (l$and != null && lOther$and != null) {
      if (l$and.length != lOther$and.length) {
        return false;
      }
      for (int i = 0; i < l$and.length; i++) {
        final l$and$entry = l$and[i];
        final lOther$and$entry = lOther$and[i];
        if (l$and$entry != lOther$and$entry) {
          return false;
        }
      }
    } else if (l$and != lOther$and) {
      return false;
    }
    final l$or = or;
    final lOther$or = other.or;
    if (_$data.containsKey('or') != other._$data.containsKey('or')) {
      return false;
    }
    if (l$or != null && lOther$or != null) {
      if (l$or.length != lOther$or.length) {
        return false;
      }
      for (int i = 0; i < l$or.length; i++) {
        final l$or$entry = l$or[i];
        final lOther$or$entry = lOther$or[i];
        if (l$or$entry != lOther$or$entry) {
          return false;
        }
      }
    } else if (l$or != lOther$or) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (_$data.containsKey('id') != other._$data.containsKey('id')) {
      return false;
    }
    if (l$id != lOther$id) {
      return false;
    }
    final l$riderId = riderId;
    final lOther$riderId = other.riderId;
    if (_$data.containsKey('riderId') != other._$data.containsKey('riderId')) {
      return false;
    }
    if (l$riderId != lOther$riderId) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$and = and;
    final l$or = or;
    final l$id = id;
    final l$riderId = riderId;
    return Object.hashAll([
      _$data.containsKey('and')
          ? l$and == null
              ? null
              : Object.hashAll(l$and.map((v) => v))
          : const {},
      _$data.containsKey('or')
          ? l$or == null
              ? null
              : Object.hashAll(l$or.map((v) => v))
          : const {},
      _$data.containsKey('id') ? l$id : const {},
      _$data.containsKey('riderId') ? l$riderId : const {},
    ]);
  }
}

abstract class CopyWith$Input$RiderWalletFilter<TRes> {
  factory CopyWith$Input$RiderWalletFilter(
    Input$RiderWalletFilter instance,
    TRes Function(Input$RiderWalletFilter) then,
  ) = _CopyWithImpl$Input$RiderWalletFilter;

  factory CopyWith$Input$RiderWalletFilter.stub(TRes res) =
      _CopyWithStubImpl$Input$RiderWalletFilter;

  TRes call({
    List<Input$RiderWalletFilter>? and,
    List<Input$RiderWalletFilter>? or,
    Input$IDFilterComparison? id,
    Input$IDFilterComparison? riderId,
  });
  TRes and(
      Iterable<Input$RiderWalletFilter>? Function(
              Iterable<
                  CopyWith$Input$RiderWalletFilter<Input$RiderWalletFilter>>?)
          _fn);
  TRes or(
      Iterable<Input$RiderWalletFilter>? Function(
              Iterable<
                  CopyWith$Input$RiderWalletFilter<Input$RiderWalletFilter>>?)
          _fn);
  CopyWith$Input$IDFilterComparison<TRes> get id;
  CopyWith$Input$IDFilterComparison<TRes> get riderId;
}

class _CopyWithImpl$Input$RiderWalletFilter<TRes>
    implements CopyWith$Input$RiderWalletFilter<TRes> {
  _CopyWithImpl$Input$RiderWalletFilter(
    this._instance,
    this._then,
  );

  final Input$RiderWalletFilter _instance;

  final TRes Function(Input$RiderWalletFilter) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? and = _undefined,
    Object? or = _undefined,
    Object? id = _undefined,
    Object? riderId = _undefined,
  }) =>
      _then(Input$RiderWalletFilter._({
        ..._instance._$data,
        if (and != _undefined) 'and': (and as List<Input$RiderWalletFilter>?),
        if (or != _undefined) 'or': (or as List<Input$RiderWalletFilter>?),
        if (id != _undefined) 'id': (id as Input$IDFilterComparison?),
        if (riderId != _undefined)
          'riderId': (riderId as Input$IDFilterComparison?),
      }));
  TRes and(
          Iterable<Input$RiderWalletFilter>? Function(
                  Iterable<
                      CopyWith$Input$RiderWalletFilter<
                          Input$RiderWalletFilter>>?)
              _fn) =>
      call(
          and: _fn(_instance.and?.map((e) => CopyWith$Input$RiderWalletFilter(
                e,
                (i) => i,
              )))?.toList());
  TRes or(
          Iterable<Input$RiderWalletFilter>? Function(
                  Iterable<
                      CopyWith$Input$RiderWalletFilter<
                          Input$RiderWalletFilter>>?)
              _fn) =>
      call(
          or: _fn(_instance.or?.map((e) => CopyWith$Input$RiderWalletFilter(
                e,
                (i) => i,
              )))?.toList());
  CopyWith$Input$IDFilterComparison<TRes> get id {
    final local$id = _instance.id;
    return local$id == null
        ? CopyWith$Input$IDFilterComparison.stub(_then(_instance))
        : CopyWith$Input$IDFilterComparison(local$id, (e) => call(id: e));
  }

  CopyWith$Input$IDFilterComparison<TRes> get riderId {
    final local$riderId = _instance.riderId;
    return local$riderId == null
        ? CopyWith$Input$IDFilterComparison.stub(_then(_instance))
        : CopyWith$Input$IDFilterComparison(
            local$riderId, (e) => call(riderId: e));
  }
}

class _CopyWithStubImpl$Input$RiderWalletFilter<TRes>
    implements CopyWith$Input$RiderWalletFilter<TRes> {
  _CopyWithStubImpl$Input$RiderWalletFilter(this._res);

  TRes _res;

  call({
    List<Input$RiderWalletFilter>? and,
    List<Input$RiderWalletFilter>? or,
    Input$IDFilterComparison? id,
    Input$IDFilterComparison? riderId,
  }) =>
      _res;
  and(_fn) => _res;
  or(_fn) => _res;
  CopyWith$Input$IDFilterComparison<TRes> get id =>
      CopyWith$Input$IDFilterComparison.stub(_res);
  CopyWith$Input$IDFilterComparison<TRes> get riderId =>
      CopyWith$Input$IDFilterComparison.stub(_res);
}

class Input$IDFilterComparison {
  factory Input$IDFilterComparison({
    bool? $is,
    bool? isNot,
    String? eq,
    String? neq,
    String? gt,
    String? gte,
    String? lt,
    String? lte,
    String? like,
    String? notLike,
    String? iLike,
    String? notILike,
    List<String>? $in,
    List<String>? notIn,
  }) =>
      Input$IDFilterComparison._({
        if ($is != null) r'is': $is,
        if (isNot != null) r'isNot': isNot,
        if (eq != null) r'eq': eq,
        if (neq != null) r'neq': neq,
        if (gt != null) r'gt': gt,
        if (gte != null) r'gte': gte,
        if (lt != null) r'lt': lt,
        if (lte != null) r'lte': lte,
        if (like != null) r'like': like,
        if (notLike != null) r'notLike': notLike,
        if (iLike != null) r'iLike': iLike,
        if (notILike != null) r'notILike': notILike,
        if ($in != null) r'in': $in,
        if (notIn != null) r'notIn': notIn,
      });

  Input$IDFilterComparison._(this._$data);

  factory Input$IDFilterComparison.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('is')) {
      final l$$is = data['is'];
      result$data['is'] = (l$$is as bool?);
    }
    if (data.containsKey('isNot')) {
      final l$isNot = data['isNot'];
      result$data['isNot'] = (l$isNot as bool?);
    }
    if (data.containsKey('eq')) {
      final l$eq = data['eq'];
      result$data['eq'] = (l$eq as String?);
    }
    if (data.containsKey('neq')) {
      final l$neq = data['neq'];
      result$data['neq'] = (l$neq as String?);
    }
    if (data.containsKey('gt')) {
      final l$gt = data['gt'];
      result$data['gt'] = (l$gt as String?);
    }
    if (data.containsKey('gte')) {
      final l$gte = data['gte'];
      result$data['gte'] = (l$gte as String?);
    }
    if (data.containsKey('lt')) {
      final l$lt = data['lt'];
      result$data['lt'] = (l$lt as String?);
    }
    if (data.containsKey('lte')) {
      final l$lte = data['lte'];
      result$data['lte'] = (l$lte as String?);
    }
    if (data.containsKey('like')) {
      final l$like = data['like'];
      result$data['like'] = (l$like as String?);
    }
    if (data.containsKey('notLike')) {
      final l$notLike = data['notLike'];
      result$data['notLike'] = (l$notLike as String?);
    }
    if (data.containsKey('iLike')) {
      final l$iLike = data['iLike'];
      result$data['iLike'] = (l$iLike as String?);
    }
    if (data.containsKey('notILike')) {
      final l$notILike = data['notILike'];
      result$data['notILike'] = (l$notILike as String?);
    }
    if (data.containsKey('in')) {
      final l$$in = data['in'];
      result$data['in'] =
          (l$$in as List<dynamic>?)?.map((e) => (e as String)).toList();
    }
    if (data.containsKey('notIn')) {
      final l$notIn = data['notIn'];
      result$data['notIn'] =
          (l$notIn as List<dynamic>?)?.map((e) => (e as String)).toList();
    }
    return Input$IDFilterComparison._(result$data);
  }

  Map<String, dynamic> _$data;

  bool? get $is => (_$data['is'] as bool?);
  bool? get isNot => (_$data['isNot'] as bool?);
  String? get eq => (_$data['eq'] as String?);
  String? get neq => (_$data['neq'] as String?);
  String? get gt => (_$data['gt'] as String?);
  String? get gte => (_$data['gte'] as String?);
  String? get lt => (_$data['lt'] as String?);
  String? get lte => (_$data['lte'] as String?);
  String? get like => (_$data['like'] as String?);
  String? get notLike => (_$data['notLike'] as String?);
  String? get iLike => (_$data['iLike'] as String?);
  String? get notILike => (_$data['notILike'] as String?);
  List<String>? get $in => (_$data['in'] as List<String>?);
  List<String>? get notIn => (_$data['notIn'] as List<String>?);
  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('is')) {
      final l$$is = $is;
      result$data['is'] = l$$is;
    }
    if (_$data.containsKey('isNot')) {
      final l$isNot = isNot;
      result$data['isNot'] = l$isNot;
    }
    if (_$data.containsKey('eq')) {
      final l$eq = eq;
      result$data['eq'] = l$eq;
    }
    if (_$data.containsKey('neq')) {
      final l$neq = neq;
      result$data['neq'] = l$neq;
    }
    if (_$data.containsKey('gt')) {
      final l$gt = gt;
      result$data['gt'] = l$gt;
    }
    if (_$data.containsKey('gte')) {
      final l$gte = gte;
      result$data['gte'] = l$gte;
    }
    if (_$data.containsKey('lt')) {
      final l$lt = lt;
      result$data['lt'] = l$lt;
    }
    if (_$data.containsKey('lte')) {
      final l$lte = lte;
      result$data['lte'] = l$lte;
    }
    if (_$data.containsKey('like')) {
      final l$like = like;
      result$data['like'] = l$like;
    }
    if (_$data.containsKey('notLike')) {
      final l$notLike = notLike;
      result$data['notLike'] = l$notLike;
    }
    if (_$data.containsKey('iLike')) {
      final l$iLike = iLike;
      result$data['iLike'] = l$iLike;
    }
    if (_$data.containsKey('notILike')) {
      final l$notILike = notILike;
      result$data['notILike'] = l$notILike;
    }
    if (_$data.containsKey('in')) {
      final l$$in = $in;
      result$data['in'] = l$$in?.map((e) => e).toList();
    }
    if (_$data.containsKey('notIn')) {
      final l$notIn = notIn;
      result$data['notIn'] = l$notIn?.map((e) => e).toList();
    }
    return result$data;
  }

  CopyWith$Input$IDFilterComparison<Input$IDFilterComparison> get copyWith =>
      CopyWith$Input$IDFilterComparison(
        this,
        (i) => i,
      );
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Input$IDFilterComparison) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$$is = $is;
    final lOther$$is = other.$is;
    if (_$data.containsKey('is') != other._$data.containsKey('is')) {
      return false;
    }
    if (l$$is != lOther$$is) {
      return false;
    }
    final l$isNot = isNot;
    final lOther$isNot = other.isNot;
    if (_$data.containsKey('isNot') != other._$data.containsKey('isNot')) {
      return false;
    }
    if (l$isNot != lOther$isNot) {
      return false;
    }
    final l$eq = eq;
    final lOther$eq = other.eq;
    if (_$data.containsKey('eq') != other._$data.containsKey('eq')) {
      return false;
    }
    if (l$eq != lOther$eq) {
      return false;
    }
    final l$neq = neq;
    final lOther$neq = other.neq;
    if (_$data.containsKey('neq') != other._$data.containsKey('neq')) {
      return false;
    }
    if (l$neq != lOther$neq) {
      return false;
    }
    final l$gt = gt;
    final lOther$gt = other.gt;
    if (_$data.containsKey('gt') != other._$data.containsKey('gt')) {
      return false;
    }
    if (l$gt != lOther$gt) {
      return false;
    }
    final l$gte = gte;
    final lOther$gte = other.gte;
    if (_$data.containsKey('gte') != other._$data.containsKey('gte')) {
      return false;
    }
    if (l$gte != lOther$gte) {
      return false;
    }
    final l$lt = lt;
    final lOther$lt = other.lt;
    if (_$data.containsKey('lt') != other._$data.containsKey('lt')) {
      return false;
    }
    if (l$lt != lOther$lt) {
      return false;
    }
    final l$lte = lte;
    final lOther$lte = other.lte;
    if (_$data.containsKey('lte') != other._$data.containsKey('lte')) {
      return false;
    }
    if (l$lte != lOther$lte) {
      return false;
    }
    final l$like = like;
    final lOther$like = other.like;
    if (_$data.containsKey('like') != other._$data.containsKey('like')) {
      return false;
    }
    if (l$like != lOther$like) {
      return false;
    }
    final l$notLike = notLike;
    final lOther$notLike = other.notLike;
    if (_$data.containsKey('notLike') != other._$data.containsKey('notLike')) {
      return false;
    }
    if (l$notLike != lOther$notLike) {
      return false;
    }
    final l$iLike = iLike;
    final lOther$iLike = other.iLike;
    if (_$data.containsKey('iLike') != other._$data.containsKey('iLike')) {
      return false;
    }
    if (l$iLike != lOther$iLike) {
      return false;
    }
    final l$notILike = notILike;
    final lOther$notILike = other.notILike;
    if (_$data.containsKey('notILike') !=
        other._$data.containsKey('notILike')) {
      return false;
    }
    if (l$notILike != lOther$notILike) {
      return false;
    }
    final l$$in = $in;
    final lOther$$in = other.$in;
    if (_$data.containsKey('in') != other._$data.containsKey('in')) {
      return false;
    }
    if (l$$in != null && lOther$$in != null) {
      if (l$$in.length != lOther$$in.length) {
        return false;
      }
      for (int i = 0; i < l$$in.length; i++) {
        final l$$in$entry = l$$in[i];
        final lOther$$in$entry = lOther$$in[i];
        if (l$$in$entry != lOther$$in$entry) {
          return false;
        }
      }
    } else if (l$$in != lOther$$in) {
      return false;
    }
    final l$notIn = notIn;
    final lOther$notIn = other.notIn;
    if (_$data.containsKey('notIn') != other._$data.containsKey('notIn')) {
      return false;
    }
    if (l$notIn != null && lOther$notIn != null) {
      if (l$notIn.length != lOther$notIn.length) {
        return false;
      }
      for (int i = 0; i < l$notIn.length; i++) {
        final l$notIn$entry = l$notIn[i];
        final lOther$notIn$entry = lOther$notIn[i];
        if (l$notIn$entry != lOther$notIn$entry) {
          return false;
        }
      }
    } else if (l$notIn != lOther$notIn) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$$is = $is;
    final l$isNot = isNot;
    final l$eq = eq;
    final l$neq = neq;
    final l$gt = gt;
    final l$gte = gte;
    final l$lt = lt;
    final l$lte = lte;
    final l$like = like;
    final l$notLike = notLike;
    final l$iLike = iLike;
    final l$notILike = notILike;
    final l$$in = $in;
    final l$notIn = notIn;
    return Object.hashAll([
      _$data.containsKey('is') ? l$$is : const {},
      _$data.containsKey('isNot') ? l$isNot : const {},
      _$data.containsKey('eq') ? l$eq : const {},
      _$data.containsKey('neq') ? l$neq : const {},
      _$data.containsKey('gt') ? l$gt : const {},
      _$data.containsKey('gte') ? l$gte : const {},
      _$data.containsKey('lt') ? l$lt : const {},
      _$data.containsKey('lte') ? l$lte : const {},
      _$data.containsKey('like') ? l$like : const {},
      _$data.containsKey('notLike') ? l$notLike : const {},
      _$data.containsKey('iLike') ? l$iLike : const {},
      _$data.containsKey('notILike') ? l$notILike : const {},
      _$data.containsKey('in')
          ? l$$in == null
              ? null
              : Object.hashAll(l$$in.map((v) => v))
          : const {},
      _$data.containsKey('notIn')
          ? l$notIn == null
              ? null
              : Object.hashAll(l$notIn.map((v) => v))
          : const {},
    ]);
  }
}

abstract class CopyWith$Input$IDFilterComparison<TRes> {
  factory CopyWith$Input$IDFilterComparison(
    Input$IDFilterComparison instance,
    TRes Function(Input$IDFilterComparison) then,
  ) = _CopyWithImpl$Input$IDFilterComparison;

  factory CopyWith$Input$IDFilterComparison.stub(TRes res) =
      _CopyWithStubImpl$Input$IDFilterComparison;

  TRes call({
    bool? $is,
    bool? isNot,
    String? eq,
    String? neq,
    String? gt,
    String? gte,
    String? lt,
    String? lte,
    String? like,
    String? notLike,
    String? iLike,
    String? notILike,
    List<String>? $in,
    List<String>? notIn,
  });
}

class _CopyWithImpl$Input$IDFilterComparison<TRes>
    implements CopyWith$Input$IDFilterComparison<TRes> {
  _CopyWithImpl$Input$IDFilterComparison(
    this._instance,
    this._then,
  );

  final Input$IDFilterComparison _instance;

  final TRes Function(Input$IDFilterComparison) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? $is = _undefined,
    Object? isNot = _undefined,
    Object? eq = _undefined,
    Object? neq = _undefined,
    Object? gt = _undefined,
    Object? gte = _undefined,
    Object? lt = _undefined,
    Object? lte = _undefined,
    Object? like = _undefined,
    Object? notLike = _undefined,
    Object? iLike = _undefined,
    Object? notILike = _undefined,
    Object? $in = _undefined,
    Object? notIn = _undefined,
  }) =>
      _then(Input$IDFilterComparison._({
        ..._instance._$data,
        if ($is != _undefined) 'is': ($is as bool?),
        if (isNot != _undefined) 'isNot': (isNot as bool?),
        if (eq != _undefined) 'eq': (eq as String?),
        if (neq != _undefined) 'neq': (neq as String?),
        if (gt != _undefined) 'gt': (gt as String?),
        if (gte != _undefined) 'gte': (gte as String?),
        if (lt != _undefined) 'lt': (lt as String?),
        if (lte != _undefined) 'lte': (lte as String?),
        if (like != _undefined) 'like': (like as String?),
        if (notLike != _undefined) 'notLike': (notLike as String?),
        if (iLike != _undefined) 'iLike': (iLike as String?),
        if (notILike != _undefined) 'notILike': (notILike as String?),
        if ($in != _undefined) 'in': ($in as List<String>?),
        if (notIn != _undefined) 'notIn': (notIn as List<String>?),
      }));
}

class _CopyWithStubImpl$Input$IDFilterComparison<TRes>
    implements CopyWith$Input$IDFilterComparison<TRes> {
  _CopyWithStubImpl$Input$IDFilterComparison(this._res);

  TRes _res;

  call({
    bool? $is,
    bool? isNot,
    String? eq,
    String? neq,
    String? gt,
    String? gte,
    String? lt,
    String? lte,
    String? like,
    String? notLike,
    String? iLike,
    String? notILike,
    List<String>? $in,
    List<String>? notIn,
  }) =>
      _res;
}

class Input$RiderWalletSort {
  factory Input$RiderWalletSort({
    required Enum$RiderWalletSortFields field,
    required Enum$SortDirection direction,
    Enum$SortNulls? nulls,
  }) =>
      Input$RiderWalletSort._({
        r'field': field,
        r'direction': direction,
        if (nulls != null) r'nulls': nulls,
      });

  Input$RiderWalletSort._(this._$data);

  factory Input$RiderWalletSort.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$field = data['field'];
    result$data['field'] =
        fromJson$Enum$RiderWalletSortFields((l$field as String));
    final l$direction = data['direction'];
    result$data['direction'] =
        fromJson$Enum$SortDirection((l$direction as String));
    if (data.containsKey('nulls')) {
      final l$nulls = data['nulls'];
      result$data['nulls'] =
          l$nulls == null ? null : fromJson$Enum$SortNulls((l$nulls as String));
    }
    return Input$RiderWalletSort._(result$data);
  }

  Map<String, dynamic> _$data;

  Enum$RiderWalletSortFields get field =>
      (_$data['field'] as Enum$RiderWalletSortFields);
  Enum$SortDirection get direction =>
      (_$data['direction'] as Enum$SortDirection);
  Enum$SortNulls? get nulls => (_$data['nulls'] as Enum$SortNulls?);
  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$field = field;
    result$data['field'] = toJson$Enum$RiderWalletSortFields(l$field);
    final l$direction = direction;
    result$data['direction'] = toJson$Enum$SortDirection(l$direction);
    if (_$data.containsKey('nulls')) {
      final l$nulls = nulls;
      result$data['nulls'] =
          l$nulls == null ? null : toJson$Enum$SortNulls(l$nulls);
    }
    return result$data;
  }

  CopyWith$Input$RiderWalletSort<Input$RiderWalletSort> get copyWith =>
      CopyWith$Input$RiderWalletSort(
        this,
        (i) => i,
      );
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Input$RiderWalletSort) || runtimeType != other.runtimeType) {
      return false;
    }
    final l$field = field;
    final lOther$field = other.field;
    if (l$field != lOther$field) {
      return false;
    }
    final l$direction = direction;
    final lOther$direction = other.direction;
    if (l$direction != lOther$direction) {
      return false;
    }
    final l$nulls = nulls;
    final lOther$nulls = other.nulls;
    if (_$data.containsKey('nulls') != other._$data.containsKey('nulls')) {
      return false;
    }
    if (l$nulls != lOther$nulls) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$field = field;
    final l$direction = direction;
    final l$nulls = nulls;
    return Object.hashAll([
      l$field,
      l$direction,
      _$data.containsKey('nulls') ? l$nulls : const {},
    ]);
  }
}

abstract class CopyWith$Input$RiderWalletSort<TRes> {
  factory CopyWith$Input$RiderWalletSort(
    Input$RiderWalletSort instance,
    TRes Function(Input$RiderWalletSort) then,
  ) = _CopyWithImpl$Input$RiderWalletSort;

  factory CopyWith$Input$RiderWalletSort.stub(TRes res) =
      _CopyWithStubImpl$Input$RiderWalletSort;

  TRes call({
    Enum$RiderWalletSortFields? field,
    Enum$SortDirection? direction,
    Enum$SortNulls? nulls,
  });
}

class _CopyWithImpl$Input$RiderWalletSort<TRes>
    implements CopyWith$Input$RiderWalletSort<TRes> {
  _CopyWithImpl$Input$RiderWalletSort(
    this._instance,
    this._then,
  );

  final Input$RiderWalletSort _instance;

  final TRes Function(Input$RiderWalletSort) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? field = _undefined,
    Object? direction = _undefined,
    Object? nulls = _undefined,
  }) =>
      _then(Input$RiderWalletSort._({
        ..._instance._$data,
        if (field != _undefined && field != null)
          'field': (field as Enum$RiderWalletSortFields),
        if (direction != _undefined && direction != null)
          'direction': (direction as Enum$SortDirection),
        if (nulls != _undefined) 'nulls': (nulls as Enum$SortNulls?),
      }));
}

class _CopyWithStubImpl$Input$RiderWalletSort<TRes>
    implements CopyWith$Input$RiderWalletSort<TRes> {
  _CopyWithStubImpl$Input$RiderWalletSort(this._res);

  TRes _res;

  call({
    Enum$RiderWalletSortFields? field,
    Enum$SortDirection? direction,
    Enum$SortNulls? nulls,
  }) =>
      _res;
}

class Input$ServiceOptionAggregateFilter {
  factory Input$ServiceOptionAggregateFilter({
    List<Input$ServiceOptionAggregateFilter>? and,
    List<Input$ServiceOptionAggregateFilter>? or,
    Input$IDFilterComparison? id,
  }) =>
      Input$ServiceOptionAggregateFilter._({
        if (and != null) r'and': and,
        if (or != null) r'or': or,
        if (id != null) r'id': id,
      });

  Input$ServiceOptionAggregateFilter._(this._$data);

  factory Input$ServiceOptionAggregateFilter.fromJson(
      Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('and')) {
      final l$and = data['and'];
      result$data['and'] = (l$and as List<dynamic>?)
          ?.map((e) => Input$ServiceOptionAggregateFilter.fromJson(
              (e as Map<String, dynamic>)))
          .toList();
    }
    if (data.containsKey('or')) {
      final l$or = data['or'];
      result$data['or'] = (l$or as List<dynamic>?)
          ?.map((e) => Input$ServiceOptionAggregateFilter.fromJson(
              (e as Map<String, dynamic>)))
          .toList();
    }
    if (data.containsKey('id')) {
      final l$id = data['id'];
      result$data['id'] = l$id == null
          ? null
          : Input$IDFilterComparison.fromJson((l$id as Map<String, dynamic>));
    }
    return Input$ServiceOptionAggregateFilter._(result$data);
  }

  Map<String, dynamic> _$data;

  List<Input$ServiceOptionAggregateFilter>? get and =>
      (_$data['and'] as List<Input$ServiceOptionAggregateFilter>?);
  List<Input$ServiceOptionAggregateFilter>? get or =>
      (_$data['or'] as List<Input$ServiceOptionAggregateFilter>?);
  Input$IDFilterComparison? get id =>
      (_$data['id'] as Input$IDFilterComparison?);
  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('and')) {
      final l$and = and;
      result$data['and'] = l$and?.map((e) => e.toJson()).toList();
    }
    if (_$data.containsKey('or')) {
      final l$or = or;
      result$data['or'] = l$or?.map((e) => e.toJson()).toList();
    }
    if (_$data.containsKey('id')) {
      final l$id = id;
      result$data['id'] = l$id?.toJson();
    }
    return result$data;
  }

  CopyWith$Input$ServiceOptionAggregateFilter<
          Input$ServiceOptionAggregateFilter>
      get copyWith => CopyWith$Input$ServiceOptionAggregateFilter(
            this,
            (i) => i,
          );
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Input$ServiceOptionAggregateFilter) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$and = and;
    final lOther$and = other.and;
    if (_$data.containsKey('and') != other._$data.containsKey('and')) {
      return false;
    }
    if (l$and != null && lOther$and != null) {
      if (l$and.length != lOther$and.length) {
        return false;
      }
      for (int i = 0; i < l$and.length; i++) {
        final l$and$entry = l$and[i];
        final lOther$and$entry = lOther$and[i];
        if (l$and$entry != lOther$and$entry) {
          return false;
        }
      }
    } else if (l$and != lOther$and) {
      return false;
    }
    final l$or = or;
    final lOther$or = other.or;
    if (_$data.containsKey('or') != other._$data.containsKey('or')) {
      return false;
    }
    if (l$or != null && lOther$or != null) {
      if (l$or.length != lOther$or.length) {
        return false;
      }
      for (int i = 0; i < l$or.length; i++) {
        final l$or$entry = l$or[i];
        final lOther$or$entry = lOther$or[i];
        if (l$or$entry != lOther$or$entry) {
          return false;
        }
      }
    } else if (l$or != lOther$or) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (_$data.containsKey('id') != other._$data.containsKey('id')) {
      return false;
    }
    if (l$id != lOther$id) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$and = and;
    final l$or = or;
    final l$id = id;
    return Object.hashAll([
      _$data.containsKey('and')
          ? l$and == null
              ? null
              : Object.hashAll(l$and.map((v) => v))
          : const {},
      _$data.containsKey('or')
          ? l$or == null
              ? null
              : Object.hashAll(l$or.map((v) => v))
          : const {},
      _$data.containsKey('id') ? l$id : const {},
    ]);
  }
}

abstract class CopyWith$Input$ServiceOptionAggregateFilter<TRes> {
  factory CopyWith$Input$ServiceOptionAggregateFilter(
    Input$ServiceOptionAggregateFilter instance,
    TRes Function(Input$ServiceOptionAggregateFilter) then,
  ) = _CopyWithImpl$Input$ServiceOptionAggregateFilter;

  factory CopyWith$Input$ServiceOptionAggregateFilter.stub(TRes res) =
      _CopyWithStubImpl$Input$ServiceOptionAggregateFilter;

  TRes call({
    List<Input$ServiceOptionAggregateFilter>? and,
    List<Input$ServiceOptionAggregateFilter>? or,
    Input$IDFilterComparison? id,
  });
  TRes and(
      Iterable<Input$ServiceOptionAggregateFilter>? Function(
              Iterable<
                  CopyWith$Input$ServiceOptionAggregateFilter<
                      Input$ServiceOptionAggregateFilter>>?)
          _fn);
  TRes or(
      Iterable<Input$ServiceOptionAggregateFilter>? Function(
              Iterable<
                  CopyWith$Input$ServiceOptionAggregateFilter<
                      Input$ServiceOptionAggregateFilter>>?)
          _fn);
  CopyWith$Input$IDFilterComparison<TRes> get id;
}

class _CopyWithImpl$Input$ServiceOptionAggregateFilter<TRes>
    implements CopyWith$Input$ServiceOptionAggregateFilter<TRes> {
  _CopyWithImpl$Input$ServiceOptionAggregateFilter(
    this._instance,
    this._then,
  );

  final Input$ServiceOptionAggregateFilter _instance;

  final TRes Function(Input$ServiceOptionAggregateFilter) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? and = _undefined,
    Object? or = _undefined,
    Object? id = _undefined,
  }) =>
      _then(Input$ServiceOptionAggregateFilter._({
        ..._instance._$data,
        if (and != _undefined)
          'and': (and as List<Input$ServiceOptionAggregateFilter>?),
        if (or != _undefined)
          'or': (or as List<Input$ServiceOptionAggregateFilter>?),
        if (id != _undefined) 'id': (id as Input$IDFilterComparison?),
      }));
  TRes and(
          Iterable<Input$ServiceOptionAggregateFilter>? Function(
                  Iterable<
                      CopyWith$Input$ServiceOptionAggregateFilter<
                          Input$ServiceOptionAggregateFilter>>?)
              _fn) =>
      call(
          and: _fn(_instance.and
              ?.map((e) => CopyWith$Input$ServiceOptionAggregateFilter(
                    e,
                    (i) => i,
                  )))?.toList());
  TRes or(
          Iterable<Input$ServiceOptionAggregateFilter>? Function(
                  Iterable<
                      CopyWith$Input$ServiceOptionAggregateFilter<
                          Input$ServiceOptionAggregateFilter>>?)
              _fn) =>
      call(
          or: _fn(_instance.or
              ?.map((e) => CopyWith$Input$ServiceOptionAggregateFilter(
                    e,
                    (i) => i,
                  )))?.toList());
  CopyWith$Input$IDFilterComparison<TRes> get id {
    final local$id = _instance.id;
    return local$id == null
        ? CopyWith$Input$IDFilterComparison.stub(_then(_instance))
        : CopyWith$Input$IDFilterComparison(local$id, (e) => call(id: e));
  }
}

class _CopyWithStubImpl$Input$ServiceOptionAggregateFilter<TRes>
    implements CopyWith$Input$ServiceOptionAggregateFilter<TRes> {
  _CopyWithStubImpl$Input$ServiceOptionAggregateFilter(this._res);

  TRes _res;

  call({
    List<Input$ServiceOptionAggregateFilter>? and,
    List<Input$ServiceOptionAggregateFilter>? or,
    Input$IDFilterComparison? id,
  }) =>
      _res;
  and(_fn) => _res;
  or(_fn) => _res;
  CopyWith$Input$IDFilterComparison<TRes> get id =>
      CopyWith$Input$IDFilterComparison.stub(_res);
}

class Input$OrderMessageAggregateFilter {
  factory Input$OrderMessageAggregateFilter({
    List<Input$OrderMessageAggregateFilter>? and,
    List<Input$OrderMessageAggregateFilter>? or,
    Input$IDFilterComparison? id,
    Input$IDFilterComparison? requestId,
  }) =>
      Input$OrderMessageAggregateFilter._({
        if (and != null) r'and': and,
        if (or != null) r'or': or,
        if (id != null) r'id': id,
        if (requestId != null) r'requestId': requestId,
      });

  Input$OrderMessageAggregateFilter._(this._$data);

  factory Input$OrderMessageAggregateFilter.fromJson(
      Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('and')) {
      final l$and = data['and'];
      result$data['and'] = (l$and as List<dynamic>?)
          ?.map((e) => Input$OrderMessageAggregateFilter.fromJson(
              (e as Map<String, dynamic>)))
          .toList();
    }
    if (data.containsKey('or')) {
      final l$or = data['or'];
      result$data['or'] = (l$or as List<dynamic>?)
          ?.map((e) => Input$OrderMessageAggregateFilter.fromJson(
              (e as Map<String, dynamic>)))
          .toList();
    }
    if (data.containsKey('id')) {
      final l$id = data['id'];
      result$data['id'] = l$id == null
          ? null
          : Input$IDFilterComparison.fromJson((l$id as Map<String, dynamic>));
    }
    if (data.containsKey('requestId')) {
      final l$requestId = data['requestId'];
      result$data['requestId'] = l$requestId == null
          ? null
          : Input$IDFilterComparison.fromJson(
              (l$requestId as Map<String, dynamic>));
    }
    return Input$OrderMessageAggregateFilter._(result$data);
  }

  Map<String, dynamic> _$data;

  List<Input$OrderMessageAggregateFilter>? get and =>
      (_$data['and'] as List<Input$OrderMessageAggregateFilter>?);
  List<Input$OrderMessageAggregateFilter>? get or =>
      (_$data['or'] as List<Input$OrderMessageAggregateFilter>?);
  Input$IDFilterComparison? get id =>
      (_$data['id'] as Input$IDFilterComparison?);
  Input$IDFilterComparison? get requestId =>
      (_$data['requestId'] as Input$IDFilterComparison?);
  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('and')) {
      final l$and = and;
      result$data['and'] = l$and?.map((e) => e.toJson()).toList();
    }
    if (_$data.containsKey('or')) {
      final l$or = or;
      result$data['or'] = l$or?.map((e) => e.toJson()).toList();
    }
    if (_$data.containsKey('id')) {
      final l$id = id;
      result$data['id'] = l$id?.toJson();
    }
    if (_$data.containsKey('requestId')) {
      final l$requestId = requestId;
      result$data['requestId'] = l$requestId?.toJson();
    }
    return result$data;
  }

  CopyWith$Input$OrderMessageAggregateFilter<Input$OrderMessageAggregateFilter>
      get copyWith => CopyWith$Input$OrderMessageAggregateFilter(
            this,
            (i) => i,
          );
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Input$OrderMessageAggregateFilter) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$and = and;
    final lOther$and = other.and;
    if (_$data.containsKey('and') != other._$data.containsKey('and')) {
      return false;
    }
    if (l$and != null && lOther$and != null) {
      if (l$and.length != lOther$and.length) {
        return false;
      }
      for (int i = 0; i < l$and.length; i++) {
        final l$and$entry = l$and[i];
        final lOther$and$entry = lOther$and[i];
        if (l$and$entry != lOther$and$entry) {
          return false;
        }
      }
    } else if (l$and != lOther$and) {
      return false;
    }
    final l$or = or;
    final lOther$or = other.or;
    if (_$data.containsKey('or') != other._$data.containsKey('or')) {
      return false;
    }
    if (l$or != null && lOther$or != null) {
      if (l$or.length != lOther$or.length) {
        return false;
      }
      for (int i = 0; i < l$or.length; i++) {
        final l$or$entry = l$or[i];
        final lOther$or$entry = lOther$or[i];
        if (l$or$entry != lOther$or$entry) {
          return false;
        }
      }
    } else if (l$or != lOther$or) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (_$data.containsKey('id') != other._$data.containsKey('id')) {
      return false;
    }
    if (l$id != lOther$id) {
      return false;
    }
    final l$requestId = requestId;
    final lOther$requestId = other.requestId;
    if (_$data.containsKey('requestId') !=
        other._$data.containsKey('requestId')) {
      return false;
    }
    if (l$requestId != lOther$requestId) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$and = and;
    final l$or = or;
    final l$id = id;
    final l$requestId = requestId;
    return Object.hashAll([
      _$data.containsKey('and')
          ? l$and == null
              ? null
              : Object.hashAll(l$and.map((v) => v))
          : const {},
      _$data.containsKey('or')
          ? l$or == null
              ? null
              : Object.hashAll(l$or.map((v) => v))
          : const {},
      _$data.containsKey('id') ? l$id : const {},
      _$data.containsKey('requestId') ? l$requestId : const {},
    ]);
  }
}

abstract class CopyWith$Input$OrderMessageAggregateFilter<TRes> {
  factory CopyWith$Input$OrderMessageAggregateFilter(
    Input$OrderMessageAggregateFilter instance,
    TRes Function(Input$OrderMessageAggregateFilter) then,
  ) = _CopyWithImpl$Input$OrderMessageAggregateFilter;

  factory CopyWith$Input$OrderMessageAggregateFilter.stub(TRes res) =
      _CopyWithStubImpl$Input$OrderMessageAggregateFilter;

  TRes call({
    List<Input$OrderMessageAggregateFilter>? and,
    List<Input$OrderMessageAggregateFilter>? or,
    Input$IDFilterComparison? id,
    Input$IDFilterComparison? requestId,
  });
  TRes and(
      Iterable<Input$OrderMessageAggregateFilter>? Function(
              Iterable<
                  CopyWith$Input$OrderMessageAggregateFilter<
                      Input$OrderMessageAggregateFilter>>?)
          _fn);
  TRes or(
      Iterable<Input$OrderMessageAggregateFilter>? Function(
              Iterable<
                  CopyWith$Input$OrderMessageAggregateFilter<
                      Input$OrderMessageAggregateFilter>>?)
          _fn);
  CopyWith$Input$IDFilterComparison<TRes> get id;
  CopyWith$Input$IDFilterComparison<TRes> get requestId;
}

class _CopyWithImpl$Input$OrderMessageAggregateFilter<TRes>
    implements CopyWith$Input$OrderMessageAggregateFilter<TRes> {
  _CopyWithImpl$Input$OrderMessageAggregateFilter(
    this._instance,
    this._then,
  );

  final Input$OrderMessageAggregateFilter _instance;

  final TRes Function(Input$OrderMessageAggregateFilter) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? and = _undefined,
    Object? or = _undefined,
    Object? id = _undefined,
    Object? requestId = _undefined,
  }) =>
      _then(Input$OrderMessageAggregateFilter._({
        ..._instance._$data,
        if (and != _undefined)
          'and': (and as List<Input$OrderMessageAggregateFilter>?),
        if (or != _undefined)
          'or': (or as List<Input$OrderMessageAggregateFilter>?),
        if (id != _undefined) 'id': (id as Input$IDFilterComparison?),
        if (requestId != _undefined)
          'requestId': (requestId as Input$IDFilterComparison?),
      }));
  TRes and(
          Iterable<Input$OrderMessageAggregateFilter>? Function(
                  Iterable<
                      CopyWith$Input$OrderMessageAggregateFilter<
                          Input$OrderMessageAggregateFilter>>?)
              _fn) =>
      call(
          and: _fn(_instance.and
              ?.map((e) => CopyWith$Input$OrderMessageAggregateFilter(
                    e,
                    (i) => i,
                  )))?.toList());
  TRes or(
          Iterable<Input$OrderMessageAggregateFilter>? Function(
                  Iterable<
                      CopyWith$Input$OrderMessageAggregateFilter<
                          Input$OrderMessageAggregateFilter>>?)
              _fn) =>
      call(
          or: _fn(_instance.or
              ?.map((e) => CopyWith$Input$OrderMessageAggregateFilter(
                    e,
                    (i) => i,
                  )))?.toList());
  CopyWith$Input$IDFilterComparison<TRes> get id {
    final local$id = _instance.id;
    return local$id == null
        ? CopyWith$Input$IDFilterComparison.stub(_then(_instance))
        : CopyWith$Input$IDFilterComparison(local$id, (e) => call(id: e));
  }

  CopyWith$Input$IDFilterComparison<TRes> get requestId {
    final local$requestId = _instance.requestId;
    return local$requestId == null
        ? CopyWith$Input$IDFilterComparison.stub(_then(_instance))
        : CopyWith$Input$IDFilterComparison(
            local$requestId, (e) => call(requestId: e));
  }
}

class _CopyWithStubImpl$Input$OrderMessageAggregateFilter<TRes>
    implements CopyWith$Input$OrderMessageAggregateFilter<TRes> {
  _CopyWithStubImpl$Input$OrderMessageAggregateFilter(this._res);

  TRes _res;

  call({
    List<Input$OrderMessageAggregateFilter>? and,
    List<Input$OrderMessageAggregateFilter>? or,
    Input$IDFilterComparison? id,
    Input$IDFilterComparison? requestId,
  }) =>
      _res;
  and(_fn) => _res;
  or(_fn) => _res;
  CopyWith$Input$IDFilterComparison<TRes> get id =>
      CopyWith$Input$IDFilterComparison.stub(_res);
  CopyWith$Input$IDFilterComparison<TRes> get requestId =>
      CopyWith$Input$IDFilterComparison.stub(_res);
}

class Input$ServiceOptionFilter {
  factory Input$ServiceOptionFilter({
    List<Input$ServiceOptionFilter>? and,
    List<Input$ServiceOptionFilter>? or,
    Input$IDFilterComparison? id,
  }) =>
      Input$ServiceOptionFilter._({
        if (and != null) r'and': and,
        if (or != null) r'or': or,
        if (id != null) r'id': id,
      });

  Input$ServiceOptionFilter._(this._$data);

  factory Input$ServiceOptionFilter.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('and')) {
      final l$and = data['and'];
      result$data['and'] = (l$and as List<dynamic>?)
          ?.map((e) =>
              Input$ServiceOptionFilter.fromJson((e as Map<String, dynamic>)))
          .toList();
    }
    if (data.containsKey('or')) {
      final l$or = data['or'];
      result$data['or'] = (l$or as List<dynamic>?)
          ?.map((e) =>
              Input$ServiceOptionFilter.fromJson((e as Map<String, dynamic>)))
          .toList();
    }
    if (data.containsKey('id')) {
      final l$id = data['id'];
      result$data['id'] = l$id == null
          ? null
          : Input$IDFilterComparison.fromJson((l$id as Map<String, dynamic>));
    }
    return Input$ServiceOptionFilter._(result$data);
  }

  Map<String, dynamic> _$data;

  List<Input$ServiceOptionFilter>? get and =>
      (_$data['and'] as List<Input$ServiceOptionFilter>?);
  List<Input$ServiceOptionFilter>? get or =>
      (_$data['or'] as List<Input$ServiceOptionFilter>?);
  Input$IDFilterComparison? get id =>
      (_$data['id'] as Input$IDFilterComparison?);
  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('and')) {
      final l$and = and;
      result$data['and'] = l$and?.map((e) => e.toJson()).toList();
    }
    if (_$data.containsKey('or')) {
      final l$or = or;
      result$data['or'] = l$or?.map((e) => e.toJson()).toList();
    }
    if (_$data.containsKey('id')) {
      final l$id = id;
      result$data['id'] = l$id?.toJson();
    }
    return result$data;
  }

  CopyWith$Input$ServiceOptionFilter<Input$ServiceOptionFilter> get copyWith =>
      CopyWith$Input$ServiceOptionFilter(
        this,
        (i) => i,
      );
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Input$ServiceOptionFilter) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$and = and;
    final lOther$and = other.and;
    if (_$data.containsKey('and') != other._$data.containsKey('and')) {
      return false;
    }
    if (l$and != null && lOther$and != null) {
      if (l$and.length != lOther$and.length) {
        return false;
      }
      for (int i = 0; i < l$and.length; i++) {
        final l$and$entry = l$and[i];
        final lOther$and$entry = lOther$and[i];
        if (l$and$entry != lOther$and$entry) {
          return false;
        }
      }
    } else if (l$and != lOther$and) {
      return false;
    }
    final l$or = or;
    final lOther$or = other.or;
    if (_$data.containsKey('or') != other._$data.containsKey('or')) {
      return false;
    }
    if (l$or != null && lOther$or != null) {
      if (l$or.length != lOther$or.length) {
        return false;
      }
      for (int i = 0; i < l$or.length; i++) {
        final l$or$entry = l$or[i];
        final lOther$or$entry = lOther$or[i];
        if (l$or$entry != lOther$or$entry) {
          return false;
        }
      }
    } else if (l$or != lOther$or) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (_$data.containsKey('id') != other._$data.containsKey('id')) {
      return false;
    }
    if (l$id != lOther$id) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$and = and;
    final l$or = or;
    final l$id = id;
    return Object.hashAll([
      _$data.containsKey('and')
          ? l$and == null
              ? null
              : Object.hashAll(l$and.map((v) => v))
          : const {},
      _$data.containsKey('or')
          ? l$or == null
              ? null
              : Object.hashAll(l$or.map((v) => v))
          : const {},
      _$data.containsKey('id') ? l$id : const {},
    ]);
  }
}

abstract class CopyWith$Input$ServiceOptionFilter<TRes> {
  factory CopyWith$Input$ServiceOptionFilter(
    Input$ServiceOptionFilter instance,
    TRes Function(Input$ServiceOptionFilter) then,
  ) = _CopyWithImpl$Input$ServiceOptionFilter;

  factory CopyWith$Input$ServiceOptionFilter.stub(TRes res) =
      _CopyWithStubImpl$Input$ServiceOptionFilter;

  TRes call({
    List<Input$ServiceOptionFilter>? and,
    List<Input$ServiceOptionFilter>? or,
    Input$IDFilterComparison? id,
  });
  TRes and(
      Iterable<Input$ServiceOptionFilter>? Function(
              Iterable<
                  CopyWith$Input$ServiceOptionFilter<
                      Input$ServiceOptionFilter>>?)
          _fn);
  TRes or(
      Iterable<Input$ServiceOptionFilter>? Function(
              Iterable<
                  CopyWith$Input$ServiceOptionFilter<
                      Input$ServiceOptionFilter>>?)
          _fn);
  CopyWith$Input$IDFilterComparison<TRes> get id;
}

class _CopyWithImpl$Input$ServiceOptionFilter<TRes>
    implements CopyWith$Input$ServiceOptionFilter<TRes> {
  _CopyWithImpl$Input$ServiceOptionFilter(
    this._instance,
    this._then,
  );

  final Input$ServiceOptionFilter _instance;

  final TRes Function(Input$ServiceOptionFilter) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? and = _undefined,
    Object? or = _undefined,
    Object? id = _undefined,
  }) =>
      _then(Input$ServiceOptionFilter._({
        ..._instance._$data,
        if (and != _undefined) 'and': (and as List<Input$ServiceOptionFilter>?),
        if (or != _undefined) 'or': (or as List<Input$ServiceOptionFilter>?),
        if (id != _undefined) 'id': (id as Input$IDFilterComparison?),
      }));
  TRes and(
          Iterable<Input$ServiceOptionFilter>? Function(
                  Iterable<
                      CopyWith$Input$ServiceOptionFilter<
                          Input$ServiceOptionFilter>>?)
              _fn) =>
      call(
          and: _fn(_instance.and?.map((e) => CopyWith$Input$ServiceOptionFilter(
                e,
                (i) => i,
              )))?.toList());
  TRes or(
          Iterable<Input$ServiceOptionFilter>? Function(
                  Iterable<
                      CopyWith$Input$ServiceOptionFilter<
                          Input$ServiceOptionFilter>>?)
              _fn) =>
      call(
          or: _fn(_instance.or?.map((e) => CopyWith$Input$ServiceOptionFilter(
                e,
                (i) => i,
              )))?.toList());
  CopyWith$Input$IDFilterComparison<TRes> get id {
    final local$id = _instance.id;
    return local$id == null
        ? CopyWith$Input$IDFilterComparison.stub(_then(_instance))
        : CopyWith$Input$IDFilterComparison(local$id, (e) => call(id: e));
  }
}

class _CopyWithStubImpl$Input$ServiceOptionFilter<TRes>
    implements CopyWith$Input$ServiceOptionFilter<TRes> {
  _CopyWithStubImpl$Input$ServiceOptionFilter(this._res);

  TRes _res;

  call({
    List<Input$ServiceOptionFilter>? and,
    List<Input$ServiceOptionFilter>? or,
    Input$IDFilterComparison? id,
  }) =>
      _res;
  and(_fn) => _res;
  or(_fn) => _res;
  CopyWith$Input$IDFilterComparison<TRes> get id =>
      CopyWith$Input$IDFilterComparison.stub(_res);
}

class Input$ServiceOptionSort {
  factory Input$ServiceOptionSort({
    required Enum$ServiceOptionSortFields field,
    required Enum$SortDirection direction,
    Enum$SortNulls? nulls,
  }) =>
      Input$ServiceOptionSort._({
        r'field': field,
        r'direction': direction,
        if (nulls != null) r'nulls': nulls,
      });

  Input$ServiceOptionSort._(this._$data);

  factory Input$ServiceOptionSort.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$field = data['field'];
    result$data['field'] =
        fromJson$Enum$ServiceOptionSortFields((l$field as String));
    final l$direction = data['direction'];
    result$data['direction'] =
        fromJson$Enum$SortDirection((l$direction as String));
    if (data.containsKey('nulls')) {
      final l$nulls = data['nulls'];
      result$data['nulls'] =
          l$nulls == null ? null : fromJson$Enum$SortNulls((l$nulls as String));
    }
    return Input$ServiceOptionSort._(result$data);
  }

  Map<String, dynamic> _$data;

  Enum$ServiceOptionSortFields get field =>
      (_$data['field'] as Enum$ServiceOptionSortFields);
  Enum$SortDirection get direction =>
      (_$data['direction'] as Enum$SortDirection);
  Enum$SortNulls? get nulls => (_$data['nulls'] as Enum$SortNulls?);
  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$field = field;
    result$data['field'] = toJson$Enum$ServiceOptionSortFields(l$field);
    final l$direction = direction;
    result$data['direction'] = toJson$Enum$SortDirection(l$direction);
    if (_$data.containsKey('nulls')) {
      final l$nulls = nulls;
      result$data['nulls'] =
          l$nulls == null ? null : toJson$Enum$SortNulls(l$nulls);
    }
    return result$data;
  }

  CopyWith$Input$ServiceOptionSort<Input$ServiceOptionSort> get copyWith =>
      CopyWith$Input$ServiceOptionSort(
        this,
        (i) => i,
      );
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Input$ServiceOptionSort) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$field = field;
    final lOther$field = other.field;
    if (l$field != lOther$field) {
      return false;
    }
    final l$direction = direction;
    final lOther$direction = other.direction;
    if (l$direction != lOther$direction) {
      return false;
    }
    final l$nulls = nulls;
    final lOther$nulls = other.nulls;
    if (_$data.containsKey('nulls') != other._$data.containsKey('nulls')) {
      return false;
    }
    if (l$nulls != lOther$nulls) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$field = field;
    final l$direction = direction;
    final l$nulls = nulls;
    return Object.hashAll([
      l$field,
      l$direction,
      _$data.containsKey('nulls') ? l$nulls : const {},
    ]);
  }
}

abstract class CopyWith$Input$ServiceOptionSort<TRes> {
  factory CopyWith$Input$ServiceOptionSort(
    Input$ServiceOptionSort instance,
    TRes Function(Input$ServiceOptionSort) then,
  ) = _CopyWithImpl$Input$ServiceOptionSort;

  factory CopyWith$Input$ServiceOptionSort.stub(TRes res) =
      _CopyWithStubImpl$Input$ServiceOptionSort;

  TRes call({
    Enum$ServiceOptionSortFields? field,
    Enum$SortDirection? direction,
    Enum$SortNulls? nulls,
  });
}

class _CopyWithImpl$Input$ServiceOptionSort<TRes>
    implements CopyWith$Input$ServiceOptionSort<TRes> {
  _CopyWithImpl$Input$ServiceOptionSort(
    this._instance,
    this._then,
  );

  final Input$ServiceOptionSort _instance;

  final TRes Function(Input$ServiceOptionSort) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? field = _undefined,
    Object? direction = _undefined,
    Object? nulls = _undefined,
  }) =>
      _then(Input$ServiceOptionSort._({
        ..._instance._$data,
        if (field != _undefined && field != null)
          'field': (field as Enum$ServiceOptionSortFields),
        if (direction != _undefined && direction != null)
          'direction': (direction as Enum$SortDirection),
        if (nulls != _undefined) 'nulls': (nulls as Enum$SortNulls?),
      }));
}

class _CopyWithStubImpl$Input$ServiceOptionSort<TRes>
    implements CopyWith$Input$ServiceOptionSort<TRes> {
  _CopyWithStubImpl$Input$ServiceOptionSort(this._res);

  TRes _res;

  call({
    Enum$ServiceOptionSortFields? field,
    Enum$SortDirection? direction,
    Enum$SortNulls? nulls,
  }) =>
      _res;
}

class Input$OrderMessageFilter {
  factory Input$OrderMessageFilter({
    List<Input$OrderMessageFilter>? and,
    List<Input$OrderMessageFilter>? or,
    Input$IDFilterComparison? id,
    Input$IDFilterComparison? requestId,
  }) =>
      Input$OrderMessageFilter._({
        if (and != null) r'and': and,
        if (or != null) r'or': or,
        if (id != null) r'id': id,
        if (requestId != null) r'requestId': requestId,
      });

  Input$OrderMessageFilter._(this._$data);

  factory Input$OrderMessageFilter.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('and')) {
      final l$and = data['and'];
      result$data['and'] = (l$and as List<dynamic>?)
          ?.map((e) =>
              Input$OrderMessageFilter.fromJson((e as Map<String, dynamic>)))
          .toList();
    }
    if (data.containsKey('or')) {
      final l$or = data['or'];
      result$data['or'] = (l$or as List<dynamic>?)
          ?.map((e) =>
              Input$OrderMessageFilter.fromJson((e as Map<String, dynamic>)))
          .toList();
    }
    if (data.containsKey('id')) {
      final l$id = data['id'];
      result$data['id'] = l$id == null
          ? null
          : Input$IDFilterComparison.fromJson((l$id as Map<String, dynamic>));
    }
    if (data.containsKey('requestId')) {
      final l$requestId = data['requestId'];
      result$data['requestId'] = l$requestId == null
          ? null
          : Input$IDFilterComparison.fromJson(
              (l$requestId as Map<String, dynamic>));
    }
    return Input$OrderMessageFilter._(result$data);
  }

  Map<String, dynamic> _$data;

  List<Input$OrderMessageFilter>? get and =>
      (_$data['and'] as List<Input$OrderMessageFilter>?);
  List<Input$OrderMessageFilter>? get or =>
      (_$data['or'] as List<Input$OrderMessageFilter>?);
  Input$IDFilterComparison? get id =>
      (_$data['id'] as Input$IDFilterComparison?);
  Input$IDFilterComparison? get requestId =>
      (_$data['requestId'] as Input$IDFilterComparison?);
  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('and')) {
      final l$and = and;
      result$data['and'] = l$and?.map((e) => e.toJson()).toList();
    }
    if (_$data.containsKey('or')) {
      final l$or = or;
      result$data['or'] = l$or?.map((e) => e.toJson()).toList();
    }
    if (_$data.containsKey('id')) {
      final l$id = id;
      result$data['id'] = l$id?.toJson();
    }
    if (_$data.containsKey('requestId')) {
      final l$requestId = requestId;
      result$data['requestId'] = l$requestId?.toJson();
    }
    return result$data;
  }

  CopyWith$Input$OrderMessageFilter<Input$OrderMessageFilter> get copyWith =>
      CopyWith$Input$OrderMessageFilter(
        this,
        (i) => i,
      );
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Input$OrderMessageFilter) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$and = and;
    final lOther$and = other.and;
    if (_$data.containsKey('and') != other._$data.containsKey('and')) {
      return false;
    }
    if (l$and != null && lOther$and != null) {
      if (l$and.length != lOther$and.length) {
        return false;
      }
      for (int i = 0; i < l$and.length; i++) {
        final l$and$entry = l$and[i];
        final lOther$and$entry = lOther$and[i];
        if (l$and$entry != lOther$and$entry) {
          return false;
        }
      }
    } else if (l$and != lOther$and) {
      return false;
    }
    final l$or = or;
    final lOther$or = other.or;
    if (_$data.containsKey('or') != other._$data.containsKey('or')) {
      return false;
    }
    if (l$or != null && lOther$or != null) {
      if (l$or.length != lOther$or.length) {
        return false;
      }
      for (int i = 0; i < l$or.length; i++) {
        final l$or$entry = l$or[i];
        final lOther$or$entry = lOther$or[i];
        if (l$or$entry != lOther$or$entry) {
          return false;
        }
      }
    } else if (l$or != lOther$or) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (_$data.containsKey('id') != other._$data.containsKey('id')) {
      return false;
    }
    if (l$id != lOther$id) {
      return false;
    }
    final l$requestId = requestId;
    final lOther$requestId = other.requestId;
    if (_$data.containsKey('requestId') !=
        other._$data.containsKey('requestId')) {
      return false;
    }
    if (l$requestId != lOther$requestId) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$and = and;
    final l$or = or;
    final l$id = id;
    final l$requestId = requestId;
    return Object.hashAll([
      _$data.containsKey('and')
          ? l$and == null
              ? null
              : Object.hashAll(l$and.map((v) => v))
          : const {},
      _$data.containsKey('or')
          ? l$or == null
              ? null
              : Object.hashAll(l$or.map((v) => v))
          : const {},
      _$data.containsKey('id') ? l$id : const {},
      _$data.containsKey('requestId') ? l$requestId : const {},
    ]);
  }
}

abstract class CopyWith$Input$OrderMessageFilter<TRes> {
  factory CopyWith$Input$OrderMessageFilter(
    Input$OrderMessageFilter instance,
    TRes Function(Input$OrderMessageFilter) then,
  ) = _CopyWithImpl$Input$OrderMessageFilter;

  factory CopyWith$Input$OrderMessageFilter.stub(TRes res) =
      _CopyWithStubImpl$Input$OrderMessageFilter;

  TRes call({
    List<Input$OrderMessageFilter>? and,
    List<Input$OrderMessageFilter>? or,
    Input$IDFilterComparison? id,
    Input$IDFilterComparison? requestId,
  });
  TRes and(
      Iterable<Input$OrderMessageFilter>? Function(
              Iterable<
                  CopyWith$Input$OrderMessageFilter<Input$OrderMessageFilter>>?)
          _fn);
  TRes or(
      Iterable<Input$OrderMessageFilter>? Function(
              Iterable<
                  CopyWith$Input$OrderMessageFilter<Input$OrderMessageFilter>>?)
          _fn);
  CopyWith$Input$IDFilterComparison<TRes> get id;
  CopyWith$Input$IDFilterComparison<TRes> get requestId;
}

class _CopyWithImpl$Input$OrderMessageFilter<TRes>
    implements CopyWith$Input$OrderMessageFilter<TRes> {
  _CopyWithImpl$Input$OrderMessageFilter(
    this._instance,
    this._then,
  );

  final Input$OrderMessageFilter _instance;

  final TRes Function(Input$OrderMessageFilter) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? and = _undefined,
    Object? or = _undefined,
    Object? id = _undefined,
    Object? requestId = _undefined,
  }) =>
      _then(Input$OrderMessageFilter._({
        ..._instance._$data,
        if (and != _undefined) 'and': (and as List<Input$OrderMessageFilter>?),
        if (or != _undefined) 'or': (or as List<Input$OrderMessageFilter>?),
        if (id != _undefined) 'id': (id as Input$IDFilterComparison?),
        if (requestId != _undefined)
          'requestId': (requestId as Input$IDFilterComparison?),
      }));
  TRes and(
          Iterable<Input$OrderMessageFilter>? Function(
                  Iterable<
                      CopyWith$Input$OrderMessageFilter<
                          Input$OrderMessageFilter>>?)
              _fn) =>
      call(
          and: _fn(_instance.and?.map((e) => CopyWith$Input$OrderMessageFilter(
                e,
                (i) => i,
              )))?.toList());
  TRes or(
          Iterable<Input$OrderMessageFilter>? Function(
                  Iterable<
                      CopyWith$Input$OrderMessageFilter<
                          Input$OrderMessageFilter>>?)
              _fn) =>
      call(
          or: _fn(_instance.or?.map((e) => CopyWith$Input$OrderMessageFilter(
                e,
                (i) => i,
              )))?.toList());
  CopyWith$Input$IDFilterComparison<TRes> get id {
    final local$id = _instance.id;
    return local$id == null
        ? CopyWith$Input$IDFilterComparison.stub(_then(_instance))
        : CopyWith$Input$IDFilterComparison(local$id, (e) => call(id: e));
  }

  CopyWith$Input$IDFilterComparison<TRes> get requestId {
    final local$requestId = _instance.requestId;
    return local$requestId == null
        ? CopyWith$Input$IDFilterComparison.stub(_then(_instance))
        : CopyWith$Input$IDFilterComparison(
            local$requestId, (e) => call(requestId: e));
  }
}

class _CopyWithStubImpl$Input$OrderMessageFilter<TRes>
    implements CopyWith$Input$OrderMessageFilter<TRes> {
  _CopyWithStubImpl$Input$OrderMessageFilter(this._res);

  TRes _res;

  call({
    List<Input$OrderMessageFilter>? and,
    List<Input$OrderMessageFilter>? or,
    Input$IDFilterComparison? id,
    Input$IDFilterComparison? requestId,
  }) =>
      _res;
  and(_fn) => _res;
  or(_fn) => _res;
  CopyWith$Input$IDFilterComparison<TRes> get id =>
      CopyWith$Input$IDFilterComparison.stub(_res);
  CopyWith$Input$IDFilterComparison<TRes> get requestId =>
      CopyWith$Input$IDFilterComparison.stub(_res);
}

class Input$OrderMessageSort {
  factory Input$OrderMessageSort({
    required Enum$OrderMessageSortFields field,
    required Enum$SortDirection direction,
    Enum$SortNulls? nulls,
  }) =>
      Input$OrderMessageSort._({
        r'field': field,
        r'direction': direction,
        if (nulls != null) r'nulls': nulls,
      });

  Input$OrderMessageSort._(this._$data);

  factory Input$OrderMessageSort.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$field = data['field'];
    result$data['field'] =
        fromJson$Enum$OrderMessageSortFields((l$field as String));
    final l$direction = data['direction'];
    result$data['direction'] =
        fromJson$Enum$SortDirection((l$direction as String));
    if (data.containsKey('nulls')) {
      final l$nulls = data['nulls'];
      result$data['nulls'] =
          l$nulls == null ? null : fromJson$Enum$SortNulls((l$nulls as String));
    }
    return Input$OrderMessageSort._(result$data);
  }

  Map<String, dynamic> _$data;

  Enum$OrderMessageSortFields get field =>
      (_$data['field'] as Enum$OrderMessageSortFields);
  Enum$SortDirection get direction =>
      (_$data['direction'] as Enum$SortDirection);
  Enum$SortNulls? get nulls => (_$data['nulls'] as Enum$SortNulls?);
  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$field = field;
    result$data['field'] = toJson$Enum$OrderMessageSortFields(l$field);
    final l$direction = direction;
    result$data['direction'] = toJson$Enum$SortDirection(l$direction);
    if (_$data.containsKey('nulls')) {
      final l$nulls = nulls;
      result$data['nulls'] =
          l$nulls == null ? null : toJson$Enum$SortNulls(l$nulls);
    }
    return result$data;
  }

  CopyWith$Input$OrderMessageSort<Input$OrderMessageSort> get copyWith =>
      CopyWith$Input$OrderMessageSort(
        this,
        (i) => i,
      );
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Input$OrderMessageSort) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$field = field;
    final lOther$field = other.field;
    if (l$field != lOther$field) {
      return false;
    }
    final l$direction = direction;
    final lOther$direction = other.direction;
    if (l$direction != lOther$direction) {
      return false;
    }
    final l$nulls = nulls;
    final lOther$nulls = other.nulls;
    if (_$data.containsKey('nulls') != other._$data.containsKey('nulls')) {
      return false;
    }
    if (l$nulls != lOther$nulls) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$field = field;
    final l$direction = direction;
    final l$nulls = nulls;
    return Object.hashAll([
      l$field,
      l$direction,
      _$data.containsKey('nulls') ? l$nulls : const {},
    ]);
  }
}

abstract class CopyWith$Input$OrderMessageSort<TRes> {
  factory CopyWith$Input$OrderMessageSort(
    Input$OrderMessageSort instance,
    TRes Function(Input$OrderMessageSort) then,
  ) = _CopyWithImpl$Input$OrderMessageSort;

  factory CopyWith$Input$OrderMessageSort.stub(TRes res) =
      _CopyWithStubImpl$Input$OrderMessageSort;

  TRes call({
    Enum$OrderMessageSortFields? field,
    Enum$SortDirection? direction,
    Enum$SortNulls? nulls,
  });
}

class _CopyWithImpl$Input$OrderMessageSort<TRes>
    implements CopyWith$Input$OrderMessageSort<TRes> {
  _CopyWithImpl$Input$OrderMessageSort(
    this._instance,
    this._then,
  );

  final Input$OrderMessageSort _instance;

  final TRes Function(Input$OrderMessageSort) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? field = _undefined,
    Object? direction = _undefined,
    Object? nulls = _undefined,
  }) =>
      _then(Input$OrderMessageSort._({
        ..._instance._$data,
        if (field != _undefined && field != null)
          'field': (field as Enum$OrderMessageSortFields),
        if (direction != _undefined && direction != null)
          'direction': (direction as Enum$SortDirection),
        if (nulls != _undefined) 'nulls': (nulls as Enum$SortNulls?),
      }));
}

class _CopyWithStubImpl$Input$OrderMessageSort<TRes>
    implements CopyWith$Input$OrderMessageSort<TRes> {
  _CopyWithStubImpl$Input$OrderMessageSort(this._res);

  TRes _res;

  call({
    Enum$OrderMessageSortFields? field,
    Enum$SortDirection? direction,
    Enum$SortNulls? nulls,
  }) =>
      _res;
}

class Input$OrderAggregateFilter {
  factory Input$OrderAggregateFilter({
    List<Input$OrderAggregateFilter>? and,
    List<Input$OrderAggregateFilter>? or,
    Input$IDFilterComparison? id,
    Input$OrderStatusFilterComparison? status,
    Input$DateFieldComparison? createdOn,
    Input$IntFieldComparison? distanceBest,
    Input$NumberFieldComparison? costBest,
    Input$IDFilterComparison? driverId,
  }) =>
      Input$OrderAggregateFilter._({
        if (and != null) r'and': and,
        if (or != null) r'or': or,
        if (id != null) r'id': id,
        if (status != null) r'status': status,
        if (createdOn != null) r'createdOn': createdOn,
        if (distanceBest != null) r'distanceBest': distanceBest,
        if (costBest != null) r'costBest': costBest,
        if (driverId != null) r'driverId': driverId,
      });

  Input$OrderAggregateFilter._(this._$data);

  factory Input$OrderAggregateFilter.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('and')) {
      final l$and = data['and'];
      result$data['and'] = (l$and as List<dynamic>?)
          ?.map((e) =>
              Input$OrderAggregateFilter.fromJson((e as Map<String, dynamic>)))
          .toList();
    }
    if (data.containsKey('or')) {
      final l$or = data['or'];
      result$data['or'] = (l$or as List<dynamic>?)
          ?.map((e) =>
              Input$OrderAggregateFilter.fromJson((e as Map<String, dynamic>)))
          .toList();
    }
    if (data.containsKey('id')) {
      final l$id = data['id'];
      result$data['id'] = l$id == null
          ? null
          : Input$IDFilterComparison.fromJson((l$id as Map<String, dynamic>));
    }
    if (data.containsKey('status')) {
      final l$status = data['status'];
      result$data['status'] = l$status == null
          ? null
          : Input$OrderStatusFilterComparison.fromJson(
              (l$status as Map<String, dynamic>));
    }
    if (data.containsKey('createdOn')) {
      final l$createdOn = data['createdOn'];
      result$data['createdOn'] = l$createdOn == null
          ? null
          : Input$DateFieldComparison.fromJson(
              (l$createdOn as Map<String, dynamic>));
    }
    if (data.containsKey('distanceBest')) {
      final l$distanceBest = data['distanceBest'];
      result$data['distanceBest'] = l$distanceBest == null
          ? null
          : Input$IntFieldComparison.fromJson(
              (l$distanceBest as Map<String, dynamic>));
    }
    if (data.containsKey('costBest')) {
      final l$costBest = data['costBest'];
      result$data['costBest'] = l$costBest == null
          ? null
          : Input$NumberFieldComparison.fromJson(
              (l$costBest as Map<String, dynamic>));
    }
    if (data.containsKey('driverId')) {
      final l$driverId = data['driverId'];
      result$data['driverId'] = l$driverId == null
          ? null
          : Input$IDFilterComparison.fromJson(
              (l$driverId as Map<String, dynamic>));
    }
    return Input$OrderAggregateFilter._(result$data);
  }

  Map<String, dynamic> _$data;

  List<Input$OrderAggregateFilter>? get and =>
      (_$data['and'] as List<Input$OrderAggregateFilter>?);
  List<Input$OrderAggregateFilter>? get or =>
      (_$data['or'] as List<Input$OrderAggregateFilter>?);
  Input$IDFilterComparison? get id =>
      (_$data['id'] as Input$IDFilterComparison?);
  Input$OrderStatusFilterComparison? get status =>
      (_$data['status'] as Input$OrderStatusFilterComparison?);
  Input$DateFieldComparison? get createdOn =>
      (_$data['createdOn'] as Input$DateFieldComparison?);
  Input$IntFieldComparison? get distanceBest =>
      (_$data['distanceBest'] as Input$IntFieldComparison?);
  Input$NumberFieldComparison? get costBest =>
      (_$data['costBest'] as Input$NumberFieldComparison?);
  Input$IDFilterComparison? get driverId =>
      (_$data['driverId'] as Input$IDFilterComparison?);
  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('and')) {
      final l$and = and;
      result$data['and'] = l$and?.map((e) => e.toJson()).toList();
    }
    if (_$data.containsKey('or')) {
      final l$or = or;
      result$data['or'] = l$or?.map((e) => e.toJson()).toList();
    }
    if (_$data.containsKey('id')) {
      final l$id = id;
      result$data['id'] = l$id?.toJson();
    }
    if (_$data.containsKey('status')) {
      final l$status = status;
      result$data['status'] = l$status?.toJson();
    }
    if (_$data.containsKey('createdOn')) {
      final l$createdOn = createdOn;
      result$data['createdOn'] = l$createdOn?.toJson();
    }
    if (_$data.containsKey('distanceBest')) {
      final l$distanceBest = distanceBest;
      result$data['distanceBest'] = l$distanceBest?.toJson();
    }
    if (_$data.containsKey('costBest')) {
      final l$costBest = costBest;
      result$data['costBest'] = l$costBest?.toJson();
    }
    if (_$data.containsKey('driverId')) {
      final l$driverId = driverId;
      result$data['driverId'] = l$driverId?.toJson();
    }
    return result$data;
  }

  CopyWith$Input$OrderAggregateFilter<Input$OrderAggregateFilter>
      get copyWith => CopyWith$Input$OrderAggregateFilter(
            this,
            (i) => i,
          );
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Input$OrderAggregateFilter) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$and = and;
    final lOther$and = other.and;
    if (_$data.containsKey('and') != other._$data.containsKey('and')) {
      return false;
    }
    if (l$and != null && lOther$and != null) {
      if (l$and.length != lOther$and.length) {
        return false;
      }
      for (int i = 0; i < l$and.length; i++) {
        final l$and$entry = l$and[i];
        final lOther$and$entry = lOther$and[i];
        if (l$and$entry != lOther$and$entry) {
          return false;
        }
      }
    } else if (l$and != lOther$and) {
      return false;
    }
    final l$or = or;
    final lOther$or = other.or;
    if (_$data.containsKey('or') != other._$data.containsKey('or')) {
      return false;
    }
    if (l$or != null && lOther$or != null) {
      if (l$or.length != lOther$or.length) {
        return false;
      }
      for (int i = 0; i < l$or.length; i++) {
        final l$or$entry = l$or[i];
        final lOther$or$entry = lOther$or[i];
        if (l$or$entry != lOther$or$entry) {
          return false;
        }
      }
    } else if (l$or != lOther$or) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (_$data.containsKey('id') != other._$data.containsKey('id')) {
      return false;
    }
    if (l$id != lOther$id) {
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
    final l$createdOn = createdOn;
    final lOther$createdOn = other.createdOn;
    if (_$data.containsKey('createdOn') !=
        other._$data.containsKey('createdOn')) {
      return false;
    }
    if (l$createdOn != lOther$createdOn) {
      return false;
    }
    final l$distanceBest = distanceBest;
    final lOther$distanceBest = other.distanceBest;
    if (_$data.containsKey('distanceBest') !=
        other._$data.containsKey('distanceBest')) {
      return false;
    }
    if (l$distanceBest != lOther$distanceBest) {
      return false;
    }
    final l$costBest = costBest;
    final lOther$costBest = other.costBest;
    if (_$data.containsKey('costBest') !=
        other._$data.containsKey('costBest')) {
      return false;
    }
    if (l$costBest != lOther$costBest) {
      return false;
    }
    final l$driverId = driverId;
    final lOther$driverId = other.driverId;
    if (_$data.containsKey('driverId') !=
        other._$data.containsKey('driverId')) {
      return false;
    }
    if (l$driverId != lOther$driverId) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$and = and;
    final l$or = or;
    final l$id = id;
    final l$status = status;
    final l$createdOn = createdOn;
    final l$distanceBest = distanceBest;
    final l$costBest = costBest;
    final l$driverId = driverId;
    return Object.hashAll([
      _$data.containsKey('and')
          ? l$and == null
              ? null
              : Object.hashAll(l$and.map((v) => v))
          : const {},
      _$data.containsKey('or')
          ? l$or == null
              ? null
              : Object.hashAll(l$or.map((v) => v))
          : const {},
      _$data.containsKey('id') ? l$id : const {},
      _$data.containsKey('status') ? l$status : const {},
      _$data.containsKey('createdOn') ? l$createdOn : const {},
      _$data.containsKey('distanceBest') ? l$distanceBest : const {},
      _$data.containsKey('costBest') ? l$costBest : const {},
      _$data.containsKey('driverId') ? l$driverId : const {},
    ]);
  }
}

abstract class CopyWith$Input$OrderAggregateFilter<TRes> {
  factory CopyWith$Input$OrderAggregateFilter(
    Input$OrderAggregateFilter instance,
    TRes Function(Input$OrderAggregateFilter) then,
  ) = _CopyWithImpl$Input$OrderAggregateFilter;

  factory CopyWith$Input$OrderAggregateFilter.stub(TRes res) =
      _CopyWithStubImpl$Input$OrderAggregateFilter;

  TRes call({
    List<Input$OrderAggregateFilter>? and,
    List<Input$OrderAggregateFilter>? or,
    Input$IDFilterComparison? id,
    Input$OrderStatusFilterComparison? status,
    Input$DateFieldComparison? createdOn,
    Input$IntFieldComparison? distanceBest,
    Input$NumberFieldComparison? costBest,
    Input$IDFilterComparison? driverId,
  });
  TRes and(
      Iterable<Input$OrderAggregateFilter>? Function(
              Iterable<
                  CopyWith$Input$OrderAggregateFilter<
                      Input$OrderAggregateFilter>>?)
          _fn);
  TRes or(
      Iterable<Input$OrderAggregateFilter>? Function(
              Iterable<
                  CopyWith$Input$OrderAggregateFilter<
                      Input$OrderAggregateFilter>>?)
          _fn);
  CopyWith$Input$IDFilterComparison<TRes> get id;
  CopyWith$Input$OrderStatusFilterComparison<TRes> get status;
  CopyWith$Input$DateFieldComparison<TRes> get createdOn;
  CopyWith$Input$IntFieldComparison<TRes> get distanceBest;
  CopyWith$Input$NumberFieldComparison<TRes> get costBest;
  CopyWith$Input$IDFilterComparison<TRes> get driverId;
}

class _CopyWithImpl$Input$OrderAggregateFilter<TRes>
    implements CopyWith$Input$OrderAggregateFilter<TRes> {
  _CopyWithImpl$Input$OrderAggregateFilter(
    this._instance,
    this._then,
  );

  final Input$OrderAggregateFilter _instance;

  final TRes Function(Input$OrderAggregateFilter) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? and = _undefined,
    Object? or = _undefined,
    Object? id = _undefined,
    Object? status = _undefined,
    Object? createdOn = _undefined,
    Object? distanceBest = _undefined,
    Object? costBest = _undefined,
    Object? driverId = _undefined,
  }) =>
      _then(Input$OrderAggregateFilter._({
        ..._instance._$data,
        if (and != _undefined)
          'and': (and as List<Input$OrderAggregateFilter>?),
        if (or != _undefined) 'or': (or as List<Input$OrderAggregateFilter>?),
        if (id != _undefined) 'id': (id as Input$IDFilterComparison?),
        if (status != _undefined)
          'status': (status as Input$OrderStatusFilterComparison?),
        if (createdOn != _undefined)
          'createdOn': (createdOn as Input$DateFieldComparison?),
        if (distanceBest != _undefined)
          'distanceBest': (distanceBest as Input$IntFieldComparison?),
        if (costBest != _undefined)
          'costBest': (costBest as Input$NumberFieldComparison?),
        if (driverId != _undefined)
          'driverId': (driverId as Input$IDFilterComparison?),
      }));
  TRes and(
          Iterable<Input$OrderAggregateFilter>? Function(
                  Iterable<
                      CopyWith$Input$OrderAggregateFilter<
                          Input$OrderAggregateFilter>>?)
              _fn) =>
      call(
          and:
              _fn(_instance.and?.map((e) => CopyWith$Input$OrderAggregateFilter(
                    e,
                    (i) => i,
                  )))?.toList());
  TRes or(
          Iterable<Input$OrderAggregateFilter>? Function(
                  Iterable<
                      CopyWith$Input$OrderAggregateFilter<
                          Input$OrderAggregateFilter>>?)
              _fn) =>
      call(
          or: _fn(_instance.or?.map((e) => CopyWith$Input$OrderAggregateFilter(
                e,
                (i) => i,
              )))?.toList());
  CopyWith$Input$IDFilterComparison<TRes> get id {
    final local$id = _instance.id;
    return local$id == null
        ? CopyWith$Input$IDFilterComparison.stub(_then(_instance))
        : CopyWith$Input$IDFilterComparison(local$id, (e) => call(id: e));
  }

  CopyWith$Input$OrderStatusFilterComparison<TRes> get status {
    final local$status = _instance.status;
    return local$status == null
        ? CopyWith$Input$OrderStatusFilterComparison.stub(_then(_instance))
        : CopyWith$Input$OrderStatusFilterComparison(
            local$status, (e) => call(status: e));
  }

  CopyWith$Input$DateFieldComparison<TRes> get createdOn {
    final local$createdOn = _instance.createdOn;
    return local$createdOn == null
        ? CopyWith$Input$DateFieldComparison.stub(_then(_instance))
        : CopyWith$Input$DateFieldComparison(
            local$createdOn, (e) => call(createdOn: e));
  }

  CopyWith$Input$IntFieldComparison<TRes> get distanceBest {
    final local$distanceBest = _instance.distanceBest;
    return local$distanceBest == null
        ? CopyWith$Input$IntFieldComparison.stub(_then(_instance))
        : CopyWith$Input$IntFieldComparison(
            local$distanceBest, (e) => call(distanceBest: e));
  }

  CopyWith$Input$NumberFieldComparison<TRes> get costBest {
    final local$costBest = _instance.costBest;
    return local$costBest == null
        ? CopyWith$Input$NumberFieldComparison.stub(_then(_instance))
        : CopyWith$Input$NumberFieldComparison(
            local$costBest, (e) => call(costBest: e));
  }

  CopyWith$Input$IDFilterComparison<TRes> get driverId {
    final local$driverId = _instance.driverId;
    return local$driverId == null
        ? CopyWith$Input$IDFilterComparison.stub(_then(_instance))
        : CopyWith$Input$IDFilterComparison(
            local$driverId, (e) => call(driverId: e));
  }
}

class _CopyWithStubImpl$Input$OrderAggregateFilter<TRes>
    implements CopyWith$Input$OrderAggregateFilter<TRes> {
  _CopyWithStubImpl$Input$OrderAggregateFilter(this._res);

  TRes _res;

  call({
    List<Input$OrderAggregateFilter>? and,
    List<Input$OrderAggregateFilter>? or,
    Input$IDFilterComparison? id,
    Input$OrderStatusFilterComparison? status,
    Input$DateFieldComparison? createdOn,
    Input$IntFieldComparison? distanceBest,
    Input$NumberFieldComparison? costBest,
    Input$IDFilterComparison? driverId,
  }) =>
      _res;
  and(_fn) => _res;
  or(_fn) => _res;
  CopyWith$Input$IDFilterComparison<TRes> get id =>
      CopyWith$Input$IDFilterComparison.stub(_res);
  CopyWith$Input$OrderStatusFilterComparison<TRes> get status =>
      CopyWith$Input$OrderStatusFilterComparison.stub(_res);
  CopyWith$Input$DateFieldComparison<TRes> get createdOn =>
      CopyWith$Input$DateFieldComparison.stub(_res);
  CopyWith$Input$IntFieldComparison<TRes> get distanceBest =>
      CopyWith$Input$IntFieldComparison.stub(_res);
  CopyWith$Input$NumberFieldComparison<TRes> get costBest =>
      CopyWith$Input$NumberFieldComparison.stub(_res);
  CopyWith$Input$IDFilterComparison<TRes> get driverId =>
      CopyWith$Input$IDFilterComparison.stub(_res);
}

class Input$OrderStatusFilterComparison {
  factory Input$OrderStatusFilterComparison({
    bool? $is,
    bool? isNot,
    Enum$OrderStatus? eq,
    Enum$OrderStatus? neq,
    Enum$OrderStatus? gt,
    Enum$OrderStatus? gte,
    Enum$OrderStatus? lt,
    Enum$OrderStatus? lte,
    Enum$OrderStatus? like,
    Enum$OrderStatus? notLike,
    Enum$OrderStatus? iLike,
    Enum$OrderStatus? notILike,
    List<Enum$OrderStatus>? $in,
    List<Enum$OrderStatus>? notIn,
  }) =>
      Input$OrderStatusFilterComparison._({
        if ($is != null) r'is': $is,
        if (isNot != null) r'isNot': isNot,
        if (eq != null) r'eq': eq,
        if (neq != null) r'neq': neq,
        if (gt != null) r'gt': gt,
        if (gte != null) r'gte': gte,
        if (lt != null) r'lt': lt,
        if (lte != null) r'lte': lte,
        if (like != null) r'like': like,
        if (notLike != null) r'notLike': notLike,
        if (iLike != null) r'iLike': iLike,
        if (notILike != null) r'notILike': notILike,
        if ($in != null) r'in': $in,
        if (notIn != null) r'notIn': notIn,
      });

  Input$OrderStatusFilterComparison._(this._$data);

  factory Input$OrderStatusFilterComparison.fromJson(
      Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('is')) {
      final l$$is = data['is'];
      result$data['is'] = (l$$is as bool?);
    }
    if (data.containsKey('isNot')) {
      final l$isNot = data['isNot'];
      result$data['isNot'] = (l$isNot as bool?);
    }
    if (data.containsKey('eq')) {
      final l$eq = data['eq'];
      result$data['eq'] =
          l$eq == null ? null : fromJson$Enum$OrderStatus((l$eq as String));
    }
    if (data.containsKey('neq')) {
      final l$neq = data['neq'];
      result$data['neq'] =
          l$neq == null ? null : fromJson$Enum$OrderStatus((l$neq as String));
    }
    if (data.containsKey('gt')) {
      final l$gt = data['gt'];
      result$data['gt'] =
          l$gt == null ? null : fromJson$Enum$OrderStatus((l$gt as String));
    }
    if (data.containsKey('gte')) {
      final l$gte = data['gte'];
      result$data['gte'] =
          l$gte == null ? null : fromJson$Enum$OrderStatus((l$gte as String));
    }
    if (data.containsKey('lt')) {
      final l$lt = data['lt'];
      result$data['lt'] =
          l$lt == null ? null : fromJson$Enum$OrderStatus((l$lt as String));
    }
    if (data.containsKey('lte')) {
      final l$lte = data['lte'];
      result$data['lte'] =
          l$lte == null ? null : fromJson$Enum$OrderStatus((l$lte as String));
    }
    if (data.containsKey('like')) {
      final l$like = data['like'];
      result$data['like'] =
          l$like == null ? null : fromJson$Enum$OrderStatus((l$like as String));
    }
    if (data.containsKey('notLike')) {
      final l$notLike = data['notLike'];
      result$data['notLike'] = l$notLike == null
          ? null
          : fromJson$Enum$OrderStatus((l$notLike as String));
    }
    if (data.containsKey('iLike')) {
      final l$iLike = data['iLike'];
      result$data['iLike'] = l$iLike == null
          ? null
          : fromJson$Enum$OrderStatus((l$iLike as String));
    }
    if (data.containsKey('notILike')) {
      final l$notILike = data['notILike'];
      result$data['notILike'] = l$notILike == null
          ? null
          : fromJson$Enum$OrderStatus((l$notILike as String));
    }
    if (data.containsKey('in')) {
      final l$$in = data['in'];
      result$data['in'] = (l$$in as List<dynamic>?)
          ?.map((e) => fromJson$Enum$OrderStatus((e as String)))
          .toList();
    }
    if (data.containsKey('notIn')) {
      final l$notIn = data['notIn'];
      result$data['notIn'] = (l$notIn as List<dynamic>?)
          ?.map((e) => fromJson$Enum$OrderStatus((e as String)))
          .toList();
    }
    return Input$OrderStatusFilterComparison._(result$data);
  }

  Map<String, dynamic> _$data;

  bool? get $is => (_$data['is'] as bool?);
  bool? get isNot => (_$data['isNot'] as bool?);
  Enum$OrderStatus? get eq => (_$data['eq'] as Enum$OrderStatus?);
  Enum$OrderStatus? get neq => (_$data['neq'] as Enum$OrderStatus?);
  Enum$OrderStatus? get gt => (_$data['gt'] as Enum$OrderStatus?);
  Enum$OrderStatus? get gte => (_$data['gte'] as Enum$OrderStatus?);
  Enum$OrderStatus? get lt => (_$data['lt'] as Enum$OrderStatus?);
  Enum$OrderStatus? get lte => (_$data['lte'] as Enum$OrderStatus?);
  Enum$OrderStatus? get like => (_$data['like'] as Enum$OrderStatus?);
  Enum$OrderStatus? get notLike => (_$data['notLike'] as Enum$OrderStatus?);
  Enum$OrderStatus? get iLike => (_$data['iLike'] as Enum$OrderStatus?);
  Enum$OrderStatus? get notILike => (_$data['notILike'] as Enum$OrderStatus?);
  List<Enum$OrderStatus>? get $in => (_$data['in'] as List<Enum$OrderStatus>?);
  List<Enum$OrderStatus>? get notIn =>
      (_$data['notIn'] as List<Enum$OrderStatus>?);
  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('is')) {
      final l$$is = $is;
      result$data['is'] = l$$is;
    }
    if (_$data.containsKey('isNot')) {
      final l$isNot = isNot;
      result$data['isNot'] = l$isNot;
    }
    if (_$data.containsKey('eq')) {
      final l$eq = eq;
      result$data['eq'] = l$eq == null ? null : toJson$Enum$OrderStatus(l$eq);
    }
    if (_$data.containsKey('neq')) {
      final l$neq = neq;
      result$data['neq'] =
          l$neq == null ? null : toJson$Enum$OrderStatus(l$neq);
    }
    if (_$data.containsKey('gt')) {
      final l$gt = gt;
      result$data['gt'] = l$gt == null ? null : toJson$Enum$OrderStatus(l$gt);
    }
    if (_$data.containsKey('gte')) {
      final l$gte = gte;
      result$data['gte'] =
          l$gte == null ? null : toJson$Enum$OrderStatus(l$gte);
    }
    if (_$data.containsKey('lt')) {
      final l$lt = lt;
      result$data['lt'] = l$lt == null ? null : toJson$Enum$OrderStatus(l$lt);
    }
    if (_$data.containsKey('lte')) {
      final l$lte = lte;
      result$data['lte'] =
          l$lte == null ? null : toJson$Enum$OrderStatus(l$lte);
    }
    if (_$data.containsKey('like')) {
      final l$like = like;
      result$data['like'] =
          l$like == null ? null : toJson$Enum$OrderStatus(l$like);
    }
    if (_$data.containsKey('notLike')) {
      final l$notLike = notLike;
      result$data['notLike'] =
          l$notLike == null ? null : toJson$Enum$OrderStatus(l$notLike);
    }
    if (_$data.containsKey('iLike')) {
      final l$iLike = iLike;
      result$data['iLike'] =
          l$iLike == null ? null : toJson$Enum$OrderStatus(l$iLike);
    }
    if (_$data.containsKey('notILike')) {
      final l$notILike = notILike;
      result$data['notILike'] =
          l$notILike == null ? null : toJson$Enum$OrderStatus(l$notILike);
    }
    if (_$data.containsKey('in')) {
      final l$$in = $in;
      result$data['in'] =
          l$$in?.map((e) => toJson$Enum$OrderStatus(e)).toList();
    }
    if (_$data.containsKey('notIn')) {
      final l$notIn = notIn;
      result$data['notIn'] =
          l$notIn?.map((e) => toJson$Enum$OrderStatus(e)).toList();
    }
    return result$data;
  }

  CopyWith$Input$OrderStatusFilterComparison<Input$OrderStatusFilterComparison>
      get copyWith => CopyWith$Input$OrderStatusFilterComparison(
            this,
            (i) => i,
          );
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Input$OrderStatusFilterComparison) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$$is = $is;
    final lOther$$is = other.$is;
    if (_$data.containsKey('is') != other._$data.containsKey('is')) {
      return false;
    }
    if (l$$is != lOther$$is) {
      return false;
    }
    final l$isNot = isNot;
    final lOther$isNot = other.isNot;
    if (_$data.containsKey('isNot') != other._$data.containsKey('isNot')) {
      return false;
    }
    if (l$isNot != lOther$isNot) {
      return false;
    }
    final l$eq = eq;
    final lOther$eq = other.eq;
    if (_$data.containsKey('eq') != other._$data.containsKey('eq')) {
      return false;
    }
    if (l$eq != lOther$eq) {
      return false;
    }
    final l$neq = neq;
    final lOther$neq = other.neq;
    if (_$data.containsKey('neq') != other._$data.containsKey('neq')) {
      return false;
    }
    if (l$neq != lOther$neq) {
      return false;
    }
    final l$gt = gt;
    final lOther$gt = other.gt;
    if (_$data.containsKey('gt') != other._$data.containsKey('gt')) {
      return false;
    }
    if (l$gt != lOther$gt) {
      return false;
    }
    final l$gte = gte;
    final lOther$gte = other.gte;
    if (_$data.containsKey('gte') != other._$data.containsKey('gte')) {
      return false;
    }
    if (l$gte != lOther$gte) {
      return false;
    }
    final l$lt = lt;
    final lOther$lt = other.lt;
    if (_$data.containsKey('lt') != other._$data.containsKey('lt')) {
      return false;
    }
    if (l$lt != lOther$lt) {
      return false;
    }
    final l$lte = lte;
    final lOther$lte = other.lte;
    if (_$data.containsKey('lte') != other._$data.containsKey('lte')) {
      return false;
    }
    if (l$lte != lOther$lte) {
      return false;
    }
    final l$like = like;
    final lOther$like = other.like;
    if (_$data.containsKey('like') != other._$data.containsKey('like')) {
      return false;
    }
    if (l$like != lOther$like) {
      return false;
    }
    final l$notLike = notLike;
    final lOther$notLike = other.notLike;
    if (_$data.containsKey('notLike') != other._$data.containsKey('notLike')) {
      return false;
    }
    if (l$notLike != lOther$notLike) {
      return false;
    }
    final l$iLike = iLike;
    final lOther$iLike = other.iLike;
    if (_$data.containsKey('iLike') != other._$data.containsKey('iLike')) {
      return false;
    }
    if (l$iLike != lOther$iLike) {
      return false;
    }
    final l$notILike = notILike;
    final lOther$notILike = other.notILike;
    if (_$data.containsKey('notILike') !=
        other._$data.containsKey('notILike')) {
      return false;
    }
    if (l$notILike != lOther$notILike) {
      return false;
    }
    final l$$in = $in;
    final lOther$$in = other.$in;
    if (_$data.containsKey('in') != other._$data.containsKey('in')) {
      return false;
    }
    if (l$$in != null && lOther$$in != null) {
      if (l$$in.length != lOther$$in.length) {
        return false;
      }
      for (int i = 0; i < l$$in.length; i++) {
        final l$$in$entry = l$$in[i];
        final lOther$$in$entry = lOther$$in[i];
        if (l$$in$entry != lOther$$in$entry) {
          return false;
        }
      }
    } else if (l$$in != lOther$$in) {
      return false;
    }
    final l$notIn = notIn;
    final lOther$notIn = other.notIn;
    if (_$data.containsKey('notIn') != other._$data.containsKey('notIn')) {
      return false;
    }
    if (l$notIn != null && lOther$notIn != null) {
      if (l$notIn.length != lOther$notIn.length) {
        return false;
      }
      for (int i = 0; i < l$notIn.length; i++) {
        final l$notIn$entry = l$notIn[i];
        final lOther$notIn$entry = lOther$notIn[i];
        if (l$notIn$entry != lOther$notIn$entry) {
          return false;
        }
      }
    } else if (l$notIn != lOther$notIn) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$$is = $is;
    final l$isNot = isNot;
    final l$eq = eq;
    final l$neq = neq;
    final l$gt = gt;
    final l$gte = gte;
    final l$lt = lt;
    final l$lte = lte;
    final l$like = like;
    final l$notLike = notLike;
    final l$iLike = iLike;
    final l$notILike = notILike;
    final l$$in = $in;
    final l$notIn = notIn;
    return Object.hashAll([
      _$data.containsKey('is') ? l$$is : const {},
      _$data.containsKey('isNot') ? l$isNot : const {},
      _$data.containsKey('eq') ? l$eq : const {},
      _$data.containsKey('neq') ? l$neq : const {},
      _$data.containsKey('gt') ? l$gt : const {},
      _$data.containsKey('gte') ? l$gte : const {},
      _$data.containsKey('lt') ? l$lt : const {},
      _$data.containsKey('lte') ? l$lte : const {},
      _$data.containsKey('like') ? l$like : const {},
      _$data.containsKey('notLike') ? l$notLike : const {},
      _$data.containsKey('iLike') ? l$iLike : const {},
      _$data.containsKey('notILike') ? l$notILike : const {},
      _$data.containsKey('in')
          ? l$$in == null
              ? null
              : Object.hashAll(l$$in.map((v) => v))
          : const {},
      _$data.containsKey('notIn')
          ? l$notIn == null
              ? null
              : Object.hashAll(l$notIn.map((v) => v))
          : const {},
    ]);
  }
}

abstract class CopyWith$Input$OrderStatusFilterComparison<TRes> {
  factory CopyWith$Input$OrderStatusFilterComparison(
    Input$OrderStatusFilterComparison instance,
    TRes Function(Input$OrderStatusFilterComparison) then,
  ) = _CopyWithImpl$Input$OrderStatusFilterComparison;

  factory CopyWith$Input$OrderStatusFilterComparison.stub(TRes res) =
      _CopyWithStubImpl$Input$OrderStatusFilterComparison;

  TRes call({
    bool? $is,
    bool? isNot,
    Enum$OrderStatus? eq,
    Enum$OrderStatus? neq,
    Enum$OrderStatus? gt,
    Enum$OrderStatus? gte,
    Enum$OrderStatus? lt,
    Enum$OrderStatus? lte,
    Enum$OrderStatus? like,
    Enum$OrderStatus? notLike,
    Enum$OrderStatus? iLike,
    Enum$OrderStatus? notILike,
    List<Enum$OrderStatus>? $in,
    List<Enum$OrderStatus>? notIn,
  });
}

class _CopyWithImpl$Input$OrderStatusFilterComparison<TRes>
    implements CopyWith$Input$OrderStatusFilterComparison<TRes> {
  _CopyWithImpl$Input$OrderStatusFilterComparison(
    this._instance,
    this._then,
  );

  final Input$OrderStatusFilterComparison _instance;

  final TRes Function(Input$OrderStatusFilterComparison) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? $is = _undefined,
    Object? isNot = _undefined,
    Object? eq = _undefined,
    Object? neq = _undefined,
    Object? gt = _undefined,
    Object? gte = _undefined,
    Object? lt = _undefined,
    Object? lte = _undefined,
    Object? like = _undefined,
    Object? notLike = _undefined,
    Object? iLike = _undefined,
    Object? notILike = _undefined,
    Object? $in = _undefined,
    Object? notIn = _undefined,
  }) =>
      _then(Input$OrderStatusFilterComparison._({
        ..._instance._$data,
        if ($is != _undefined) 'is': ($is as bool?),
        if (isNot != _undefined) 'isNot': (isNot as bool?),
        if (eq != _undefined) 'eq': (eq as Enum$OrderStatus?),
        if (neq != _undefined) 'neq': (neq as Enum$OrderStatus?),
        if (gt != _undefined) 'gt': (gt as Enum$OrderStatus?),
        if (gte != _undefined) 'gte': (gte as Enum$OrderStatus?),
        if (lt != _undefined) 'lt': (lt as Enum$OrderStatus?),
        if (lte != _undefined) 'lte': (lte as Enum$OrderStatus?),
        if (like != _undefined) 'like': (like as Enum$OrderStatus?),
        if (notLike != _undefined) 'notLike': (notLike as Enum$OrderStatus?),
        if (iLike != _undefined) 'iLike': (iLike as Enum$OrderStatus?),
        if (notILike != _undefined) 'notILike': (notILike as Enum$OrderStatus?),
        if ($in != _undefined) 'in': ($in as List<Enum$OrderStatus>?),
        if (notIn != _undefined) 'notIn': (notIn as List<Enum$OrderStatus>?),
      }));
}

class _CopyWithStubImpl$Input$OrderStatusFilterComparison<TRes>
    implements CopyWith$Input$OrderStatusFilterComparison<TRes> {
  _CopyWithStubImpl$Input$OrderStatusFilterComparison(this._res);

  TRes _res;

  call({
    bool? $is,
    bool? isNot,
    Enum$OrderStatus? eq,
    Enum$OrderStatus? neq,
    Enum$OrderStatus? gt,
    Enum$OrderStatus? gte,
    Enum$OrderStatus? lt,
    Enum$OrderStatus? lte,
    Enum$OrderStatus? like,
    Enum$OrderStatus? notLike,
    Enum$OrderStatus? iLike,
    Enum$OrderStatus? notILike,
    List<Enum$OrderStatus>? $in,
    List<Enum$OrderStatus>? notIn,
  }) =>
      _res;
}

class Input$DateFieldComparison {
  factory Input$DateFieldComparison({
    bool? $is,
    bool? isNot,
    DateTime? eq,
    DateTime? neq,
    DateTime? gt,
    DateTime? gte,
    DateTime? lt,
    DateTime? lte,
    List<DateTime>? $in,
    List<DateTime>? notIn,
    Input$DateFieldComparisonBetween? between,
    Input$DateFieldComparisonBetween? notBetween,
  }) =>
      Input$DateFieldComparison._({
        if ($is != null) r'is': $is,
        if (isNot != null) r'isNot': isNot,
        if (eq != null) r'eq': eq,
        if (neq != null) r'neq': neq,
        if (gt != null) r'gt': gt,
        if (gte != null) r'gte': gte,
        if (lt != null) r'lt': lt,
        if (lte != null) r'lte': lte,
        if ($in != null) r'in': $in,
        if (notIn != null) r'notIn': notIn,
        if (between != null) r'between': between,
        if (notBetween != null) r'notBetween': notBetween,
      });

  Input$DateFieldComparison._(this._$data);

  factory Input$DateFieldComparison.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('is')) {
      final l$$is = data['is'];
      result$data['is'] = (l$$is as bool?);
    }
    if (data.containsKey('isNot')) {
      final l$isNot = data['isNot'];
      result$data['isNot'] = (l$isNot as bool?);
    }
    if (data.containsKey('eq')) {
      final l$eq = data['eq'];
      result$data['eq'] =
          l$eq == null ? null : fromGraphQLDateTimeToDartDateTime(l$eq);
    }
    if (data.containsKey('neq')) {
      final l$neq = data['neq'];
      result$data['neq'] =
          l$neq == null ? null : fromGraphQLDateTimeToDartDateTime(l$neq);
    }
    if (data.containsKey('gt')) {
      final l$gt = data['gt'];
      result$data['gt'] =
          l$gt == null ? null : fromGraphQLDateTimeToDartDateTime(l$gt);
    }
    if (data.containsKey('gte')) {
      final l$gte = data['gte'];
      result$data['gte'] =
          l$gte == null ? null : fromGraphQLDateTimeToDartDateTime(l$gte);
    }
    if (data.containsKey('lt')) {
      final l$lt = data['lt'];
      result$data['lt'] =
          l$lt == null ? null : fromGraphQLDateTimeToDartDateTime(l$lt);
    }
    if (data.containsKey('lte')) {
      final l$lte = data['lte'];
      result$data['lte'] =
          l$lte == null ? null : fromGraphQLDateTimeToDartDateTime(l$lte);
    }
    if (data.containsKey('in')) {
      final l$$in = data['in'];
      result$data['in'] = (l$$in as List<dynamic>?)
          ?.map((e) => fromGraphQLDateTimeToDartDateTime(e))
          .toList();
    }
    if (data.containsKey('notIn')) {
      final l$notIn = data['notIn'];
      result$data['notIn'] = (l$notIn as List<dynamic>?)
          ?.map((e) => fromGraphQLDateTimeToDartDateTime(e))
          .toList();
    }
    if (data.containsKey('between')) {
      final l$between = data['between'];
      result$data['between'] = l$between == null
          ? null
          : Input$DateFieldComparisonBetween.fromJson(
              (l$between as Map<String, dynamic>));
    }
    if (data.containsKey('notBetween')) {
      final l$notBetween = data['notBetween'];
      result$data['notBetween'] = l$notBetween == null
          ? null
          : Input$DateFieldComparisonBetween.fromJson(
              (l$notBetween as Map<String, dynamic>));
    }
    return Input$DateFieldComparison._(result$data);
  }

  Map<String, dynamic> _$data;

  bool? get $is => (_$data['is'] as bool?);
  bool? get isNot => (_$data['isNot'] as bool?);
  DateTime? get eq => (_$data['eq'] as DateTime?);
  DateTime? get neq => (_$data['neq'] as DateTime?);
  DateTime? get gt => (_$data['gt'] as DateTime?);
  DateTime? get gte => (_$data['gte'] as DateTime?);
  DateTime? get lt => (_$data['lt'] as DateTime?);
  DateTime? get lte => (_$data['lte'] as DateTime?);
  List<DateTime>? get $in => (_$data['in'] as List<DateTime>?);
  List<DateTime>? get notIn => (_$data['notIn'] as List<DateTime>?);
  Input$DateFieldComparisonBetween? get between =>
      (_$data['between'] as Input$DateFieldComparisonBetween?);
  Input$DateFieldComparisonBetween? get notBetween =>
      (_$data['notBetween'] as Input$DateFieldComparisonBetween?);
  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('is')) {
      final l$$is = $is;
      result$data['is'] = l$$is;
    }
    if (_$data.containsKey('isNot')) {
      final l$isNot = isNot;
      result$data['isNot'] = l$isNot;
    }
    if (_$data.containsKey('eq')) {
      final l$eq = eq;
      result$data['eq'] =
          l$eq == null ? null : fromDartDateTimeToGraphQLDateTime(l$eq);
    }
    if (_$data.containsKey('neq')) {
      final l$neq = neq;
      result$data['neq'] =
          l$neq == null ? null : fromDartDateTimeToGraphQLDateTime(l$neq);
    }
    if (_$data.containsKey('gt')) {
      final l$gt = gt;
      result$data['gt'] =
          l$gt == null ? null : fromDartDateTimeToGraphQLDateTime(l$gt);
    }
    if (_$data.containsKey('gte')) {
      final l$gte = gte;
      result$data['gte'] =
          l$gte == null ? null : fromDartDateTimeToGraphQLDateTime(l$gte);
    }
    if (_$data.containsKey('lt')) {
      final l$lt = lt;
      result$data['lt'] =
          l$lt == null ? null : fromDartDateTimeToGraphQLDateTime(l$lt);
    }
    if (_$data.containsKey('lte')) {
      final l$lte = lte;
      result$data['lte'] =
          l$lte == null ? null : fromDartDateTimeToGraphQLDateTime(l$lte);
    }
    if (_$data.containsKey('in')) {
      final l$$in = $in;
      result$data['in'] =
          l$$in?.map((e) => fromDartDateTimeToGraphQLDateTime(e)).toList();
    }
    if (_$data.containsKey('notIn')) {
      final l$notIn = notIn;
      result$data['notIn'] =
          l$notIn?.map((e) => fromDartDateTimeToGraphQLDateTime(e)).toList();
    }
    if (_$data.containsKey('between')) {
      final l$between = between;
      result$data['between'] = l$between?.toJson();
    }
    if (_$data.containsKey('notBetween')) {
      final l$notBetween = notBetween;
      result$data['notBetween'] = l$notBetween?.toJson();
    }
    return result$data;
  }

  CopyWith$Input$DateFieldComparison<Input$DateFieldComparison> get copyWith =>
      CopyWith$Input$DateFieldComparison(
        this,
        (i) => i,
      );
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Input$DateFieldComparison) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$$is = $is;
    final lOther$$is = other.$is;
    if (_$data.containsKey('is') != other._$data.containsKey('is')) {
      return false;
    }
    if (l$$is != lOther$$is) {
      return false;
    }
    final l$isNot = isNot;
    final lOther$isNot = other.isNot;
    if (_$data.containsKey('isNot') != other._$data.containsKey('isNot')) {
      return false;
    }
    if (l$isNot != lOther$isNot) {
      return false;
    }
    final l$eq = eq;
    final lOther$eq = other.eq;
    if (_$data.containsKey('eq') != other._$data.containsKey('eq')) {
      return false;
    }
    if (l$eq != lOther$eq) {
      return false;
    }
    final l$neq = neq;
    final lOther$neq = other.neq;
    if (_$data.containsKey('neq') != other._$data.containsKey('neq')) {
      return false;
    }
    if (l$neq != lOther$neq) {
      return false;
    }
    final l$gt = gt;
    final lOther$gt = other.gt;
    if (_$data.containsKey('gt') != other._$data.containsKey('gt')) {
      return false;
    }
    if (l$gt != lOther$gt) {
      return false;
    }
    final l$gte = gte;
    final lOther$gte = other.gte;
    if (_$data.containsKey('gte') != other._$data.containsKey('gte')) {
      return false;
    }
    if (l$gte != lOther$gte) {
      return false;
    }
    final l$lt = lt;
    final lOther$lt = other.lt;
    if (_$data.containsKey('lt') != other._$data.containsKey('lt')) {
      return false;
    }
    if (l$lt != lOther$lt) {
      return false;
    }
    final l$lte = lte;
    final lOther$lte = other.lte;
    if (_$data.containsKey('lte') != other._$data.containsKey('lte')) {
      return false;
    }
    if (l$lte != lOther$lte) {
      return false;
    }
    final l$$in = $in;
    final lOther$$in = other.$in;
    if (_$data.containsKey('in') != other._$data.containsKey('in')) {
      return false;
    }
    if (l$$in != null && lOther$$in != null) {
      if (l$$in.length != lOther$$in.length) {
        return false;
      }
      for (int i = 0; i < l$$in.length; i++) {
        final l$$in$entry = l$$in[i];
        final lOther$$in$entry = lOther$$in[i];
        if (l$$in$entry != lOther$$in$entry) {
          return false;
        }
      }
    } else if (l$$in != lOther$$in) {
      return false;
    }
    final l$notIn = notIn;
    final lOther$notIn = other.notIn;
    if (_$data.containsKey('notIn') != other._$data.containsKey('notIn')) {
      return false;
    }
    if (l$notIn != null && lOther$notIn != null) {
      if (l$notIn.length != lOther$notIn.length) {
        return false;
      }
      for (int i = 0; i < l$notIn.length; i++) {
        final l$notIn$entry = l$notIn[i];
        final lOther$notIn$entry = lOther$notIn[i];
        if (l$notIn$entry != lOther$notIn$entry) {
          return false;
        }
      }
    } else if (l$notIn != lOther$notIn) {
      return false;
    }
    final l$between = between;
    final lOther$between = other.between;
    if (_$data.containsKey('between') != other._$data.containsKey('between')) {
      return false;
    }
    if (l$between != lOther$between) {
      return false;
    }
    final l$notBetween = notBetween;
    final lOther$notBetween = other.notBetween;
    if (_$data.containsKey('notBetween') !=
        other._$data.containsKey('notBetween')) {
      return false;
    }
    if (l$notBetween != lOther$notBetween) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$$is = $is;
    final l$isNot = isNot;
    final l$eq = eq;
    final l$neq = neq;
    final l$gt = gt;
    final l$gte = gte;
    final l$lt = lt;
    final l$lte = lte;
    final l$$in = $in;
    final l$notIn = notIn;
    final l$between = between;
    final l$notBetween = notBetween;
    return Object.hashAll([
      _$data.containsKey('is') ? l$$is : const {},
      _$data.containsKey('isNot') ? l$isNot : const {},
      _$data.containsKey('eq') ? l$eq : const {},
      _$data.containsKey('neq') ? l$neq : const {},
      _$data.containsKey('gt') ? l$gt : const {},
      _$data.containsKey('gte') ? l$gte : const {},
      _$data.containsKey('lt') ? l$lt : const {},
      _$data.containsKey('lte') ? l$lte : const {},
      _$data.containsKey('in')
          ? l$$in == null
              ? null
              : Object.hashAll(l$$in.map((v) => v))
          : const {},
      _$data.containsKey('notIn')
          ? l$notIn == null
              ? null
              : Object.hashAll(l$notIn.map((v) => v))
          : const {},
      _$data.containsKey('between') ? l$between : const {},
      _$data.containsKey('notBetween') ? l$notBetween : const {},
    ]);
  }
}

abstract class CopyWith$Input$DateFieldComparison<TRes> {
  factory CopyWith$Input$DateFieldComparison(
    Input$DateFieldComparison instance,
    TRes Function(Input$DateFieldComparison) then,
  ) = _CopyWithImpl$Input$DateFieldComparison;

  factory CopyWith$Input$DateFieldComparison.stub(TRes res) =
      _CopyWithStubImpl$Input$DateFieldComparison;

  TRes call({
    bool? $is,
    bool? isNot,
    DateTime? eq,
    DateTime? neq,
    DateTime? gt,
    DateTime? gte,
    DateTime? lt,
    DateTime? lte,
    List<DateTime>? $in,
    List<DateTime>? notIn,
    Input$DateFieldComparisonBetween? between,
    Input$DateFieldComparisonBetween? notBetween,
  });
  CopyWith$Input$DateFieldComparisonBetween<TRes> get between;
  CopyWith$Input$DateFieldComparisonBetween<TRes> get notBetween;
}

class _CopyWithImpl$Input$DateFieldComparison<TRes>
    implements CopyWith$Input$DateFieldComparison<TRes> {
  _CopyWithImpl$Input$DateFieldComparison(
    this._instance,
    this._then,
  );

  final Input$DateFieldComparison _instance;

  final TRes Function(Input$DateFieldComparison) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? $is = _undefined,
    Object? isNot = _undefined,
    Object? eq = _undefined,
    Object? neq = _undefined,
    Object? gt = _undefined,
    Object? gte = _undefined,
    Object? lt = _undefined,
    Object? lte = _undefined,
    Object? $in = _undefined,
    Object? notIn = _undefined,
    Object? between = _undefined,
    Object? notBetween = _undefined,
  }) =>
      _then(Input$DateFieldComparison._({
        ..._instance._$data,
        if ($is != _undefined) 'is': ($is as bool?),
        if (isNot != _undefined) 'isNot': (isNot as bool?),
        if (eq != _undefined) 'eq': (eq as DateTime?),
        if (neq != _undefined) 'neq': (neq as DateTime?),
        if (gt != _undefined) 'gt': (gt as DateTime?),
        if (gte != _undefined) 'gte': (gte as DateTime?),
        if (lt != _undefined) 'lt': (lt as DateTime?),
        if (lte != _undefined) 'lte': (lte as DateTime?),
        if ($in != _undefined) 'in': ($in as List<DateTime>?),
        if (notIn != _undefined) 'notIn': (notIn as List<DateTime>?),
        if (between != _undefined)
          'between': (between as Input$DateFieldComparisonBetween?),
        if (notBetween != _undefined)
          'notBetween': (notBetween as Input$DateFieldComparisonBetween?),
      }));
  CopyWith$Input$DateFieldComparisonBetween<TRes> get between {
    final local$between = _instance.between;
    return local$between == null
        ? CopyWith$Input$DateFieldComparisonBetween.stub(_then(_instance))
        : CopyWith$Input$DateFieldComparisonBetween(
            local$between, (e) => call(between: e));
  }

  CopyWith$Input$DateFieldComparisonBetween<TRes> get notBetween {
    final local$notBetween = _instance.notBetween;
    return local$notBetween == null
        ? CopyWith$Input$DateFieldComparisonBetween.stub(_then(_instance))
        : CopyWith$Input$DateFieldComparisonBetween(
            local$notBetween, (e) => call(notBetween: e));
  }
}

class _CopyWithStubImpl$Input$DateFieldComparison<TRes>
    implements CopyWith$Input$DateFieldComparison<TRes> {
  _CopyWithStubImpl$Input$DateFieldComparison(this._res);

  TRes _res;

  call({
    bool? $is,
    bool? isNot,
    DateTime? eq,
    DateTime? neq,
    DateTime? gt,
    DateTime? gte,
    DateTime? lt,
    DateTime? lte,
    List<DateTime>? $in,
    List<DateTime>? notIn,
    Input$DateFieldComparisonBetween? between,
    Input$DateFieldComparisonBetween? notBetween,
  }) =>
      _res;
  CopyWith$Input$DateFieldComparisonBetween<TRes> get between =>
      CopyWith$Input$DateFieldComparisonBetween.stub(_res);
  CopyWith$Input$DateFieldComparisonBetween<TRes> get notBetween =>
      CopyWith$Input$DateFieldComparisonBetween.stub(_res);
}

class Input$DateFieldComparisonBetween {
  factory Input$DateFieldComparisonBetween({
    required DateTime lower,
    required DateTime upper,
  }) =>
      Input$DateFieldComparisonBetween._({
        r'lower': lower,
        r'upper': upper,
      });

  Input$DateFieldComparisonBetween._(this._$data);

  factory Input$DateFieldComparisonBetween.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$lower = data['lower'];
    result$data['lower'] = fromGraphQLDateTimeToDartDateTime(l$lower);
    final l$upper = data['upper'];
    result$data['upper'] = fromGraphQLDateTimeToDartDateTime(l$upper);
    return Input$DateFieldComparisonBetween._(result$data);
  }

  Map<String, dynamic> _$data;

  DateTime get lower => (_$data['lower'] as DateTime);
  DateTime get upper => (_$data['upper'] as DateTime);
  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$lower = lower;
    result$data['lower'] = fromDartDateTimeToGraphQLDateTime(l$lower);
    final l$upper = upper;
    result$data['upper'] = fromDartDateTimeToGraphQLDateTime(l$upper);
    return result$data;
  }

  CopyWith$Input$DateFieldComparisonBetween<Input$DateFieldComparisonBetween>
      get copyWith => CopyWith$Input$DateFieldComparisonBetween(
            this,
            (i) => i,
          );
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Input$DateFieldComparisonBetween) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$lower = lower;
    final lOther$lower = other.lower;
    if (l$lower != lOther$lower) {
      return false;
    }
    final l$upper = upper;
    final lOther$upper = other.upper;
    if (l$upper != lOther$upper) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$lower = lower;
    final l$upper = upper;
    return Object.hashAll([
      l$lower,
      l$upper,
    ]);
  }
}

abstract class CopyWith$Input$DateFieldComparisonBetween<TRes> {
  factory CopyWith$Input$DateFieldComparisonBetween(
    Input$DateFieldComparisonBetween instance,
    TRes Function(Input$DateFieldComparisonBetween) then,
  ) = _CopyWithImpl$Input$DateFieldComparisonBetween;

  factory CopyWith$Input$DateFieldComparisonBetween.stub(TRes res) =
      _CopyWithStubImpl$Input$DateFieldComparisonBetween;

  TRes call({
    DateTime? lower,
    DateTime? upper,
  });
}

class _CopyWithImpl$Input$DateFieldComparisonBetween<TRes>
    implements CopyWith$Input$DateFieldComparisonBetween<TRes> {
  _CopyWithImpl$Input$DateFieldComparisonBetween(
    this._instance,
    this._then,
  );

  final Input$DateFieldComparisonBetween _instance;

  final TRes Function(Input$DateFieldComparisonBetween) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? lower = _undefined,
    Object? upper = _undefined,
  }) =>
      _then(Input$DateFieldComparisonBetween._({
        ..._instance._$data,
        if (lower != _undefined && lower != null) 'lower': (lower as DateTime),
        if (upper != _undefined && upper != null) 'upper': (upper as DateTime),
      }));
}

class _CopyWithStubImpl$Input$DateFieldComparisonBetween<TRes>
    implements CopyWith$Input$DateFieldComparisonBetween<TRes> {
  _CopyWithStubImpl$Input$DateFieldComparisonBetween(this._res);

  TRes _res;

  call({
    DateTime? lower,
    DateTime? upper,
  }) =>
      _res;
}

class Input$IntFieldComparison {
  factory Input$IntFieldComparison({
    bool? $is,
    bool? isNot,
    int? eq,
    int? neq,
    int? gt,
    int? gte,
    int? lt,
    int? lte,
    List<int>? $in,
    List<int>? notIn,
    Input$IntFieldComparisonBetween? between,
    Input$IntFieldComparisonBetween? notBetween,
  }) =>
      Input$IntFieldComparison._({
        if ($is != null) r'is': $is,
        if (isNot != null) r'isNot': isNot,
        if (eq != null) r'eq': eq,
        if (neq != null) r'neq': neq,
        if (gt != null) r'gt': gt,
        if (gte != null) r'gte': gte,
        if (lt != null) r'lt': lt,
        if (lte != null) r'lte': lte,
        if ($in != null) r'in': $in,
        if (notIn != null) r'notIn': notIn,
        if (between != null) r'between': between,
        if (notBetween != null) r'notBetween': notBetween,
      });

  Input$IntFieldComparison._(this._$data);

  factory Input$IntFieldComparison.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('is')) {
      final l$$is = data['is'];
      result$data['is'] = (l$$is as bool?);
    }
    if (data.containsKey('isNot')) {
      final l$isNot = data['isNot'];
      result$data['isNot'] = (l$isNot as bool?);
    }
    if (data.containsKey('eq')) {
      final l$eq = data['eq'];
      result$data['eq'] = (l$eq as int?);
    }
    if (data.containsKey('neq')) {
      final l$neq = data['neq'];
      result$data['neq'] = (l$neq as int?);
    }
    if (data.containsKey('gt')) {
      final l$gt = data['gt'];
      result$data['gt'] = (l$gt as int?);
    }
    if (data.containsKey('gte')) {
      final l$gte = data['gte'];
      result$data['gte'] = (l$gte as int?);
    }
    if (data.containsKey('lt')) {
      final l$lt = data['lt'];
      result$data['lt'] = (l$lt as int?);
    }
    if (data.containsKey('lte')) {
      final l$lte = data['lte'];
      result$data['lte'] = (l$lte as int?);
    }
    if (data.containsKey('in')) {
      final l$$in = data['in'];
      result$data['in'] =
          (l$$in as List<dynamic>?)?.map((e) => (e as int)).toList();
    }
    if (data.containsKey('notIn')) {
      final l$notIn = data['notIn'];
      result$data['notIn'] =
          (l$notIn as List<dynamic>?)?.map((e) => (e as int)).toList();
    }
    if (data.containsKey('between')) {
      final l$between = data['between'];
      result$data['between'] = l$between == null
          ? null
          : Input$IntFieldComparisonBetween.fromJson(
              (l$between as Map<String, dynamic>));
    }
    if (data.containsKey('notBetween')) {
      final l$notBetween = data['notBetween'];
      result$data['notBetween'] = l$notBetween == null
          ? null
          : Input$IntFieldComparisonBetween.fromJson(
              (l$notBetween as Map<String, dynamic>));
    }
    return Input$IntFieldComparison._(result$data);
  }

  Map<String, dynamic> _$data;

  bool? get $is => (_$data['is'] as bool?);
  bool? get isNot => (_$data['isNot'] as bool?);
  int? get eq => (_$data['eq'] as int?);
  int? get neq => (_$data['neq'] as int?);
  int? get gt => (_$data['gt'] as int?);
  int? get gte => (_$data['gte'] as int?);
  int? get lt => (_$data['lt'] as int?);
  int? get lte => (_$data['lte'] as int?);
  List<int>? get $in => (_$data['in'] as List<int>?);
  List<int>? get notIn => (_$data['notIn'] as List<int>?);
  Input$IntFieldComparisonBetween? get between =>
      (_$data['between'] as Input$IntFieldComparisonBetween?);
  Input$IntFieldComparisonBetween? get notBetween =>
      (_$data['notBetween'] as Input$IntFieldComparisonBetween?);
  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('is')) {
      final l$$is = $is;
      result$data['is'] = l$$is;
    }
    if (_$data.containsKey('isNot')) {
      final l$isNot = isNot;
      result$data['isNot'] = l$isNot;
    }
    if (_$data.containsKey('eq')) {
      final l$eq = eq;
      result$data['eq'] = l$eq;
    }
    if (_$data.containsKey('neq')) {
      final l$neq = neq;
      result$data['neq'] = l$neq;
    }
    if (_$data.containsKey('gt')) {
      final l$gt = gt;
      result$data['gt'] = l$gt;
    }
    if (_$data.containsKey('gte')) {
      final l$gte = gte;
      result$data['gte'] = l$gte;
    }
    if (_$data.containsKey('lt')) {
      final l$lt = lt;
      result$data['lt'] = l$lt;
    }
    if (_$data.containsKey('lte')) {
      final l$lte = lte;
      result$data['lte'] = l$lte;
    }
    if (_$data.containsKey('in')) {
      final l$$in = $in;
      result$data['in'] = l$$in?.map((e) => e).toList();
    }
    if (_$data.containsKey('notIn')) {
      final l$notIn = notIn;
      result$data['notIn'] = l$notIn?.map((e) => e).toList();
    }
    if (_$data.containsKey('between')) {
      final l$between = between;
      result$data['between'] = l$between?.toJson();
    }
    if (_$data.containsKey('notBetween')) {
      final l$notBetween = notBetween;
      result$data['notBetween'] = l$notBetween?.toJson();
    }
    return result$data;
  }

  CopyWith$Input$IntFieldComparison<Input$IntFieldComparison> get copyWith =>
      CopyWith$Input$IntFieldComparison(
        this,
        (i) => i,
      );
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Input$IntFieldComparison) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$$is = $is;
    final lOther$$is = other.$is;
    if (_$data.containsKey('is') != other._$data.containsKey('is')) {
      return false;
    }
    if (l$$is != lOther$$is) {
      return false;
    }
    final l$isNot = isNot;
    final lOther$isNot = other.isNot;
    if (_$data.containsKey('isNot') != other._$data.containsKey('isNot')) {
      return false;
    }
    if (l$isNot != lOther$isNot) {
      return false;
    }
    final l$eq = eq;
    final lOther$eq = other.eq;
    if (_$data.containsKey('eq') != other._$data.containsKey('eq')) {
      return false;
    }
    if (l$eq != lOther$eq) {
      return false;
    }
    final l$neq = neq;
    final lOther$neq = other.neq;
    if (_$data.containsKey('neq') != other._$data.containsKey('neq')) {
      return false;
    }
    if (l$neq != lOther$neq) {
      return false;
    }
    final l$gt = gt;
    final lOther$gt = other.gt;
    if (_$data.containsKey('gt') != other._$data.containsKey('gt')) {
      return false;
    }
    if (l$gt != lOther$gt) {
      return false;
    }
    final l$gte = gte;
    final lOther$gte = other.gte;
    if (_$data.containsKey('gte') != other._$data.containsKey('gte')) {
      return false;
    }
    if (l$gte != lOther$gte) {
      return false;
    }
    final l$lt = lt;
    final lOther$lt = other.lt;
    if (_$data.containsKey('lt') != other._$data.containsKey('lt')) {
      return false;
    }
    if (l$lt != lOther$lt) {
      return false;
    }
    final l$lte = lte;
    final lOther$lte = other.lte;
    if (_$data.containsKey('lte') != other._$data.containsKey('lte')) {
      return false;
    }
    if (l$lte != lOther$lte) {
      return false;
    }
    final l$$in = $in;
    final lOther$$in = other.$in;
    if (_$data.containsKey('in') != other._$data.containsKey('in')) {
      return false;
    }
    if (l$$in != null && lOther$$in != null) {
      if (l$$in.length != lOther$$in.length) {
        return false;
      }
      for (int i = 0; i < l$$in.length; i++) {
        final l$$in$entry = l$$in[i];
        final lOther$$in$entry = lOther$$in[i];
        if (l$$in$entry != lOther$$in$entry) {
          return false;
        }
      }
    } else if (l$$in != lOther$$in) {
      return false;
    }
    final l$notIn = notIn;
    final lOther$notIn = other.notIn;
    if (_$data.containsKey('notIn') != other._$data.containsKey('notIn')) {
      return false;
    }
    if (l$notIn != null && lOther$notIn != null) {
      if (l$notIn.length != lOther$notIn.length) {
        return false;
      }
      for (int i = 0; i < l$notIn.length; i++) {
        final l$notIn$entry = l$notIn[i];
        final lOther$notIn$entry = lOther$notIn[i];
        if (l$notIn$entry != lOther$notIn$entry) {
          return false;
        }
      }
    } else if (l$notIn != lOther$notIn) {
      return false;
    }
    final l$between = between;
    final lOther$between = other.between;
    if (_$data.containsKey('between') != other._$data.containsKey('between')) {
      return false;
    }
    if (l$between != lOther$between) {
      return false;
    }
    final l$notBetween = notBetween;
    final lOther$notBetween = other.notBetween;
    if (_$data.containsKey('notBetween') !=
        other._$data.containsKey('notBetween')) {
      return false;
    }
    if (l$notBetween != lOther$notBetween) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$$is = $is;
    final l$isNot = isNot;
    final l$eq = eq;
    final l$neq = neq;
    final l$gt = gt;
    final l$gte = gte;
    final l$lt = lt;
    final l$lte = lte;
    final l$$in = $in;
    final l$notIn = notIn;
    final l$between = between;
    final l$notBetween = notBetween;
    return Object.hashAll([
      _$data.containsKey('is') ? l$$is : const {},
      _$data.containsKey('isNot') ? l$isNot : const {},
      _$data.containsKey('eq') ? l$eq : const {},
      _$data.containsKey('neq') ? l$neq : const {},
      _$data.containsKey('gt') ? l$gt : const {},
      _$data.containsKey('gte') ? l$gte : const {},
      _$data.containsKey('lt') ? l$lt : const {},
      _$data.containsKey('lte') ? l$lte : const {},
      _$data.containsKey('in')
          ? l$$in == null
              ? null
              : Object.hashAll(l$$in.map((v) => v))
          : const {},
      _$data.containsKey('notIn')
          ? l$notIn == null
              ? null
              : Object.hashAll(l$notIn.map((v) => v))
          : const {},
      _$data.containsKey('between') ? l$between : const {},
      _$data.containsKey('notBetween') ? l$notBetween : const {},
    ]);
  }
}

abstract class CopyWith$Input$IntFieldComparison<TRes> {
  factory CopyWith$Input$IntFieldComparison(
    Input$IntFieldComparison instance,
    TRes Function(Input$IntFieldComparison) then,
  ) = _CopyWithImpl$Input$IntFieldComparison;

  factory CopyWith$Input$IntFieldComparison.stub(TRes res) =
      _CopyWithStubImpl$Input$IntFieldComparison;

  TRes call({
    bool? $is,
    bool? isNot,
    int? eq,
    int? neq,
    int? gt,
    int? gte,
    int? lt,
    int? lte,
    List<int>? $in,
    List<int>? notIn,
    Input$IntFieldComparisonBetween? between,
    Input$IntFieldComparisonBetween? notBetween,
  });
  CopyWith$Input$IntFieldComparisonBetween<TRes> get between;
  CopyWith$Input$IntFieldComparisonBetween<TRes> get notBetween;
}

class _CopyWithImpl$Input$IntFieldComparison<TRes>
    implements CopyWith$Input$IntFieldComparison<TRes> {
  _CopyWithImpl$Input$IntFieldComparison(
    this._instance,
    this._then,
  );

  final Input$IntFieldComparison _instance;

  final TRes Function(Input$IntFieldComparison) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? $is = _undefined,
    Object? isNot = _undefined,
    Object? eq = _undefined,
    Object? neq = _undefined,
    Object? gt = _undefined,
    Object? gte = _undefined,
    Object? lt = _undefined,
    Object? lte = _undefined,
    Object? $in = _undefined,
    Object? notIn = _undefined,
    Object? between = _undefined,
    Object? notBetween = _undefined,
  }) =>
      _then(Input$IntFieldComparison._({
        ..._instance._$data,
        if ($is != _undefined) 'is': ($is as bool?),
        if (isNot != _undefined) 'isNot': (isNot as bool?),
        if (eq != _undefined) 'eq': (eq as int?),
        if (neq != _undefined) 'neq': (neq as int?),
        if (gt != _undefined) 'gt': (gt as int?),
        if (gte != _undefined) 'gte': (gte as int?),
        if (lt != _undefined) 'lt': (lt as int?),
        if (lte != _undefined) 'lte': (lte as int?),
        if ($in != _undefined) 'in': ($in as List<int>?),
        if (notIn != _undefined) 'notIn': (notIn as List<int>?),
        if (between != _undefined)
          'between': (between as Input$IntFieldComparisonBetween?),
        if (notBetween != _undefined)
          'notBetween': (notBetween as Input$IntFieldComparisonBetween?),
      }));
  CopyWith$Input$IntFieldComparisonBetween<TRes> get between {
    final local$between = _instance.between;
    return local$between == null
        ? CopyWith$Input$IntFieldComparisonBetween.stub(_then(_instance))
        : CopyWith$Input$IntFieldComparisonBetween(
            local$between, (e) => call(between: e));
  }

  CopyWith$Input$IntFieldComparisonBetween<TRes> get notBetween {
    final local$notBetween = _instance.notBetween;
    return local$notBetween == null
        ? CopyWith$Input$IntFieldComparisonBetween.stub(_then(_instance))
        : CopyWith$Input$IntFieldComparisonBetween(
            local$notBetween, (e) => call(notBetween: e));
  }
}

class _CopyWithStubImpl$Input$IntFieldComparison<TRes>
    implements CopyWith$Input$IntFieldComparison<TRes> {
  _CopyWithStubImpl$Input$IntFieldComparison(this._res);

  TRes _res;

  call({
    bool? $is,
    bool? isNot,
    int? eq,
    int? neq,
    int? gt,
    int? gte,
    int? lt,
    int? lte,
    List<int>? $in,
    List<int>? notIn,
    Input$IntFieldComparisonBetween? between,
    Input$IntFieldComparisonBetween? notBetween,
  }) =>
      _res;
  CopyWith$Input$IntFieldComparisonBetween<TRes> get between =>
      CopyWith$Input$IntFieldComparisonBetween.stub(_res);
  CopyWith$Input$IntFieldComparisonBetween<TRes> get notBetween =>
      CopyWith$Input$IntFieldComparisonBetween.stub(_res);
}

class Input$IntFieldComparisonBetween {
  factory Input$IntFieldComparisonBetween({
    required int lower,
    required int upper,
  }) =>
      Input$IntFieldComparisonBetween._({
        r'lower': lower,
        r'upper': upper,
      });

  Input$IntFieldComparisonBetween._(this._$data);

  factory Input$IntFieldComparisonBetween.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$lower = data['lower'];
    result$data['lower'] = (l$lower as int);
    final l$upper = data['upper'];
    result$data['upper'] = (l$upper as int);
    return Input$IntFieldComparisonBetween._(result$data);
  }

  Map<String, dynamic> _$data;

  int get lower => (_$data['lower'] as int);
  int get upper => (_$data['upper'] as int);
  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$lower = lower;
    result$data['lower'] = l$lower;
    final l$upper = upper;
    result$data['upper'] = l$upper;
    return result$data;
  }

  CopyWith$Input$IntFieldComparisonBetween<Input$IntFieldComparisonBetween>
      get copyWith => CopyWith$Input$IntFieldComparisonBetween(
            this,
            (i) => i,
          );
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Input$IntFieldComparisonBetween) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$lower = lower;
    final lOther$lower = other.lower;
    if (l$lower != lOther$lower) {
      return false;
    }
    final l$upper = upper;
    final lOther$upper = other.upper;
    if (l$upper != lOther$upper) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$lower = lower;
    final l$upper = upper;
    return Object.hashAll([
      l$lower,
      l$upper,
    ]);
  }
}

abstract class CopyWith$Input$IntFieldComparisonBetween<TRes> {
  factory CopyWith$Input$IntFieldComparisonBetween(
    Input$IntFieldComparisonBetween instance,
    TRes Function(Input$IntFieldComparisonBetween) then,
  ) = _CopyWithImpl$Input$IntFieldComparisonBetween;

  factory CopyWith$Input$IntFieldComparisonBetween.stub(TRes res) =
      _CopyWithStubImpl$Input$IntFieldComparisonBetween;

  TRes call({
    int? lower,
    int? upper,
  });
}

class _CopyWithImpl$Input$IntFieldComparisonBetween<TRes>
    implements CopyWith$Input$IntFieldComparisonBetween<TRes> {
  _CopyWithImpl$Input$IntFieldComparisonBetween(
    this._instance,
    this._then,
  );

  final Input$IntFieldComparisonBetween _instance;

  final TRes Function(Input$IntFieldComparisonBetween) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? lower = _undefined,
    Object? upper = _undefined,
  }) =>
      _then(Input$IntFieldComparisonBetween._({
        ..._instance._$data,
        if (lower != _undefined && lower != null) 'lower': (lower as int),
        if (upper != _undefined && upper != null) 'upper': (upper as int),
      }));
}

class _CopyWithStubImpl$Input$IntFieldComparisonBetween<TRes>
    implements CopyWith$Input$IntFieldComparisonBetween<TRes> {
  _CopyWithStubImpl$Input$IntFieldComparisonBetween(this._res);

  TRes _res;

  call({
    int? lower,
    int? upper,
  }) =>
      _res;
}

class Input$NumberFieldComparison {
  factory Input$NumberFieldComparison({
    bool? $is,
    bool? isNot,
    double? eq,
    double? neq,
    double? gt,
    double? gte,
    double? lt,
    double? lte,
    List<double>? $in,
    List<double>? notIn,
    Input$NumberFieldComparisonBetween? between,
    Input$NumberFieldComparisonBetween? notBetween,
  }) =>
      Input$NumberFieldComparison._({
        if ($is != null) r'is': $is,
        if (isNot != null) r'isNot': isNot,
        if (eq != null) r'eq': eq,
        if (neq != null) r'neq': neq,
        if (gt != null) r'gt': gt,
        if (gte != null) r'gte': gte,
        if (lt != null) r'lt': lt,
        if (lte != null) r'lte': lte,
        if ($in != null) r'in': $in,
        if (notIn != null) r'notIn': notIn,
        if (between != null) r'between': between,
        if (notBetween != null) r'notBetween': notBetween,
      });

  Input$NumberFieldComparison._(this._$data);

  factory Input$NumberFieldComparison.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('is')) {
      final l$$is = data['is'];
      result$data['is'] = (l$$is as bool?);
    }
    if (data.containsKey('isNot')) {
      final l$isNot = data['isNot'];
      result$data['isNot'] = (l$isNot as bool?);
    }
    if (data.containsKey('eq')) {
      final l$eq = data['eq'];
      result$data['eq'] = (l$eq as num?)?.toDouble();
    }
    if (data.containsKey('neq')) {
      final l$neq = data['neq'];
      result$data['neq'] = (l$neq as num?)?.toDouble();
    }
    if (data.containsKey('gt')) {
      final l$gt = data['gt'];
      result$data['gt'] = (l$gt as num?)?.toDouble();
    }
    if (data.containsKey('gte')) {
      final l$gte = data['gte'];
      result$data['gte'] = (l$gte as num?)?.toDouble();
    }
    if (data.containsKey('lt')) {
      final l$lt = data['lt'];
      result$data['lt'] = (l$lt as num?)?.toDouble();
    }
    if (data.containsKey('lte')) {
      final l$lte = data['lte'];
      result$data['lte'] = (l$lte as num?)?.toDouble();
    }
    if (data.containsKey('in')) {
      final l$$in = data['in'];
      result$data['in'] =
          (l$$in as List<dynamic>?)?.map((e) => (e as num).toDouble()).toList();
    }
    if (data.containsKey('notIn')) {
      final l$notIn = data['notIn'];
      result$data['notIn'] = (l$notIn as List<dynamic>?)
          ?.map((e) => (e as num).toDouble())
          .toList();
    }
    if (data.containsKey('between')) {
      final l$between = data['between'];
      result$data['between'] = l$between == null
          ? null
          : Input$NumberFieldComparisonBetween.fromJson(
              (l$between as Map<String, dynamic>));
    }
    if (data.containsKey('notBetween')) {
      final l$notBetween = data['notBetween'];
      result$data['notBetween'] = l$notBetween == null
          ? null
          : Input$NumberFieldComparisonBetween.fromJson(
              (l$notBetween as Map<String, dynamic>));
    }
    return Input$NumberFieldComparison._(result$data);
  }

  Map<String, dynamic> _$data;

  bool? get $is => (_$data['is'] as bool?);
  bool? get isNot => (_$data['isNot'] as bool?);
  double? get eq => (_$data['eq'] as double?);
  double? get neq => (_$data['neq'] as double?);
  double? get gt => (_$data['gt'] as double?);
  double? get gte => (_$data['gte'] as double?);
  double? get lt => (_$data['lt'] as double?);
  double? get lte => (_$data['lte'] as double?);
  List<double>? get $in => (_$data['in'] as List<double>?);
  List<double>? get notIn => (_$data['notIn'] as List<double>?);
  Input$NumberFieldComparisonBetween? get between =>
      (_$data['between'] as Input$NumberFieldComparisonBetween?);
  Input$NumberFieldComparisonBetween? get notBetween =>
      (_$data['notBetween'] as Input$NumberFieldComparisonBetween?);
  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('is')) {
      final l$$is = $is;
      result$data['is'] = l$$is;
    }
    if (_$data.containsKey('isNot')) {
      final l$isNot = isNot;
      result$data['isNot'] = l$isNot;
    }
    if (_$data.containsKey('eq')) {
      final l$eq = eq;
      result$data['eq'] = l$eq;
    }
    if (_$data.containsKey('neq')) {
      final l$neq = neq;
      result$data['neq'] = l$neq;
    }
    if (_$data.containsKey('gt')) {
      final l$gt = gt;
      result$data['gt'] = l$gt;
    }
    if (_$data.containsKey('gte')) {
      final l$gte = gte;
      result$data['gte'] = l$gte;
    }
    if (_$data.containsKey('lt')) {
      final l$lt = lt;
      result$data['lt'] = l$lt;
    }
    if (_$data.containsKey('lte')) {
      final l$lte = lte;
      result$data['lte'] = l$lte;
    }
    if (_$data.containsKey('in')) {
      final l$$in = $in;
      result$data['in'] = l$$in?.map((e) => e).toList();
    }
    if (_$data.containsKey('notIn')) {
      final l$notIn = notIn;
      result$data['notIn'] = l$notIn?.map((e) => e).toList();
    }
    if (_$data.containsKey('between')) {
      final l$between = between;
      result$data['between'] = l$between?.toJson();
    }
    if (_$data.containsKey('notBetween')) {
      final l$notBetween = notBetween;
      result$data['notBetween'] = l$notBetween?.toJson();
    }
    return result$data;
  }

  CopyWith$Input$NumberFieldComparison<Input$NumberFieldComparison>
      get copyWith => CopyWith$Input$NumberFieldComparison(
            this,
            (i) => i,
          );
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Input$NumberFieldComparison) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$$is = $is;
    final lOther$$is = other.$is;
    if (_$data.containsKey('is') != other._$data.containsKey('is')) {
      return false;
    }
    if (l$$is != lOther$$is) {
      return false;
    }
    final l$isNot = isNot;
    final lOther$isNot = other.isNot;
    if (_$data.containsKey('isNot') != other._$data.containsKey('isNot')) {
      return false;
    }
    if (l$isNot != lOther$isNot) {
      return false;
    }
    final l$eq = eq;
    final lOther$eq = other.eq;
    if (_$data.containsKey('eq') != other._$data.containsKey('eq')) {
      return false;
    }
    if (l$eq != lOther$eq) {
      return false;
    }
    final l$neq = neq;
    final lOther$neq = other.neq;
    if (_$data.containsKey('neq') != other._$data.containsKey('neq')) {
      return false;
    }
    if (l$neq != lOther$neq) {
      return false;
    }
    final l$gt = gt;
    final lOther$gt = other.gt;
    if (_$data.containsKey('gt') != other._$data.containsKey('gt')) {
      return false;
    }
    if (l$gt != lOther$gt) {
      return false;
    }
    final l$gte = gte;
    final lOther$gte = other.gte;
    if (_$data.containsKey('gte') != other._$data.containsKey('gte')) {
      return false;
    }
    if (l$gte != lOther$gte) {
      return false;
    }
    final l$lt = lt;
    final lOther$lt = other.lt;
    if (_$data.containsKey('lt') != other._$data.containsKey('lt')) {
      return false;
    }
    if (l$lt != lOther$lt) {
      return false;
    }
    final l$lte = lte;
    final lOther$lte = other.lte;
    if (_$data.containsKey('lte') != other._$data.containsKey('lte')) {
      return false;
    }
    if (l$lte != lOther$lte) {
      return false;
    }
    final l$$in = $in;
    final lOther$$in = other.$in;
    if (_$data.containsKey('in') != other._$data.containsKey('in')) {
      return false;
    }
    if (l$$in != null && lOther$$in != null) {
      if (l$$in.length != lOther$$in.length) {
        return false;
      }
      for (int i = 0; i < l$$in.length; i++) {
        final l$$in$entry = l$$in[i];
        final lOther$$in$entry = lOther$$in[i];
        if (l$$in$entry != lOther$$in$entry) {
          return false;
        }
      }
    } else if (l$$in != lOther$$in) {
      return false;
    }
    final l$notIn = notIn;
    final lOther$notIn = other.notIn;
    if (_$data.containsKey('notIn') != other._$data.containsKey('notIn')) {
      return false;
    }
    if (l$notIn != null && lOther$notIn != null) {
      if (l$notIn.length != lOther$notIn.length) {
        return false;
      }
      for (int i = 0; i < l$notIn.length; i++) {
        final l$notIn$entry = l$notIn[i];
        final lOther$notIn$entry = lOther$notIn[i];
        if (l$notIn$entry != lOther$notIn$entry) {
          return false;
        }
      }
    } else if (l$notIn != lOther$notIn) {
      return false;
    }
    final l$between = between;
    final lOther$between = other.between;
    if (_$data.containsKey('between') != other._$data.containsKey('between')) {
      return false;
    }
    if (l$between != lOther$between) {
      return false;
    }
    final l$notBetween = notBetween;
    final lOther$notBetween = other.notBetween;
    if (_$data.containsKey('notBetween') !=
        other._$data.containsKey('notBetween')) {
      return false;
    }
    if (l$notBetween != lOther$notBetween) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$$is = $is;
    final l$isNot = isNot;
    final l$eq = eq;
    final l$neq = neq;
    final l$gt = gt;
    final l$gte = gte;
    final l$lt = lt;
    final l$lte = lte;
    final l$$in = $in;
    final l$notIn = notIn;
    final l$between = between;
    final l$notBetween = notBetween;
    return Object.hashAll([
      _$data.containsKey('is') ? l$$is : const {},
      _$data.containsKey('isNot') ? l$isNot : const {},
      _$data.containsKey('eq') ? l$eq : const {},
      _$data.containsKey('neq') ? l$neq : const {},
      _$data.containsKey('gt') ? l$gt : const {},
      _$data.containsKey('gte') ? l$gte : const {},
      _$data.containsKey('lt') ? l$lt : const {},
      _$data.containsKey('lte') ? l$lte : const {},
      _$data.containsKey('in')
          ? l$$in == null
              ? null
              : Object.hashAll(l$$in.map((v) => v))
          : const {},
      _$data.containsKey('notIn')
          ? l$notIn == null
              ? null
              : Object.hashAll(l$notIn.map((v) => v))
          : const {},
      _$data.containsKey('between') ? l$between : const {},
      _$data.containsKey('notBetween') ? l$notBetween : const {},
    ]);
  }
}

abstract class CopyWith$Input$NumberFieldComparison<TRes> {
  factory CopyWith$Input$NumberFieldComparison(
    Input$NumberFieldComparison instance,
    TRes Function(Input$NumberFieldComparison) then,
  ) = _CopyWithImpl$Input$NumberFieldComparison;

  factory CopyWith$Input$NumberFieldComparison.stub(TRes res) =
      _CopyWithStubImpl$Input$NumberFieldComparison;

  TRes call({
    bool? $is,
    bool? isNot,
    double? eq,
    double? neq,
    double? gt,
    double? gte,
    double? lt,
    double? lte,
    List<double>? $in,
    List<double>? notIn,
    Input$NumberFieldComparisonBetween? between,
    Input$NumberFieldComparisonBetween? notBetween,
  });
  CopyWith$Input$NumberFieldComparisonBetween<TRes> get between;
  CopyWith$Input$NumberFieldComparisonBetween<TRes> get notBetween;
}

class _CopyWithImpl$Input$NumberFieldComparison<TRes>
    implements CopyWith$Input$NumberFieldComparison<TRes> {
  _CopyWithImpl$Input$NumberFieldComparison(
    this._instance,
    this._then,
  );

  final Input$NumberFieldComparison _instance;

  final TRes Function(Input$NumberFieldComparison) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? $is = _undefined,
    Object? isNot = _undefined,
    Object? eq = _undefined,
    Object? neq = _undefined,
    Object? gt = _undefined,
    Object? gte = _undefined,
    Object? lt = _undefined,
    Object? lte = _undefined,
    Object? $in = _undefined,
    Object? notIn = _undefined,
    Object? between = _undefined,
    Object? notBetween = _undefined,
  }) =>
      _then(Input$NumberFieldComparison._({
        ..._instance._$data,
        if ($is != _undefined) 'is': ($is as bool?),
        if (isNot != _undefined) 'isNot': (isNot as bool?),
        if (eq != _undefined) 'eq': (eq as double?),
        if (neq != _undefined) 'neq': (neq as double?),
        if (gt != _undefined) 'gt': (gt as double?),
        if (gte != _undefined) 'gte': (gte as double?),
        if (lt != _undefined) 'lt': (lt as double?),
        if (lte != _undefined) 'lte': (lte as double?),
        if ($in != _undefined) 'in': ($in as List<double>?),
        if (notIn != _undefined) 'notIn': (notIn as List<double>?),
        if (between != _undefined)
          'between': (between as Input$NumberFieldComparisonBetween?),
        if (notBetween != _undefined)
          'notBetween': (notBetween as Input$NumberFieldComparisonBetween?),
      }));
  CopyWith$Input$NumberFieldComparisonBetween<TRes> get between {
    final local$between = _instance.between;
    return local$between == null
        ? CopyWith$Input$NumberFieldComparisonBetween.stub(_then(_instance))
        : CopyWith$Input$NumberFieldComparisonBetween(
            local$between, (e) => call(between: e));
  }

  CopyWith$Input$NumberFieldComparisonBetween<TRes> get notBetween {
    final local$notBetween = _instance.notBetween;
    return local$notBetween == null
        ? CopyWith$Input$NumberFieldComparisonBetween.stub(_then(_instance))
        : CopyWith$Input$NumberFieldComparisonBetween(
            local$notBetween, (e) => call(notBetween: e));
  }
}

class _CopyWithStubImpl$Input$NumberFieldComparison<TRes>
    implements CopyWith$Input$NumberFieldComparison<TRes> {
  _CopyWithStubImpl$Input$NumberFieldComparison(this._res);

  TRes _res;

  call({
    bool? $is,
    bool? isNot,
    double? eq,
    double? neq,
    double? gt,
    double? gte,
    double? lt,
    double? lte,
    List<double>? $in,
    List<double>? notIn,
    Input$NumberFieldComparisonBetween? between,
    Input$NumberFieldComparisonBetween? notBetween,
  }) =>
      _res;
  CopyWith$Input$NumberFieldComparisonBetween<TRes> get between =>
      CopyWith$Input$NumberFieldComparisonBetween.stub(_res);
  CopyWith$Input$NumberFieldComparisonBetween<TRes> get notBetween =>
      CopyWith$Input$NumberFieldComparisonBetween.stub(_res);
}

class Input$NumberFieldComparisonBetween {
  factory Input$NumberFieldComparisonBetween({
    required double lower,
    required double upper,
  }) =>
      Input$NumberFieldComparisonBetween._({
        r'lower': lower,
        r'upper': upper,
      });

  Input$NumberFieldComparisonBetween._(this._$data);

  factory Input$NumberFieldComparisonBetween.fromJson(
      Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$lower = data['lower'];
    result$data['lower'] = (l$lower as num).toDouble();
    final l$upper = data['upper'];
    result$data['upper'] = (l$upper as num).toDouble();
    return Input$NumberFieldComparisonBetween._(result$data);
  }

  Map<String, dynamic> _$data;

  double get lower => (_$data['lower'] as double);
  double get upper => (_$data['upper'] as double);
  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$lower = lower;
    result$data['lower'] = l$lower;
    final l$upper = upper;
    result$data['upper'] = l$upper;
    return result$data;
  }

  CopyWith$Input$NumberFieldComparisonBetween<
          Input$NumberFieldComparisonBetween>
      get copyWith => CopyWith$Input$NumberFieldComparisonBetween(
            this,
            (i) => i,
          );
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Input$NumberFieldComparisonBetween) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$lower = lower;
    final lOther$lower = other.lower;
    if (l$lower != lOther$lower) {
      return false;
    }
    final l$upper = upper;
    final lOther$upper = other.upper;
    if (l$upper != lOther$upper) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$lower = lower;
    final l$upper = upper;
    return Object.hashAll([
      l$lower,
      l$upper,
    ]);
  }
}

abstract class CopyWith$Input$NumberFieldComparisonBetween<TRes> {
  factory CopyWith$Input$NumberFieldComparisonBetween(
    Input$NumberFieldComparisonBetween instance,
    TRes Function(Input$NumberFieldComparisonBetween) then,
  ) = _CopyWithImpl$Input$NumberFieldComparisonBetween;

  factory CopyWith$Input$NumberFieldComparisonBetween.stub(TRes res) =
      _CopyWithStubImpl$Input$NumberFieldComparisonBetween;

  TRes call({
    double? lower,
    double? upper,
  });
}

class _CopyWithImpl$Input$NumberFieldComparisonBetween<TRes>
    implements CopyWith$Input$NumberFieldComparisonBetween<TRes> {
  _CopyWithImpl$Input$NumberFieldComparisonBetween(
    this._instance,
    this._then,
  );

  final Input$NumberFieldComparisonBetween _instance;

  final TRes Function(Input$NumberFieldComparisonBetween) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? lower = _undefined,
    Object? upper = _undefined,
  }) =>
      _then(Input$NumberFieldComparisonBetween._({
        ..._instance._$data,
        if (lower != _undefined && lower != null) 'lower': (lower as double),
        if (upper != _undefined && upper != null) 'upper': (upper as double),
      }));
}

class _CopyWithStubImpl$Input$NumberFieldComparisonBetween<TRes>
    implements CopyWith$Input$NumberFieldComparisonBetween<TRes> {
  _CopyWithStubImpl$Input$NumberFieldComparisonBetween(this._res);

  TRes _res;

  call({
    double? lower,
    double? upper,
  }) =>
      _res;
}

class Input$MediaFilter {
  factory Input$MediaFilter({
    List<Input$MediaFilter>? and,
    List<Input$MediaFilter>? or,
    Input$IDFilterComparison? id,
  }) =>
      Input$MediaFilter._({
        if (and != null) r'and': and,
        if (or != null) r'or': or,
        if (id != null) r'id': id,
      });

  Input$MediaFilter._(this._$data);

  factory Input$MediaFilter.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('and')) {
      final l$and = data['and'];
      result$data['and'] = (l$and as List<dynamic>?)
          ?.map((e) => Input$MediaFilter.fromJson((e as Map<String, dynamic>)))
          .toList();
    }
    if (data.containsKey('or')) {
      final l$or = data['or'];
      result$data['or'] = (l$or as List<dynamic>?)
          ?.map((e) => Input$MediaFilter.fromJson((e as Map<String, dynamic>)))
          .toList();
    }
    if (data.containsKey('id')) {
      final l$id = data['id'];
      result$data['id'] = l$id == null
          ? null
          : Input$IDFilterComparison.fromJson((l$id as Map<String, dynamic>));
    }
    return Input$MediaFilter._(result$data);
  }

  Map<String, dynamic> _$data;

  List<Input$MediaFilter>? get and =>
      (_$data['and'] as List<Input$MediaFilter>?);
  List<Input$MediaFilter>? get or => (_$data['or'] as List<Input$MediaFilter>?);
  Input$IDFilterComparison? get id =>
      (_$data['id'] as Input$IDFilterComparison?);
  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('and')) {
      final l$and = and;
      result$data['and'] = l$and?.map((e) => e.toJson()).toList();
    }
    if (_$data.containsKey('or')) {
      final l$or = or;
      result$data['or'] = l$or?.map((e) => e.toJson()).toList();
    }
    if (_$data.containsKey('id')) {
      final l$id = id;
      result$data['id'] = l$id?.toJson();
    }
    return result$data;
  }

  CopyWith$Input$MediaFilter<Input$MediaFilter> get copyWith =>
      CopyWith$Input$MediaFilter(
        this,
        (i) => i,
      );
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Input$MediaFilter) || runtimeType != other.runtimeType) {
      return false;
    }
    final l$and = and;
    final lOther$and = other.and;
    if (_$data.containsKey('and') != other._$data.containsKey('and')) {
      return false;
    }
    if (l$and != null && lOther$and != null) {
      if (l$and.length != lOther$and.length) {
        return false;
      }
      for (int i = 0; i < l$and.length; i++) {
        final l$and$entry = l$and[i];
        final lOther$and$entry = lOther$and[i];
        if (l$and$entry != lOther$and$entry) {
          return false;
        }
      }
    } else if (l$and != lOther$and) {
      return false;
    }
    final l$or = or;
    final lOther$or = other.or;
    if (_$data.containsKey('or') != other._$data.containsKey('or')) {
      return false;
    }
    if (l$or != null && lOther$or != null) {
      if (l$or.length != lOther$or.length) {
        return false;
      }
      for (int i = 0; i < l$or.length; i++) {
        final l$or$entry = l$or[i];
        final lOther$or$entry = lOther$or[i];
        if (l$or$entry != lOther$or$entry) {
          return false;
        }
      }
    } else if (l$or != lOther$or) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (_$data.containsKey('id') != other._$data.containsKey('id')) {
      return false;
    }
    if (l$id != lOther$id) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$and = and;
    final l$or = or;
    final l$id = id;
    return Object.hashAll([
      _$data.containsKey('and')
          ? l$and == null
              ? null
              : Object.hashAll(l$and.map((v) => v))
          : const {},
      _$data.containsKey('or')
          ? l$or == null
              ? null
              : Object.hashAll(l$or.map((v) => v))
          : const {},
      _$data.containsKey('id') ? l$id : const {},
    ]);
  }
}

abstract class CopyWith$Input$MediaFilter<TRes> {
  factory CopyWith$Input$MediaFilter(
    Input$MediaFilter instance,
    TRes Function(Input$MediaFilter) then,
  ) = _CopyWithImpl$Input$MediaFilter;

  factory CopyWith$Input$MediaFilter.stub(TRes res) =
      _CopyWithStubImpl$Input$MediaFilter;

  TRes call({
    List<Input$MediaFilter>? and,
    List<Input$MediaFilter>? or,
    Input$IDFilterComparison? id,
  });
  TRes and(
      Iterable<Input$MediaFilter>? Function(
              Iterable<CopyWith$Input$MediaFilter<Input$MediaFilter>>?)
          _fn);
  TRes or(
      Iterable<Input$MediaFilter>? Function(
              Iterable<CopyWith$Input$MediaFilter<Input$MediaFilter>>?)
          _fn);
  CopyWith$Input$IDFilterComparison<TRes> get id;
}

class _CopyWithImpl$Input$MediaFilter<TRes>
    implements CopyWith$Input$MediaFilter<TRes> {
  _CopyWithImpl$Input$MediaFilter(
    this._instance,
    this._then,
  );

  final Input$MediaFilter _instance;

  final TRes Function(Input$MediaFilter) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? and = _undefined,
    Object? or = _undefined,
    Object? id = _undefined,
  }) =>
      _then(Input$MediaFilter._({
        ..._instance._$data,
        if (and != _undefined) 'and': (and as List<Input$MediaFilter>?),
        if (or != _undefined) 'or': (or as List<Input$MediaFilter>?),
        if (id != _undefined) 'id': (id as Input$IDFilterComparison?),
      }));
  TRes and(
          Iterable<Input$MediaFilter>? Function(
                  Iterable<CopyWith$Input$MediaFilter<Input$MediaFilter>>?)
              _fn) =>
      call(
          and: _fn(_instance.and?.map((e) => CopyWith$Input$MediaFilter(
                e,
                (i) => i,
              )))?.toList());
  TRes or(
          Iterable<Input$MediaFilter>? Function(
                  Iterable<CopyWith$Input$MediaFilter<Input$MediaFilter>>?)
              _fn) =>
      call(
          or: _fn(_instance.or?.map((e) => CopyWith$Input$MediaFilter(
                e,
                (i) => i,
              )))?.toList());
  CopyWith$Input$IDFilterComparison<TRes> get id {
    final local$id = _instance.id;
    return local$id == null
        ? CopyWith$Input$IDFilterComparison.stub(_then(_instance))
        : CopyWith$Input$IDFilterComparison(local$id, (e) => call(id: e));
  }
}

class _CopyWithStubImpl$Input$MediaFilter<TRes>
    implements CopyWith$Input$MediaFilter<TRes> {
  _CopyWithStubImpl$Input$MediaFilter(this._res);

  TRes _res;

  call({
    List<Input$MediaFilter>? and,
    List<Input$MediaFilter>? or,
    Input$IDFilterComparison? id,
  }) =>
      _res;
  and(_fn) => _res;
  or(_fn) => _res;
  CopyWith$Input$IDFilterComparison<TRes> get id =>
      CopyWith$Input$IDFilterComparison.stub(_res);
}

class Input$MediaSort {
  factory Input$MediaSort({
    required Enum$MediaSortFields field,
    required Enum$SortDirection direction,
    Enum$SortNulls? nulls,
  }) =>
      Input$MediaSort._({
        r'field': field,
        r'direction': direction,
        if (nulls != null) r'nulls': nulls,
      });

  Input$MediaSort._(this._$data);

  factory Input$MediaSort.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$field = data['field'];
    result$data['field'] = fromJson$Enum$MediaSortFields((l$field as String));
    final l$direction = data['direction'];
    result$data['direction'] =
        fromJson$Enum$SortDirection((l$direction as String));
    if (data.containsKey('nulls')) {
      final l$nulls = data['nulls'];
      result$data['nulls'] =
          l$nulls == null ? null : fromJson$Enum$SortNulls((l$nulls as String));
    }
    return Input$MediaSort._(result$data);
  }

  Map<String, dynamic> _$data;

  Enum$MediaSortFields get field => (_$data['field'] as Enum$MediaSortFields);
  Enum$SortDirection get direction =>
      (_$data['direction'] as Enum$SortDirection);
  Enum$SortNulls? get nulls => (_$data['nulls'] as Enum$SortNulls?);
  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$field = field;
    result$data['field'] = toJson$Enum$MediaSortFields(l$field);
    final l$direction = direction;
    result$data['direction'] = toJson$Enum$SortDirection(l$direction);
    if (_$data.containsKey('nulls')) {
      final l$nulls = nulls;
      result$data['nulls'] =
          l$nulls == null ? null : toJson$Enum$SortNulls(l$nulls);
    }
    return result$data;
  }

  CopyWith$Input$MediaSort<Input$MediaSort> get copyWith =>
      CopyWith$Input$MediaSort(
        this,
        (i) => i,
      );
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Input$MediaSort) || runtimeType != other.runtimeType) {
      return false;
    }
    final l$field = field;
    final lOther$field = other.field;
    if (l$field != lOther$field) {
      return false;
    }
    final l$direction = direction;
    final lOther$direction = other.direction;
    if (l$direction != lOther$direction) {
      return false;
    }
    final l$nulls = nulls;
    final lOther$nulls = other.nulls;
    if (_$data.containsKey('nulls') != other._$data.containsKey('nulls')) {
      return false;
    }
    if (l$nulls != lOther$nulls) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$field = field;
    final l$direction = direction;
    final l$nulls = nulls;
    return Object.hashAll([
      l$field,
      l$direction,
      _$data.containsKey('nulls') ? l$nulls : const {},
    ]);
  }
}

abstract class CopyWith$Input$MediaSort<TRes> {
  factory CopyWith$Input$MediaSort(
    Input$MediaSort instance,
    TRes Function(Input$MediaSort) then,
  ) = _CopyWithImpl$Input$MediaSort;

  factory CopyWith$Input$MediaSort.stub(TRes res) =
      _CopyWithStubImpl$Input$MediaSort;

  TRes call({
    Enum$MediaSortFields? field,
    Enum$SortDirection? direction,
    Enum$SortNulls? nulls,
  });
}

class _CopyWithImpl$Input$MediaSort<TRes>
    implements CopyWith$Input$MediaSort<TRes> {
  _CopyWithImpl$Input$MediaSort(
    this._instance,
    this._then,
  );

  final Input$MediaSort _instance;

  final TRes Function(Input$MediaSort) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? field = _undefined,
    Object? direction = _undefined,
    Object? nulls = _undefined,
  }) =>
      _then(Input$MediaSort._({
        ..._instance._$data,
        if (field != _undefined && field != null)
          'field': (field as Enum$MediaSortFields),
        if (direction != _undefined && direction != null)
          'direction': (direction as Enum$SortDirection),
        if (nulls != _undefined) 'nulls': (nulls as Enum$SortNulls?),
      }));
}

class _CopyWithStubImpl$Input$MediaSort<TRes>
    implements CopyWith$Input$MediaSort<TRes> {
  _CopyWithStubImpl$Input$MediaSort(this._res);

  TRes _res;

  call({
    Enum$MediaSortFields? field,
    Enum$SortDirection? direction,
    Enum$SortNulls? nulls,
  }) =>
      _res;
}

class Input$OffsetPaging {
  factory Input$OffsetPaging({
    int? limit,
    int? offset,
  }) =>
      Input$OffsetPaging._({
        if (limit != null) r'limit': limit,
        if (offset != null) r'offset': offset,
      });

  Input$OffsetPaging._(this._$data);

  factory Input$OffsetPaging.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('limit')) {
      final l$limit = data['limit'];
      result$data['limit'] = (l$limit as int?);
    }
    if (data.containsKey('offset')) {
      final l$offset = data['offset'];
      result$data['offset'] = (l$offset as int?);
    }
    return Input$OffsetPaging._(result$data);
  }

  Map<String, dynamic> _$data;

  int? get limit => (_$data['limit'] as int?);
  int? get offset => (_$data['offset'] as int?);
  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('limit')) {
      final l$limit = limit;
      result$data['limit'] = l$limit;
    }
    if (_$data.containsKey('offset')) {
      final l$offset = offset;
      result$data['offset'] = l$offset;
    }
    return result$data;
  }

  CopyWith$Input$OffsetPaging<Input$OffsetPaging> get copyWith =>
      CopyWith$Input$OffsetPaging(
        this,
        (i) => i,
      );
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Input$OffsetPaging) || runtimeType != other.runtimeType) {
      return false;
    }
    final l$limit = limit;
    final lOther$limit = other.limit;
    if (_$data.containsKey('limit') != other._$data.containsKey('limit')) {
      return false;
    }
    if (l$limit != lOther$limit) {
      return false;
    }
    final l$offset = offset;
    final lOther$offset = other.offset;
    if (_$data.containsKey('offset') != other._$data.containsKey('offset')) {
      return false;
    }
    if (l$offset != lOther$offset) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$limit = limit;
    final l$offset = offset;
    return Object.hashAll([
      _$data.containsKey('limit') ? l$limit : const {},
      _$data.containsKey('offset') ? l$offset : const {},
    ]);
  }
}

abstract class CopyWith$Input$OffsetPaging<TRes> {
  factory CopyWith$Input$OffsetPaging(
    Input$OffsetPaging instance,
    TRes Function(Input$OffsetPaging) then,
  ) = _CopyWithImpl$Input$OffsetPaging;

  factory CopyWith$Input$OffsetPaging.stub(TRes res) =
      _CopyWithStubImpl$Input$OffsetPaging;

  TRes call({
    int? limit,
    int? offset,
  });
}

class _CopyWithImpl$Input$OffsetPaging<TRes>
    implements CopyWith$Input$OffsetPaging<TRes> {
  _CopyWithImpl$Input$OffsetPaging(
    this._instance,
    this._then,
  );

  final Input$OffsetPaging _instance;

  final TRes Function(Input$OffsetPaging) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? limit = _undefined,
    Object? offset = _undefined,
  }) =>
      _then(Input$OffsetPaging._({
        ..._instance._$data,
        if (limit != _undefined) 'limit': (limit as int?),
        if (offset != _undefined) 'offset': (offset as int?),
      }));
}

class _CopyWithStubImpl$Input$OffsetPaging<TRes>
    implements CopyWith$Input$OffsetPaging<TRes> {
  _CopyWithStubImpl$Input$OffsetPaging(this._res);

  TRes _res;

  call({
    int? limit,
    int? offset,
  }) =>
      _res;
}

class Input$OrderFilter {
  factory Input$OrderFilter({
    List<Input$OrderFilter>? and,
    List<Input$OrderFilter>? or,
    Input$IDFilterComparison? id,
    Input$OrderStatusFilterComparison? status,
    Input$DateFieldComparison? createdOn,
    Input$IntFieldComparison? distanceBest,
    Input$NumberFieldComparison? costBest,
    Input$IDFilterComparison? driverId,
  }) =>
      Input$OrderFilter._({
        if (and != null) r'and': and,
        if (or != null) r'or': or,
        if (id != null) r'id': id,
        if (status != null) r'status': status,
        if (createdOn != null) r'createdOn': createdOn,
        if (distanceBest != null) r'distanceBest': distanceBest,
        if (costBest != null) r'costBest': costBest,
        if (driverId != null) r'driverId': driverId,
      });

  Input$OrderFilter._(this._$data);

  factory Input$OrderFilter.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('and')) {
      final l$and = data['and'];
      result$data['and'] = (l$and as List<dynamic>?)
          ?.map((e) => Input$OrderFilter.fromJson((e as Map<String, dynamic>)))
          .toList();
    }
    if (data.containsKey('or')) {
      final l$or = data['or'];
      result$data['or'] = (l$or as List<dynamic>?)
          ?.map((e) => Input$OrderFilter.fromJson((e as Map<String, dynamic>)))
          .toList();
    }
    if (data.containsKey('id')) {
      final l$id = data['id'];
      result$data['id'] = l$id == null
          ? null
          : Input$IDFilterComparison.fromJson((l$id as Map<String, dynamic>));
    }
    if (data.containsKey('status')) {
      final l$status = data['status'];
      result$data['status'] = l$status == null
          ? null
          : Input$OrderStatusFilterComparison.fromJson(
              (l$status as Map<String, dynamic>));
    }
    if (data.containsKey('createdOn')) {
      final l$createdOn = data['createdOn'];
      result$data['createdOn'] = l$createdOn == null
          ? null
          : Input$DateFieldComparison.fromJson(
              (l$createdOn as Map<String, dynamic>));
    }
    if (data.containsKey('distanceBest')) {
      final l$distanceBest = data['distanceBest'];
      result$data['distanceBest'] = l$distanceBest == null
          ? null
          : Input$IntFieldComparison.fromJson(
              (l$distanceBest as Map<String, dynamic>));
    }
    if (data.containsKey('costBest')) {
      final l$costBest = data['costBest'];
      result$data['costBest'] = l$costBest == null
          ? null
          : Input$NumberFieldComparison.fromJson(
              (l$costBest as Map<String, dynamic>));
    }
    if (data.containsKey('driverId')) {
      final l$driverId = data['driverId'];
      result$data['driverId'] = l$driverId == null
          ? null
          : Input$IDFilterComparison.fromJson(
              (l$driverId as Map<String, dynamic>));
    }
    return Input$OrderFilter._(result$data);
  }

  Map<String, dynamic> _$data;

  List<Input$OrderFilter>? get and =>
      (_$data['and'] as List<Input$OrderFilter>?);
  List<Input$OrderFilter>? get or => (_$data['or'] as List<Input$OrderFilter>?);
  Input$IDFilterComparison? get id =>
      (_$data['id'] as Input$IDFilterComparison?);
  Input$OrderStatusFilterComparison? get status =>
      (_$data['status'] as Input$OrderStatusFilterComparison?);
  Input$DateFieldComparison? get createdOn =>
      (_$data['createdOn'] as Input$DateFieldComparison?);
  Input$IntFieldComparison? get distanceBest =>
      (_$data['distanceBest'] as Input$IntFieldComparison?);
  Input$NumberFieldComparison? get costBest =>
      (_$data['costBest'] as Input$NumberFieldComparison?);
  Input$IDFilterComparison? get driverId =>
      (_$data['driverId'] as Input$IDFilterComparison?);
  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('and')) {
      final l$and = and;
      result$data['and'] = l$and?.map((e) => e.toJson()).toList();
    }
    if (_$data.containsKey('or')) {
      final l$or = or;
      result$data['or'] = l$or?.map((e) => e.toJson()).toList();
    }
    if (_$data.containsKey('id')) {
      final l$id = id;
      result$data['id'] = l$id?.toJson();
    }
    if (_$data.containsKey('status')) {
      final l$status = status;
      result$data['status'] = l$status?.toJson();
    }
    if (_$data.containsKey('createdOn')) {
      final l$createdOn = createdOn;
      result$data['createdOn'] = l$createdOn?.toJson();
    }
    if (_$data.containsKey('distanceBest')) {
      final l$distanceBest = distanceBest;
      result$data['distanceBest'] = l$distanceBest?.toJson();
    }
    if (_$data.containsKey('costBest')) {
      final l$costBest = costBest;
      result$data['costBest'] = l$costBest?.toJson();
    }
    if (_$data.containsKey('driverId')) {
      final l$driverId = driverId;
      result$data['driverId'] = l$driverId?.toJson();
    }
    return result$data;
  }

  CopyWith$Input$OrderFilter<Input$OrderFilter> get copyWith =>
      CopyWith$Input$OrderFilter(
        this,
        (i) => i,
      );
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Input$OrderFilter) || runtimeType != other.runtimeType) {
      return false;
    }
    final l$and = and;
    final lOther$and = other.and;
    if (_$data.containsKey('and') != other._$data.containsKey('and')) {
      return false;
    }
    if (l$and != null && lOther$and != null) {
      if (l$and.length != lOther$and.length) {
        return false;
      }
      for (int i = 0; i < l$and.length; i++) {
        final l$and$entry = l$and[i];
        final lOther$and$entry = lOther$and[i];
        if (l$and$entry != lOther$and$entry) {
          return false;
        }
      }
    } else if (l$and != lOther$and) {
      return false;
    }
    final l$or = or;
    final lOther$or = other.or;
    if (_$data.containsKey('or') != other._$data.containsKey('or')) {
      return false;
    }
    if (l$or != null && lOther$or != null) {
      if (l$or.length != lOther$or.length) {
        return false;
      }
      for (int i = 0; i < l$or.length; i++) {
        final l$or$entry = l$or[i];
        final lOther$or$entry = lOther$or[i];
        if (l$or$entry != lOther$or$entry) {
          return false;
        }
      }
    } else if (l$or != lOther$or) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (_$data.containsKey('id') != other._$data.containsKey('id')) {
      return false;
    }
    if (l$id != lOther$id) {
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
    final l$createdOn = createdOn;
    final lOther$createdOn = other.createdOn;
    if (_$data.containsKey('createdOn') !=
        other._$data.containsKey('createdOn')) {
      return false;
    }
    if (l$createdOn != lOther$createdOn) {
      return false;
    }
    final l$distanceBest = distanceBest;
    final lOther$distanceBest = other.distanceBest;
    if (_$data.containsKey('distanceBest') !=
        other._$data.containsKey('distanceBest')) {
      return false;
    }
    if (l$distanceBest != lOther$distanceBest) {
      return false;
    }
    final l$costBest = costBest;
    final lOther$costBest = other.costBest;
    if (_$data.containsKey('costBest') !=
        other._$data.containsKey('costBest')) {
      return false;
    }
    if (l$costBest != lOther$costBest) {
      return false;
    }
    final l$driverId = driverId;
    final lOther$driverId = other.driverId;
    if (_$data.containsKey('driverId') !=
        other._$data.containsKey('driverId')) {
      return false;
    }
    if (l$driverId != lOther$driverId) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$and = and;
    final l$or = or;
    final l$id = id;
    final l$status = status;
    final l$createdOn = createdOn;
    final l$distanceBest = distanceBest;
    final l$costBest = costBest;
    final l$driverId = driverId;
    return Object.hashAll([
      _$data.containsKey('and')
          ? l$and == null
              ? null
              : Object.hashAll(l$and.map((v) => v))
          : const {},
      _$data.containsKey('or')
          ? l$or == null
              ? null
              : Object.hashAll(l$or.map((v) => v))
          : const {},
      _$data.containsKey('id') ? l$id : const {},
      _$data.containsKey('status') ? l$status : const {},
      _$data.containsKey('createdOn') ? l$createdOn : const {},
      _$data.containsKey('distanceBest') ? l$distanceBest : const {},
      _$data.containsKey('costBest') ? l$costBest : const {},
      _$data.containsKey('driverId') ? l$driverId : const {},
    ]);
  }
}

abstract class CopyWith$Input$OrderFilter<TRes> {
  factory CopyWith$Input$OrderFilter(
    Input$OrderFilter instance,
    TRes Function(Input$OrderFilter) then,
  ) = _CopyWithImpl$Input$OrderFilter;

  factory CopyWith$Input$OrderFilter.stub(TRes res) =
      _CopyWithStubImpl$Input$OrderFilter;

  TRes call({
    List<Input$OrderFilter>? and,
    List<Input$OrderFilter>? or,
    Input$IDFilterComparison? id,
    Input$OrderStatusFilterComparison? status,
    Input$DateFieldComparison? createdOn,
    Input$IntFieldComparison? distanceBest,
    Input$NumberFieldComparison? costBest,
    Input$IDFilterComparison? driverId,
  });
  TRes and(
      Iterable<Input$OrderFilter>? Function(
              Iterable<CopyWith$Input$OrderFilter<Input$OrderFilter>>?)
          _fn);
  TRes or(
      Iterable<Input$OrderFilter>? Function(
              Iterable<CopyWith$Input$OrderFilter<Input$OrderFilter>>?)
          _fn);
  CopyWith$Input$IDFilterComparison<TRes> get id;
  CopyWith$Input$OrderStatusFilterComparison<TRes> get status;
  CopyWith$Input$DateFieldComparison<TRes> get createdOn;
  CopyWith$Input$IntFieldComparison<TRes> get distanceBest;
  CopyWith$Input$NumberFieldComparison<TRes> get costBest;
  CopyWith$Input$IDFilterComparison<TRes> get driverId;
}

class _CopyWithImpl$Input$OrderFilter<TRes>
    implements CopyWith$Input$OrderFilter<TRes> {
  _CopyWithImpl$Input$OrderFilter(
    this._instance,
    this._then,
  );

  final Input$OrderFilter _instance;

  final TRes Function(Input$OrderFilter) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? and = _undefined,
    Object? or = _undefined,
    Object? id = _undefined,
    Object? status = _undefined,
    Object? createdOn = _undefined,
    Object? distanceBest = _undefined,
    Object? costBest = _undefined,
    Object? driverId = _undefined,
  }) =>
      _then(Input$OrderFilter._({
        ..._instance._$data,
        if (and != _undefined) 'and': (and as List<Input$OrderFilter>?),
        if (or != _undefined) 'or': (or as List<Input$OrderFilter>?),
        if (id != _undefined) 'id': (id as Input$IDFilterComparison?),
        if (status != _undefined)
          'status': (status as Input$OrderStatusFilterComparison?),
        if (createdOn != _undefined)
          'createdOn': (createdOn as Input$DateFieldComparison?),
        if (distanceBest != _undefined)
          'distanceBest': (distanceBest as Input$IntFieldComparison?),
        if (costBest != _undefined)
          'costBest': (costBest as Input$NumberFieldComparison?),
        if (driverId != _undefined)
          'driverId': (driverId as Input$IDFilterComparison?),
      }));
  TRes and(
          Iterable<Input$OrderFilter>? Function(
                  Iterable<CopyWith$Input$OrderFilter<Input$OrderFilter>>?)
              _fn) =>
      call(
          and: _fn(_instance.and?.map((e) => CopyWith$Input$OrderFilter(
                e,
                (i) => i,
              )))?.toList());
  TRes or(
          Iterable<Input$OrderFilter>? Function(
                  Iterable<CopyWith$Input$OrderFilter<Input$OrderFilter>>?)
              _fn) =>
      call(
          or: _fn(_instance.or?.map((e) => CopyWith$Input$OrderFilter(
                e,
                (i) => i,
              )))?.toList());
  CopyWith$Input$IDFilterComparison<TRes> get id {
    final local$id = _instance.id;
    return local$id == null
        ? CopyWith$Input$IDFilterComparison.stub(_then(_instance))
        : CopyWith$Input$IDFilterComparison(local$id, (e) => call(id: e));
  }

  CopyWith$Input$OrderStatusFilterComparison<TRes> get status {
    final local$status = _instance.status;
    return local$status == null
        ? CopyWith$Input$OrderStatusFilterComparison.stub(_then(_instance))
        : CopyWith$Input$OrderStatusFilterComparison(
            local$status, (e) => call(status: e));
  }

  CopyWith$Input$DateFieldComparison<TRes> get createdOn {
    final local$createdOn = _instance.createdOn;
    return local$createdOn == null
        ? CopyWith$Input$DateFieldComparison.stub(_then(_instance))
        : CopyWith$Input$DateFieldComparison(
            local$createdOn, (e) => call(createdOn: e));
  }

  CopyWith$Input$IntFieldComparison<TRes> get distanceBest {
    final local$distanceBest = _instance.distanceBest;
    return local$distanceBest == null
        ? CopyWith$Input$IntFieldComparison.stub(_then(_instance))
        : CopyWith$Input$IntFieldComparison(
            local$distanceBest, (e) => call(distanceBest: e));
  }

  CopyWith$Input$NumberFieldComparison<TRes> get costBest {
    final local$costBest = _instance.costBest;
    return local$costBest == null
        ? CopyWith$Input$NumberFieldComparison.stub(_then(_instance))
        : CopyWith$Input$NumberFieldComparison(
            local$costBest, (e) => call(costBest: e));
  }

  CopyWith$Input$IDFilterComparison<TRes> get driverId {
    final local$driverId = _instance.driverId;
    return local$driverId == null
        ? CopyWith$Input$IDFilterComparison.stub(_then(_instance))
        : CopyWith$Input$IDFilterComparison(
            local$driverId, (e) => call(driverId: e));
  }
}

class _CopyWithStubImpl$Input$OrderFilter<TRes>
    implements CopyWith$Input$OrderFilter<TRes> {
  _CopyWithStubImpl$Input$OrderFilter(this._res);

  TRes _res;

  call({
    List<Input$OrderFilter>? and,
    List<Input$OrderFilter>? or,
    Input$IDFilterComparison? id,
    Input$OrderStatusFilterComparison? status,
    Input$DateFieldComparison? createdOn,
    Input$IntFieldComparison? distanceBest,
    Input$NumberFieldComparison? costBest,
    Input$IDFilterComparison? driverId,
  }) =>
      _res;
  and(_fn) => _res;
  or(_fn) => _res;
  CopyWith$Input$IDFilterComparison<TRes> get id =>
      CopyWith$Input$IDFilterComparison.stub(_res);
  CopyWith$Input$OrderStatusFilterComparison<TRes> get status =>
      CopyWith$Input$OrderStatusFilterComparison.stub(_res);
  CopyWith$Input$DateFieldComparison<TRes> get createdOn =>
      CopyWith$Input$DateFieldComparison.stub(_res);
  CopyWith$Input$IntFieldComparison<TRes> get distanceBest =>
      CopyWith$Input$IntFieldComparison.stub(_res);
  CopyWith$Input$NumberFieldComparison<TRes> get costBest =>
      CopyWith$Input$NumberFieldComparison.stub(_res);
  CopyWith$Input$IDFilterComparison<TRes> get driverId =>
      CopyWith$Input$IDFilterComparison.stub(_res);
}

class Input$OrderSort {
  factory Input$OrderSort({
    required Enum$OrderSortFields field,
    required Enum$SortDirection direction,
    Enum$SortNulls? nulls,
  }) =>
      Input$OrderSort._({
        r'field': field,
        r'direction': direction,
        if (nulls != null) r'nulls': nulls,
      });

  Input$OrderSort._(this._$data);

  factory Input$OrderSort.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$field = data['field'];
    result$data['field'] = fromJson$Enum$OrderSortFields((l$field as String));
    final l$direction = data['direction'];
    result$data['direction'] =
        fromJson$Enum$SortDirection((l$direction as String));
    if (data.containsKey('nulls')) {
      final l$nulls = data['nulls'];
      result$data['nulls'] =
          l$nulls == null ? null : fromJson$Enum$SortNulls((l$nulls as String));
    }
    return Input$OrderSort._(result$data);
  }

  Map<String, dynamic> _$data;

  Enum$OrderSortFields get field => (_$data['field'] as Enum$OrderSortFields);
  Enum$SortDirection get direction =>
      (_$data['direction'] as Enum$SortDirection);
  Enum$SortNulls? get nulls => (_$data['nulls'] as Enum$SortNulls?);
  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$field = field;
    result$data['field'] = toJson$Enum$OrderSortFields(l$field);
    final l$direction = direction;
    result$data['direction'] = toJson$Enum$SortDirection(l$direction);
    if (_$data.containsKey('nulls')) {
      final l$nulls = nulls;
      result$data['nulls'] =
          l$nulls == null ? null : toJson$Enum$SortNulls(l$nulls);
    }
    return result$data;
  }

  CopyWith$Input$OrderSort<Input$OrderSort> get copyWith =>
      CopyWith$Input$OrderSort(
        this,
        (i) => i,
      );
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Input$OrderSort) || runtimeType != other.runtimeType) {
      return false;
    }
    final l$field = field;
    final lOther$field = other.field;
    if (l$field != lOther$field) {
      return false;
    }
    final l$direction = direction;
    final lOther$direction = other.direction;
    if (l$direction != lOther$direction) {
      return false;
    }
    final l$nulls = nulls;
    final lOther$nulls = other.nulls;
    if (_$data.containsKey('nulls') != other._$data.containsKey('nulls')) {
      return false;
    }
    if (l$nulls != lOther$nulls) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$field = field;
    final l$direction = direction;
    final l$nulls = nulls;
    return Object.hashAll([
      l$field,
      l$direction,
      _$data.containsKey('nulls') ? l$nulls : const {},
    ]);
  }
}

abstract class CopyWith$Input$OrderSort<TRes> {
  factory CopyWith$Input$OrderSort(
    Input$OrderSort instance,
    TRes Function(Input$OrderSort) then,
  ) = _CopyWithImpl$Input$OrderSort;

  factory CopyWith$Input$OrderSort.stub(TRes res) =
      _CopyWithStubImpl$Input$OrderSort;

  TRes call({
    Enum$OrderSortFields? field,
    Enum$SortDirection? direction,
    Enum$SortNulls? nulls,
  });
}

class _CopyWithImpl$Input$OrderSort<TRes>
    implements CopyWith$Input$OrderSort<TRes> {
  _CopyWithImpl$Input$OrderSort(
    this._instance,
    this._then,
  );

  final Input$OrderSort _instance;

  final TRes Function(Input$OrderSort) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? field = _undefined,
    Object? direction = _undefined,
    Object? nulls = _undefined,
  }) =>
      _then(Input$OrderSort._({
        ..._instance._$data,
        if (field != _undefined && field != null)
          'field': (field as Enum$OrderSortFields),
        if (direction != _undefined && direction != null)
          'direction': (direction as Enum$SortDirection),
        if (nulls != _undefined) 'nulls': (nulls as Enum$SortNulls?),
      }));
}

class _CopyWithStubImpl$Input$OrderSort<TRes>
    implements CopyWith$Input$OrderSort<TRes> {
  _CopyWithStubImpl$Input$OrderSort(this._res);

  TRes _res;

  call({
    Enum$OrderSortFields? field,
    Enum$SortDirection? direction,
    Enum$SortNulls? nulls,
  }) =>
      _res;
}

class Input$ServiceFilter {
  factory Input$ServiceFilter({
    List<Input$ServiceFilter>? and,
    List<Input$ServiceFilter>? or,
    Input$IDFilterComparison? id,
  }) =>
      Input$ServiceFilter._({
        if (and != null) r'and': and,
        if (or != null) r'or': or,
        if (id != null) r'id': id,
      });

  Input$ServiceFilter._(this._$data);

  factory Input$ServiceFilter.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('and')) {
      final l$and = data['and'];
      result$data['and'] = (l$and as List<dynamic>?)
          ?.map(
              (e) => Input$ServiceFilter.fromJson((e as Map<String, dynamic>)))
          .toList();
    }
    if (data.containsKey('or')) {
      final l$or = data['or'];
      result$data['or'] = (l$or as List<dynamic>?)
          ?.map(
              (e) => Input$ServiceFilter.fromJson((e as Map<String, dynamic>)))
          .toList();
    }
    if (data.containsKey('id')) {
      final l$id = data['id'];
      result$data['id'] = l$id == null
          ? null
          : Input$IDFilterComparison.fromJson((l$id as Map<String, dynamic>));
    }
    return Input$ServiceFilter._(result$data);
  }

  Map<String, dynamic> _$data;

  List<Input$ServiceFilter>? get and =>
      (_$data['and'] as List<Input$ServiceFilter>?);
  List<Input$ServiceFilter>? get or =>
      (_$data['or'] as List<Input$ServiceFilter>?);
  Input$IDFilterComparison? get id =>
      (_$data['id'] as Input$IDFilterComparison?);
  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('and')) {
      final l$and = and;
      result$data['and'] = l$and?.map((e) => e.toJson()).toList();
    }
    if (_$data.containsKey('or')) {
      final l$or = or;
      result$data['or'] = l$or?.map((e) => e.toJson()).toList();
    }
    if (_$data.containsKey('id')) {
      final l$id = id;
      result$data['id'] = l$id?.toJson();
    }
    return result$data;
  }

  CopyWith$Input$ServiceFilter<Input$ServiceFilter> get copyWith =>
      CopyWith$Input$ServiceFilter(
        this,
        (i) => i,
      );
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Input$ServiceFilter) || runtimeType != other.runtimeType) {
      return false;
    }
    final l$and = and;
    final lOther$and = other.and;
    if (_$data.containsKey('and') != other._$data.containsKey('and')) {
      return false;
    }
    if (l$and != null && lOther$and != null) {
      if (l$and.length != lOther$and.length) {
        return false;
      }
      for (int i = 0; i < l$and.length; i++) {
        final l$and$entry = l$and[i];
        final lOther$and$entry = lOther$and[i];
        if (l$and$entry != lOther$and$entry) {
          return false;
        }
      }
    } else if (l$and != lOther$and) {
      return false;
    }
    final l$or = or;
    final lOther$or = other.or;
    if (_$data.containsKey('or') != other._$data.containsKey('or')) {
      return false;
    }
    if (l$or != null && lOther$or != null) {
      if (l$or.length != lOther$or.length) {
        return false;
      }
      for (int i = 0; i < l$or.length; i++) {
        final l$or$entry = l$or[i];
        final lOther$or$entry = lOther$or[i];
        if (l$or$entry != lOther$or$entry) {
          return false;
        }
      }
    } else if (l$or != lOther$or) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (_$data.containsKey('id') != other._$data.containsKey('id')) {
      return false;
    }
    if (l$id != lOther$id) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$and = and;
    final l$or = or;
    final l$id = id;
    return Object.hashAll([
      _$data.containsKey('and')
          ? l$and == null
              ? null
              : Object.hashAll(l$and.map((v) => v))
          : const {},
      _$data.containsKey('or')
          ? l$or == null
              ? null
              : Object.hashAll(l$or.map((v) => v))
          : const {},
      _$data.containsKey('id') ? l$id : const {},
    ]);
  }
}

abstract class CopyWith$Input$ServiceFilter<TRes> {
  factory CopyWith$Input$ServiceFilter(
    Input$ServiceFilter instance,
    TRes Function(Input$ServiceFilter) then,
  ) = _CopyWithImpl$Input$ServiceFilter;

  factory CopyWith$Input$ServiceFilter.stub(TRes res) =
      _CopyWithStubImpl$Input$ServiceFilter;

  TRes call({
    List<Input$ServiceFilter>? and,
    List<Input$ServiceFilter>? or,
    Input$IDFilterComparison? id,
  });
  TRes and(
      Iterable<Input$ServiceFilter>? Function(
              Iterable<CopyWith$Input$ServiceFilter<Input$ServiceFilter>>?)
          _fn);
  TRes or(
      Iterable<Input$ServiceFilter>? Function(
              Iterable<CopyWith$Input$ServiceFilter<Input$ServiceFilter>>?)
          _fn);
  CopyWith$Input$IDFilterComparison<TRes> get id;
}

class _CopyWithImpl$Input$ServiceFilter<TRes>
    implements CopyWith$Input$ServiceFilter<TRes> {
  _CopyWithImpl$Input$ServiceFilter(
    this._instance,
    this._then,
  );

  final Input$ServiceFilter _instance;

  final TRes Function(Input$ServiceFilter) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? and = _undefined,
    Object? or = _undefined,
    Object? id = _undefined,
  }) =>
      _then(Input$ServiceFilter._({
        ..._instance._$data,
        if (and != _undefined) 'and': (and as List<Input$ServiceFilter>?),
        if (or != _undefined) 'or': (or as List<Input$ServiceFilter>?),
        if (id != _undefined) 'id': (id as Input$IDFilterComparison?),
      }));
  TRes and(
          Iterable<Input$ServiceFilter>? Function(
                  Iterable<CopyWith$Input$ServiceFilter<Input$ServiceFilter>>?)
              _fn) =>
      call(
          and: _fn(_instance.and?.map((e) => CopyWith$Input$ServiceFilter(
                e,
                (i) => i,
              )))?.toList());
  TRes or(
          Iterable<Input$ServiceFilter>? Function(
                  Iterable<CopyWith$Input$ServiceFilter<Input$ServiceFilter>>?)
              _fn) =>
      call(
          or: _fn(_instance.or?.map((e) => CopyWith$Input$ServiceFilter(
                e,
                (i) => i,
              )))?.toList());
  CopyWith$Input$IDFilterComparison<TRes> get id {
    final local$id = _instance.id;
    return local$id == null
        ? CopyWith$Input$IDFilterComparison.stub(_then(_instance))
        : CopyWith$Input$IDFilterComparison(local$id, (e) => call(id: e));
  }
}

class _CopyWithStubImpl$Input$ServiceFilter<TRes>
    implements CopyWith$Input$ServiceFilter<TRes> {
  _CopyWithStubImpl$Input$ServiceFilter(this._res);

  TRes _res;

  call({
    List<Input$ServiceFilter>? and,
    List<Input$ServiceFilter>? or,
    Input$IDFilterComparison? id,
  }) =>
      _res;
  and(_fn) => _res;
  or(_fn) => _res;
  CopyWith$Input$IDFilterComparison<TRes> get id =>
      CopyWith$Input$IDFilterComparison.stub(_res);
}

class Input$ServiceSort {
  factory Input$ServiceSort({
    required Enum$ServiceSortFields field,
    required Enum$SortDirection direction,
    Enum$SortNulls? nulls,
  }) =>
      Input$ServiceSort._({
        r'field': field,
        r'direction': direction,
        if (nulls != null) r'nulls': nulls,
      });

  Input$ServiceSort._(this._$data);

  factory Input$ServiceSort.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$field = data['field'];
    result$data['field'] = fromJson$Enum$ServiceSortFields((l$field as String));
    final l$direction = data['direction'];
    result$data['direction'] =
        fromJson$Enum$SortDirection((l$direction as String));
    if (data.containsKey('nulls')) {
      final l$nulls = data['nulls'];
      result$data['nulls'] =
          l$nulls == null ? null : fromJson$Enum$SortNulls((l$nulls as String));
    }
    return Input$ServiceSort._(result$data);
  }

  Map<String, dynamic> _$data;

  Enum$ServiceSortFields get field =>
      (_$data['field'] as Enum$ServiceSortFields);
  Enum$SortDirection get direction =>
      (_$data['direction'] as Enum$SortDirection);
  Enum$SortNulls? get nulls => (_$data['nulls'] as Enum$SortNulls?);
  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$field = field;
    result$data['field'] = toJson$Enum$ServiceSortFields(l$field);
    final l$direction = direction;
    result$data['direction'] = toJson$Enum$SortDirection(l$direction);
    if (_$data.containsKey('nulls')) {
      final l$nulls = nulls;
      result$data['nulls'] =
          l$nulls == null ? null : toJson$Enum$SortNulls(l$nulls);
    }
    return result$data;
  }

  CopyWith$Input$ServiceSort<Input$ServiceSort> get copyWith =>
      CopyWith$Input$ServiceSort(
        this,
        (i) => i,
      );
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Input$ServiceSort) || runtimeType != other.runtimeType) {
      return false;
    }
    final l$field = field;
    final lOther$field = other.field;
    if (l$field != lOther$field) {
      return false;
    }
    final l$direction = direction;
    final lOther$direction = other.direction;
    if (l$direction != lOther$direction) {
      return false;
    }
    final l$nulls = nulls;
    final lOther$nulls = other.nulls;
    if (_$data.containsKey('nulls') != other._$data.containsKey('nulls')) {
      return false;
    }
    if (l$nulls != lOther$nulls) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$field = field;
    final l$direction = direction;
    final l$nulls = nulls;
    return Object.hashAll([
      l$field,
      l$direction,
      _$data.containsKey('nulls') ? l$nulls : const {},
    ]);
  }
}

abstract class CopyWith$Input$ServiceSort<TRes> {
  factory CopyWith$Input$ServiceSort(
    Input$ServiceSort instance,
    TRes Function(Input$ServiceSort) then,
  ) = _CopyWithImpl$Input$ServiceSort;

  factory CopyWith$Input$ServiceSort.stub(TRes res) =
      _CopyWithStubImpl$Input$ServiceSort;

  TRes call({
    Enum$ServiceSortFields? field,
    Enum$SortDirection? direction,
    Enum$SortNulls? nulls,
  });
}

class _CopyWithImpl$Input$ServiceSort<TRes>
    implements CopyWith$Input$ServiceSort<TRes> {
  _CopyWithImpl$Input$ServiceSort(
    this._instance,
    this._then,
  );

  final Input$ServiceSort _instance;

  final TRes Function(Input$ServiceSort) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? field = _undefined,
    Object? direction = _undefined,
    Object? nulls = _undefined,
  }) =>
      _then(Input$ServiceSort._({
        ..._instance._$data,
        if (field != _undefined && field != null)
          'field': (field as Enum$ServiceSortFields),
        if (direction != _undefined && direction != null)
          'direction': (direction as Enum$SortDirection),
        if (nulls != _undefined) 'nulls': (nulls as Enum$SortNulls?),
      }));
}

class _CopyWithStubImpl$Input$ServiceSort<TRes>
    implements CopyWith$Input$ServiceSort<TRes> {
  _CopyWithStubImpl$Input$ServiceSort(this._res);

  TRes _res;

  call({
    Enum$ServiceSortFields? field,
    Enum$SortDirection? direction,
    Enum$SortNulls? nulls,
  }) =>
      _res;
}

class Input$DriverWalletFilter {
  factory Input$DriverWalletFilter({
    List<Input$DriverWalletFilter>? and,
    List<Input$DriverWalletFilter>? or,
    Input$IDFilterComparison? id,
    Input$IDFilterComparison? driverId,
  }) =>
      Input$DriverWalletFilter._({
        if (and != null) r'and': and,
        if (or != null) r'or': or,
        if (id != null) r'id': id,
        if (driverId != null) r'driverId': driverId,
      });

  Input$DriverWalletFilter._(this._$data);

  factory Input$DriverWalletFilter.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('and')) {
      final l$and = data['and'];
      result$data['and'] = (l$and as List<dynamic>?)
          ?.map((e) =>
              Input$DriverWalletFilter.fromJson((e as Map<String, dynamic>)))
          .toList();
    }
    if (data.containsKey('or')) {
      final l$or = data['or'];
      result$data['or'] = (l$or as List<dynamic>?)
          ?.map((e) =>
              Input$DriverWalletFilter.fromJson((e as Map<String, dynamic>)))
          .toList();
    }
    if (data.containsKey('id')) {
      final l$id = data['id'];
      result$data['id'] = l$id == null
          ? null
          : Input$IDFilterComparison.fromJson((l$id as Map<String, dynamic>));
    }
    if (data.containsKey('driverId')) {
      final l$driverId = data['driverId'];
      result$data['driverId'] = l$driverId == null
          ? null
          : Input$IDFilterComparison.fromJson(
              (l$driverId as Map<String, dynamic>));
    }
    return Input$DriverWalletFilter._(result$data);
  }

  Map<String, dynamic> _$data;

  List<Input$DriverWalletFilter>? get and =>
      (_$data['and'] as List<Input$DriverWalletFilter>?);
  List<Input$DriverWalletFilter>? get or =>
      (_$data['or'] as List<Input$DriverWalletFilter>?);
  Input$IDFilterComparison? get id =>
      (_$data['id'] as Input$IDFilterComparison?);
  Input$IDFilterComparison? get driverId =>
      (_$data['driverId'] as Input$IDFilterComparison?);
  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('and')) {
      final l$and = and;
      result$data['and'] = l$and?.map((e) => e.toJson()).toList();
    }
    if (_$data.containsKey('or')) {
      final l$or = or;
      result$data['or'] = l$or?.map((e) => e.toJson()).toList();
    }
    if (_$data.containsKey('id')) {
      final l$id = id;
      result$data['id'] = l$id?.toJson();
    }
    if (_$data.containsKey('driverId')) {
      final l$driverId = driverId;
      result$data['driverId'] = l$driverId?.toJson();
    }
    return result$data;
  }

  CopyWith$Input$DriverWalletFilter<Input$DriverWalletFilter> get copyWith =>
      CopyWith$Input$DriverWalletFilter(
        this,
        (i) => i,
      );
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Input$DriverWalletFilter) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$and = and;
    final lOther$and = other.and;
    if (_$data.containsKey('and') != other._$data.containsKey('and')) {
      return false;
    }
    if (l$and != null && lOther$and != null) {
      if (l$and.length != lOther$and.length) {
        return false;
      }
      for (int i = 0; i < l$and.length; i++) {
        final l$and$entry = l$and[i];
        final lOther$and$entry = lOther$and[i];
        if (l$and$entry != lOther$and$entry) {
          return false;
        }
      }
    } else if (l$and != lOther$and) {
      return false;
    }
    final l$or = or;
    final lOther$or = other.or;
    if (_$data.containsKey('or') != other._$data.containsKey('or')) {
      return false;
    }
    if (l$or != null && lOther$or != null) {
      if (l$or.length != lOther$or.length) {
        return false;
      }
      for (int i = 0; i < l$or.length; i++) {
        final l$or$entry = l$or[i];
        final lOther$or$entry = lOther$or[i];
        if (l$or$entry != lOther$or$entry) {
          return false;
        }
      }
    } else if (l$or != lOther$or) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (_$data.containsKey('id') != other._$data.containsKey('id')) {
      return false;
    }
    if (l$id != lOther$id) {
      return false;
    }
    final l$driverId = driverId;
    final lOther$driverId = other.driverId;
    if (_$data.containsKey('driverId') !=
        other._$data.containsKey('driverId')) {
      return false;
    }
    if (l$driverId != lOther$driverId) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$and = and;
    final l$or = or;
    final l$id = id;
    final l$driverId = driverId;
    return Object.hashAll([
      _$data.containsKey('and')
          ? l$and == null
              ? null
              : Object.hashAll(l$and.map((v) => v))
          : const {},
      _$data.containsKey('or')
          ? l$or == null
              ? null
              : Object.hashAll(l$or.map((v) => v))
          : const {},
      _$data.containsKey('id') ? l$id : const {},
      _$data.containsKey('driverId') ? l$driverId : const {},
    ]);
  }
}

abstract class CopyWith$Input$DriverWalletFilter<TRes> {
  factory CopyWith$Input$DriverWalletFilter(
    Input$DriverWalletFilter instance,
    TRes Function(Input$DriverWalletFilter) then,
  ) = _CopyWithImpl$Input$DriverWalletFilter;

  factory CopyWith$Input$DriverWalletFilter.stub(TRes res) =
      _CopyWithStubImpl$Input$DriverWalletFilter;

  TRes call({
    List<Input$DriverWalletFilter>? and,
    List<Input$DriverWalletFilter>? or,
    Input$IDFilterComparison? id,
    Input$IDFilterComparison? driverId,
  });
  TRes and(
      Iterable<Input$DriverWalletFilter>? Function(
              Iterable<
                  CopyWith$Input$DriverWalletFilter<Input$DriverWalletFilter>>?)
          _fn);
  TRes or(
      Iterable<Input$DriverWalletFilter>? Function(
              Iterable<
                  CopyWith$Input$DriverWalletFilter<Input$DriverWalletFilter>>?)
          _fn);
  CopyWith$Input$IDFilterComparison<TRes> get id;
  CopyWith$Input$IDFilterComparison<TRes> get driverId;
}

class _CopyWithImpl$Input$DriverWalletFilter<TRes>
    implements CopyWith$Input$DriverWalletFilter<TRes> {
  _CopyWithImpl$Input$DriverWalletFilter(
    this._instance,
    this._then,
  );

  final Input$DriverWalletFilter _instance;

  final TRes Function(Input$DriverWalletFilter) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? and = _undefined,
    Object? or = _undefined,
    Object? id = _undefined,
    Object? driverId = _undefined,
  }) =>
      _then(Input$DriverWalletFilter._({
        ..._instance._$data,
        if (and != _undefined) 'and': (and as List<Input$DriverWalletFilter>?),
        if (or != _undefined) 'or': (or as List<Input$DriverWalletFilter>?),
        if (id != _undefined) 'id': (id as Input$IDFilterComparison?),
        if (driverId != _undefined)
          'driverId': (driverId as Input$IDFilterComparison?),
      }));
  TRes and(
          Iterable<Input$DriverWalletFilter>? Function(
                  Iterable<
                      CopyWith$Input$DriverWalletFilter<
                          Input$DriverWalletFilter>>?)
              _fn) =>
      call(
          and: _fn(_instance.and?.map((e) => CopyWith$Input$DriverWalletFilter(
                e,
                (i) => i,
              )))?.toList());
  TRes or(
          Iterable<Input$DriverWalletFilter>? Function(
                  Iterable<
                      CopyWith$Input$DriverWalletFilter<
                          Input$DriverWalletFilter>>?)
              _fn) =>
      call(
          or: _fn(_instance.or?.map((e) => CopyWith$Input$DriverWalletFilter(
                e,
                (i) => i,
              )))?.toList());
  CopyWith$Input$IDFilterComparison<TRes> get id {
    final local$id = _instance.id;
    return local$id == null
        ? CopyWith$Input$IDFilterComparison.stub(_then(_instance))
        : CopyWith$Input$IDFilterComparison(local$id, (e) => call(id: e));
  }

  CopyWith$Input$IDFilterComparison<TRes> get driverId {
    final local$driverId = _instance.driverId;
    return local$driverId == null
        ? CopyWith$Input$IDFilterComparison.stub(_then(_instance))
        : CopyWith$Input$IDFilterComparison(
            local$driverId, (e) => call(driverId: e));
  }
}

class _CopyWithStubImpl$Input$DriverWalletFilter<TRes>
    implements CopyWith$Input$DriverWalletFilter<TRes> {
  _CopyWithStubImpl$Input$DriverWalletFilter(this._res);

  TRes _res;

  call({
    List<Input$DriverWalletFilter>? and,
    List<Input$DriverWalletFilter>? or,
    Input$IDFilterComparison? id,
    Input$IDFilterComparison? driverId,
  }) =>
      _res;
  and(_fn) => _res;
  or(_fn) => _res;
  CopyWith$Input$IDFilterComparison<TRes> get id =>
      CopyWith$Input$IDFilterComparison.stub(_res);
  CopyWith$Input$IDFilterComparison<TRes> get driverId =>
      CopyWith$Input$IDFilterComparison.stub(_res);
}

class Input$DriverWalletSort {
  factory Input$DriverWalletSort({
    required Enum$DriverWalletSortFields field,
    required Enum$SortDirection direction,
    Enum$SortNulls? nulls,
  }) =>
      Input$DriverWalletSort._({
        r'field': field,
        r'direction': direction,
        if (nulls != null) r'nulls': nulls,
      });

  Input$DriverWalletSort._(this._$data);

  factory Input$DriverWalletSort.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$field = data['field'];
    result$data['field'] =
        fromJson$Enum$DriverWalletSortFields((l$field as String));
    final l$direction = data['direction'];
    result$data['direction'] =
        fromJson$Enum$SortDirection((l$direction as String));
    if (data.containsKey('nulls')) {
      final l$nulls = data['nulls'];
      result$data['nulls'] =
          l$nulls == null ? null : fromJson$Enum$SortNulls((l$nulls as String));
    }
    return Input$DriverWalletSort._(result$data);
  }

  Map<String, dynamic> _$data;

  Enum$DriverWalletSortFields get field =>
      (_$data['field'] as Enum$DriverWalletSortFields);
  Enum$SortDirection get direction =>
      (_$data['direction'] as Enum$SortDirection);
  Enum$SortNulls? get nulls => (_$data['nulls'] as Enum$SortNulls?);
  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$field = field;
    result$data['field'] = toJson$Enum$DriverWalletSortFields(l$field);
    final l$direction = direction;
    result$data['direction'] = toJson$Enum$SortDirection(l$direction);
    if (_$data.containsKey('nulls')) {
      final l$nulls = nulls;
      result$data['nulls'] =
          l$nulls == null ? null : toJson$Enum$SortNulls(l$nulls);
    }
    return result$data;
  }

  CopyWith$Input$DriverWalletSort<Input$DriverWalletSort> get copyWith =>
      CopyWith$Input$DriverWalletSort(
        this,
        (i) => i,
      );
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Input$DriverWalletSort) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$field = field;
    final lOther$field = other.field;
    if (l$field != lOther$field) {
      return false;
    }
    final l$direction = direction;
    final lOther$direction = other.direction;
    if (l$direction != lOther$direction) {
      return false;
    }
    final l$nulls = nulls;
    final lOther$nulls = other.nulls;
    if (_$data.containsKey('nulls') != other._$data.containsKey('nulls')) {
      return false;
    }
    if (l$nulls != lOther$nulls) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$field = field;
    final l$direction = direction;
    final l$nulls = nulls;
    return Object.hashAll([
      l$field,
      l$direction,
      _$data.containsKey('nulls') ? l$nulls : const {},
    ]);
  }
}

abstract class CopyWith$Input$DriverWalletSort<TRes> {
  factory CopyWith$Input$DriverWalletSort(
    Input$DriverWalletSort instance,
    TRes Function(Input$DriverWalletSort) then,
  ) = _CopyWithImpl$Input$DriverWalletSort;

  factory CopyWith$Input$DriverWalletSort.stub(TRes res) =
      _CopyWithStubImpl$Input$DriverWalletSort;

  TRes call({
    Enum$DriverWalletSortFields? field,
    Enum$SortDirection? direction,
    Enum$SortNulls? nulls,
  });
}

class _CopyWithImpl$Input$DriverWalletSort<TRes>
    implements CopyWith$Input$DriverWalletSort<TRes> {
  _CopyWithImpl$Input$DriverWalletSort(
    this._instance,
    this._then,
  );

  final Input$DriverWalletSort _instance;

  final TRes Function(Input$DriverWalletSort) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? field = _undefined,
    Object? direction = _undefined,
    Object? nulls = _undefined,
  }) =>
      _then(Input$DriverWalletSort._({
        ..._instance._$data,
        if (field != _undefined && field != null)
          'field': (field as Enum$DriverWalletSortFields),
        if (direction != _undefined && direction != null)
          'direction': (direction as Enum$SortDirection),
        if (nulls != _undefined) 'nulls': (nulls as Enum$SortNulls?),
      }));
}

class _CopyWithStubImpl$Input$DriverWalletSort<TRes>
    implements CopyWith$Input$DriverWalletSort<TRes> {
  _CopyWithStubImpl$Input$DriverWalletSort(this._res);

  TRes _res;

  call({
    Enum$DriverWalletSortFields? field,
    Enum$SortDirection? direction,
    Enum$SortNulls? nulls,
  }) =>
      _res;
}

class Input$PointInput {
  factory Input$PointInput({
    required double lat,
    required double lng,
  }) =>
      Input$PointInput._({
        r'lat': lat,
        r'lng': lng,
      });

  Input$PointInput._(this._$data);

  factory Input$PointInput.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$lat = data['lat'];
    result$data['lat'] = (l$lat as num).toDouble();
    final l$lng = data['lng'];
    result$data['lng'] = (l$lng as num).toDouble();
    return Input$PointInput._(result$data);
  }

  Map<String, dynamic> _$data;

  double get lat => (_$data['lat'] as double);
  double get lng => (_$data['lng'] as double);
  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$lat = lat;
    result$data['lat'] = l$lat;
    final l$lng = lng;
    result$data['lng'] = l$lng;
    return result$data;
  }

  CopyWith$Input$PointInput<Input$PointInput> get copyWith =>
      CopyWith$Input$PointInput(
        this,
        (i) => i,
      );
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Input$PointInput) || runtimeType != other.runtimeType) {
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

  @override
  int get hashCode {
    final l$lat = lat;
    final l$lng = lng;
    return Object.hashAll([
      l$lat,
      l$lng,
    ]);
  }
}

abstract class CopyWith$Input$PointInput<TRes> {
  factory CopyWith$Input$PointInput(
    Input$PointInput instance,
    TRes Function(Input$PointInput) then,
  ) = _CopyWithImpl$Input$PointInput;

  factory CopyWith$Input$PointInput.stub(TRes res) =
      _CopyWithStubImpl$Input$PointInput;

  TRes call({
    double? lat,
    double? lng,
  });
}

class _CopyWithImpl$Input$PointInput<TRes>
    implements CopyWith$Input$PointInput<TRes> {
  _CopyWithImpl$Input$PointInput(
    this._instance,
    this._then,
  );

  final Input$PointInput _instance;

  final TRes Function(Input$PointInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? lat = _undefined,
    Object? lng = _undefined,
  }) =>
      _then(Input$PointInput._({
        ..._instance._$data,
        if (lat != _undefined && lat != null) 'lat': (lat as double),
        if (lng != _undefined && lng != null) 'lng': (lng as double),
      }));
}

class _CopyWithStubImpl$Input$PointInput<TRes>
    implements CopyWith$Input$PointInput<TRes> {
  _CopyWithStubImpl$Input$PointInput(this._res);

  TRes _res;

  call({
    double? lat,
    double? lng,
  }) =>
      _res;
}

class Input$CursorPaging {
  factory Input$CursorPaging({
    String? before,
    String? after,
    int? first,
    int? last,
  }) =>
      Input$CursorPaging._({
        if (before != null) r'before': before,
        if (after != null) r'after': after,
        if (first != null) r'first': first,
        if (last != null) r'last': last,
      });

  Input$CursorPaging._(this._$data);

  factory Input$CursorPaging.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('before')) {
      final l$before = data['before'];
      result$data['before'] = l$before == null
          ? null
          : fromGraphQLConnectionCursorToDartString(l$before);
    }
    if (data.containsKey('after')) {
      final l$after = data['after'];
      result$data['after'] = l$after == null
          ? null
          : fromGraphQLConnectionCursorToDartString(l$after);
    }
    if (data.containsKey('first')) {
      final l$first = data['first'];
      result$data['first'] = (l$first as int?);
    }
    if (data.containsKey('last')) {
      final l$last = data['last'];
      result$data['last'] = (l$last as int?);
    }
    return Input$CursorPaging._(result$data);
  }

  Map<String, dynamic> _$data;

  String? get before => (_$data['before'] as String?);
  String? get after => (_$data['after'] as String?);
  int? get first => (_$data['first'] as int?);
  int? get last => (_$data['last'] as int?);
  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('before')) {
      final l$before = before;
      result$data['before'] = l$before == null
          ? null
          : fromDartStringToGraphQLConnectionCursor(l$before);
    }
    if (_$data.containsKey('after')) {
      final l$after = after;
      result$data['after'] = l$after == null
          ? null
          : fromDartStringToGraphQLConnectionCursor(l$after);
    }
    if (_$data.containsKey('first')) {
      final l$first = first;
      result$data['first'] = l$first;
    }
    if (_$data.containsKey('last')) {
      final l$last = last;
      result$data['last'] = l$last;
    }
    return result$data;
  }

  CopyWith$Input$CursorPaging<Input$CursorPaging> get copyWith =>
      CopyWith$Input$CursorPaging(
        this,
        (i) => i,
      );
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Input$CursorPaging) || runtimeType != other.runtimeType) {
      return false;
    }
    final l$before = before;
    final lOther$before = other.before;
    if (_$data.containsKey('before') != other._$data.containsKey('before')) {
      return false;
    }
    if (l$before != lOther$before) {
      return false;
    }
    final l$after = after;
    final lOther$after = other.after;
    if (_$data.containsKey('after') != other._$data.containsKey('after')) {
      return false;
    }
    if (l$after != lOther$after) {
      return false;
    }
    final l$first = first;
    final lOther$first = other.first;
    if (_$data.containsKey('first') != other._$data.containsKey('first')) {
      return false;
    }
    if (l$first != lOther$first) {
      return false;
    }
    final l$last = last;
    final lOther$last = other.last;
    if (_$data.containsKey('last') != other._$data.containsKey('last')) {
      return false;
    }
    if (l$last != lOther$last) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$before = before;
    final l$after = after;
    final l$first = first;
    final l$last = last;
    return Object.hashAll([
      _$data.containsKey('before') ? l$before : const {},
      _$data.containsKey('after') ? l$after : const {},
      _$data.containsKey('first') ? l$first : const {},
      _$data.containsKey('last') ? l$last : const {},
    ]);
  }
}

abstract class CopyWith$Input$CursorPaging<TRes> {
  factory CopyWith$Input$CursorPaging(
    Input$CursorPaging instance,
    TRes Function(Input$CursorPaging) then,
  ) = _CopyWithImpl$Input$CursorPaging;

  factory CopyWith$Input$CursorPaging.stub(TRes res) =
      _CopyWithStubImpl$Input$CursorPaging;

  TRes call({
    String? before,
    String? after,
    int? first,
    int? last,
  });
}

class _CopyWithImpl$Input$CursorPaging<TRes>
    implements CopyWith$Input$CursorPaging<TRes> {
  _CopyWithImpl$Input$CursorPaging(
    this._instance,
    this._then,
  );

  final Input$CursorPaging _instance;

  final TRes Function(Input$CursorPaging) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? before = _undefined,
    Object? after = _undefined,
    Object? first = _undefined,
    Object? last = _undefined,
  }) =>
      _then(Input$CursorPaging._({
        ..._instance._$data,
        if (before != _undefined) 'before': (before as String?),
        if (after != _undefined) 'after': (after as String?),
        if (first != _undefined) 'first': (first as int?),
        if (last != _undefined) 'last': (last as int?),
      }));
}

class _CopyWithStubImpl$Input$CursorPaging<TRes>
    implements CopyWith$Input$CursorPaging<TRes> {
  _CopyWithStubImpl$Input$CursorPaging(this._res);

  TRes _res;

  call({
    String? before,
    String? after,
    int? first,
    int? last,
  }) =>
      _res;
}

class Input$CarModelFilter {
  factory Input$CarModelFilter({
    List<Input$CarModelFilter>? and,
    List<Input$CarModelFilter>? or,
    Input$IDFilterComparison? id,
  }) =>
      Input$CarModelFilter._({
        if (and != null) r'and': and,
        if (or != null) r'or': or,
        if (id != null) r'id': id,
      });

  Input$CarModelFilter._(this._$data);

  factory Input$CarModelFilter.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('and')) {
      final l$and = data['and'];
      result$data['and'] = (l$and as List<dynamic>?)
          ?.map(
              (e) => Input$CarModelFilter.fromJson((e as Map<String, dynamic>)))
          .toList();
    }
    if (data.containsKey('or')) {
      final l$or = data['or'];
      result$data['or'] = (l$or as List<dynamic>?)
          ?.map(
              (e) => Input$CarModelFilter.fromJson((e as Map<String, dynamic>)))
          .toList();
    }
    if (data.containsKey('id')) {
      final l$id = data['id'];
      result$data['id'] = l$id == null
          ? null
          : Input$IDFilterComparison.fromJson((l$id as Map<String, dynamic>));
    }
    return Input$CarModelFilter._(result$data);
  }

  Map<String, dynamic> _$data;

  List<Input$CarModelFilter>? get and =>
      (_$data['and'] as List<Input$CarModelFilter>?);
  List<Input$CarModelFilter>? get or =>
      (_$data['or'] as List<Input$CarModelFilter>?);
  Input$IDFilterComparison? get id =>
      (_$data['id'] as Input$IDFilterComparison?);
  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('and')) {
      final l$and = and;
      result$data['and'] = l$and?.map((e) => e.toJson()).toList();
    }
    if (_$data.containsKey('or')) {
      final l$or = or;
      result$data['or'] = l$or?.map((e) => e.toJson()).toList();
    }
    if (_$data.containsKey('id')) {
      final l$id = id;
      result$data['id'] = l$id?.toJson();
    }
    return result$data;
  }

  CopyWith$Input$CarModelFilter<Input$CarModelFilter> get copyWith =>
      CopyWith$Input$CarModelFilter(
        this,
        (i) => i,
      );
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Input$CarModelFilter) || runtimeType != other.runtimeType) {
      return false;
    }
    final l$and = and;
    final lOther$and = other.and;
    if (_$data.containsKey('and') != other._$data.containsKey('and')) {
      return false;
    }
    if (l$and != null && lOther$and != null) {
      if (l$and.length != lOther$and.length) {
        return false;
      }
      for (int i = 0; i < l$and.length; i++) {
        final l$and$entry = l$and[i];
        final lOther$and$entry = lOther$and[i];
        if (l$and$entry != lOther$and$entry) {
          return false;
        }
      }
    } else if (l$and != lOther$and) {
      return false;
    }
    final l$or = or;
    final lOther$or = other.or;
    if (_$data.containsKey('or') != other._$data.containsKey('or')) {
      return false;
    }
    if (l$or != null && lOther$or != null) {
      if (l$or.length != lOther$or.length) {
        return false;
      }
      for (int i = 0; i < l$or.length; i++) {
        final l$or$entry = l$or[i];
        final lOther$or$entry = lOther$or[i];
        if (l$or$entry != lOther$or$entry) {
          return false;
        }
      }
    } else if (l$or != lOther$or) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (_$data.containsKey('id') != other._$data.containsKey('id')) {
      return false;
    }
    if (l$id != lOther$id) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$and = and;
    final l$or = or;
    final l$id = id;
    return Object.hashAll([
      _$data.containsKey('and')
          ? l$and == null
              ? null
              : Object.hashAll(l$and.map((v) => v))
          : const {},
      _$data.containsKey('or')
          ? l$or == null
              ? null
              : Object.hashAll(l$or.map((v) => v))
          : const {},
      _$data.containsKey('id') ? l$id : const {},
    ]);
  }
}

abstract class CopyWith$Input$CarModelFilter<TRes> {
  factory CopyWith$Input$CarModelFilter(
    Input$CarModelFilter instance,
    TRes Function(Input$CarModelFilter) then,
  ) = _CopyWithImpl$Input$CarModelFilter;

  factory CopyWith$Input$CarModelFilter.stub(TRes res) =
      _CopyWithStubImpl$Input$CarModelFilter;

  TRes call({
    List<Input$CarModelFilter>? and,
    List<Input$CarModelFilter>? or,
    Input$IDFilterComparison? id,
  });
  TRes and(
      Iterable<Input$CarModelFilter>? Function(
              Iterable<CopyWith$Input$CarModelFilter<Input$CarModelFilter>>?)
          _fn);
  TRes or(
      Iterable<Input$CarModelFilter>? Function(
              Iterable<CopyWith$Input$CarModelFilter<Input$CarModelFilter>>?)
          _fn);
  CopyWith$Input$IDFilterComparison<TRes> get id;
}

class _CopyWithImpl$Input$CarModelFilter<TRes>
    implements CopyWith$Input$CarModelFilter<TRes> {
  _CopyWithImpl$Input$CarModelFilter(
    this._instance,
    this._then,
  );

  final Input$CarModelFilter _instance;

  final TRes Function(Input$CarModelFilter) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? and = _undefined,
    Object? or = _undefined,
    Object? id = _undefined,
  }) =>
      _then(Input$CarModelFilter._({
        ..._instance._$data,
        if (and != _undefined) 'and': (and as List<Input$CarModelFilter>?),
        if (or != _undefined) 'or': (or as List<Input$CarModelFilter>?),
        if (id != _undefined) 'id': (id as Input$IDFilterComparison?),
      }));
  TRes and(
          Iterable<Input$CarModelFilter>? Function(
                  Iterable<
                      CopyWith$Input$CarModelFilter<Input$CarModelFilter>>?)
              _fn) =>
      call(
          and: _fn(_instance.and?.map((e) => CopyWith$Input$CarModelFilter(
                e,
                (i) => i,
              )))?.toList());
  TRes or(
          Iterable<Input$CarModelFilter>? Function(
                  Iterable<
                      CopyWith$Input$CarModelFilter<Input$CarModelFilter>>?)
              _fn) =>
      call(
          or: _fn(_instance.or?.map((e) => CopyWith$Input$CarModelFilter(
                e,
                (i) => i,
              )))?.toList());
  CopyWith$Input$IDFilterComparison<TRes> get id {
    final local$id = _instance.id;
    return local$id == null
        ? CopyWith$Input$IDFilterComparison.stub(_then(_instance))
        : CopyWith$Input$IDFilterComparison(local$id, (e) => call(id: e));
  }
}

class _CopyWithStubImpl$Input$CarModelFilter<TRes>
    implements CopyWith$Input$CarModelFilter<TRes> {
  _CopyWithStubImpl$Input$CarModelFilter(this._res);

  TRes _res;

  call({
    List<Input$CarModelFilter>? and,
    List<Input$CarModelFilter>? or,
    Input$IDFilterComparison? id,
  }) =>
      _res;
  and(_fn) => _res;
  or(_fn) => _res;
  CopyWith$Input$IDFilterComparison<TRes> get id =>
      CopyWith$Input$IDFilterComparison.stub(_res);
}

class Input$CarModelSort {
  factory Input$CarModelSort({
    required Enum$CarModelSortFields field,
    required Enum$SortDirection direction,
    Enum$SortNulls? nulls,
  }) =>
      Input$CarModelSort._({
        r'field': field,
        r'direction': direction,
        if (nulls != null) r'nulls': nulls,
      });

  Input$CarModelSort._(this._$data);

  factory Input$CarModelSort.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$field = data['field'];
    result$data['field'] =
        fromJson$Enum$CarModelSortFields((l$field as String));
    final l$direction = data['direction'];
    result$data['direction'] =
        fromJson$Enum$SortDirection((l$direction as String));
    if (data.containsKey('nulls')) {
      final l$nulls = data['nulls'];
      result$data['nulls'] =
          l$nulls == null ? null : fromJson$Enum$SortNulls((l$nulls as String));
    }
    return Input$CarModelSort._(result$data);
  }

  Map<String, dynamic> _$data;

  Enum$CarModelSortFields get field =>
      (_$data['field'] as Enum$CarModelSortFields);
  Enum$SortDirection get direction =>
      (_$data['direction'] as Enum$SortDirection);
  Enum$SortNulls? get nulls => (_$data['nulls'] as Enum$SortNulls?);
  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$field = field;
    result$data['field'] = toJson$Enum$CarModelSortFields(l$field);
    final l$direction = direction;
    result$data['direction'] = toJson$Enum$SortDirection(l$direction);
    if (_$data.containsKey('nulls')) {
      final l$nulls = nulls;
      result$data['nulls'] =
          l$nulls == null ? null : toJson$Enum$SortNulls(l$nulls);
    }
    return result$data;
  }

  CopyWith$Input$CarModelSort<Input$CarModelSort> get copyWith =>
      CopyWith$Input$CarModelSort(
        this,
        (i) => i,
      );
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Input$CarModelSort) || runtimeType != other.runtimeType) {
      return false;
    }
    final l$field = field;
    final lOther$field = other.field;
    if (l$field != lOther$field) {
      return false;
    }
    final l$direction = direction;
    final lOther$direction = other.direction;
    if (l$direction != lOther$direction) {
      return false;
    }
    final l$nulls = nulls;
    final lOther$nulls = other.nulls;
    if (_$data.containsKey('nulls') != other._$data.containsKey('nulls')) {
      return false;
    }
    if (l$nulls != lOther$nulls) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$field = field;
    final l$direction = direction;
    final l$nulls = nulls;
    return Object.hashAll([
      l$field,
      l$direction,
      _$data.containsKey('nulls') ? l$nulls : const {},
    ]);
  }
}

abstract class CopyWith$Input$CarModelSort<TRes> {
  factory CopyWith$Input$CarModelSort(
    Input$CarModelSort instance,
    TRes Function(Input$CarModelSort) then,
  ) = _CopyWithImpl$Input$CarModelSort;

  factory CopyWith$Input$CarModelSort.stub(TRes res) =
      _CopyWithStubImpl$Input$CarModelSort;

  TRes call({
    Enum$CarModelSortFields? field,
    Enum$SortDirection? direction,
    Enum$SortNulls? nulls,
  });
}

class _CopyWithImpl$Input$CarModelSort<TRes>
    implements CopyWith$Input$CarModelSort<TRes> {
  _CopyWithImpl$Input$CarModelSort(
    this._instance,
    this._then,
  );

  final Input$CarModelSort _instance;

  final TRes Function(Input$CarModelSort) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? field = _undefined,
    Object? direction = _undefined,
    Object? nulls = _undefined,
  }) =>
      _then(Input$CarModelSort._({
        ..._instance._$data,
        if (field != _undefined && field != null)
          'field': (field as Enum$CarModelSortFields),
        if (direction != _undefined && direction != null)
          'direction': (direction as Enum$SortDirection),
        if (nulls != _undefined) 'nulls': (nulls as Enum$SortNulls?),
      }));
}

class _CopyWithStubImpl$Input$CarModelSort<TRes>
    implements CopyWith$Input$CarModelSort<TRes> {
  _CopyWithStubImpl$Input$CarModelSort(this._res);

  TRes _res;

  call({
    Enum$CarModelSortFields? field,
    Enum$SortDirection? direction,
    Enum$SortNulls? nulls,
  }) =>
      _res;
}

class Input$CarColorFilter {
  factory Input$CarColorFilter({
    List<Input$CarColorFilter>? and,
    List<Input$CarColorFilter>? or,
    Input$IDFilterComparison? id,
  }) =>
      Input$CarColorFilter._({
        if (and != null) r'and': and,
        if (or != null) r'or': or,
        if (id != null) r'id': id,
      });

  Input$CarColorFilter._(this._$data);

  factory Input$CarColorFilter.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('and')) {
      final l$and = data['and'];
      result$data['and'] = (l$and as List<dynamic>?)
          ?.map(
              (e) => Input$CarColorFilter.fromJson((e as Map<String, dynamic>)))
          .toList();
    }
    if (data.containsKey('or')) {
      final l$or = data['or'];
      result$data['or'] = (l$or as List<dynamic>?)
          ?.map(
              (e) => Input$CarColorFilter.fromJson((e as Map<String, dynamic>)))
          .toList();
    }
    if (data.containsKey('id')) {
      final l$id = data['id'];
      result$data['id'] = l$id == null
          ? null
          : Input$IDFilterComparison.fromJson((l$id as Map<String, dynamic>));
    }
    return Input$CarColorFilter._(result$data);
  }

  Map<String, dynamic> _$data;

  List<Input$CarColorFilter>? get and =>
      (_$data['and'] as List<Input$CarColorFilter>?);
  List<Input$CarColorFilter>? get or =>
      (_$data['or'] as List<Input$CarColorFilter>?);
  Input$IDFilterComparison? get id =>
      (_$data['id'] as Input$IDFilterComparison?);
  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('and')) {
      final l$and = and;
      result$data['and'] = l$and?.map((e) => e.toJson()).toList();
    }
    if (_$data.containsKey('or')) {
      final l$or = or;
      result$data['or'] = l$or?.map((e) => e.toJson()).toList();
    }
    if (_$data.containsKey('id')) {
      final l$id = id;
      result$data['id'] = l$id?.toJson();
    }
    return result$data;
  }

  CopyWith$Input$CarColorFilter<Input$CarColorFilter> get copyWith =>
      CopyWith$Input$CarColorFilter(
        this,
        (i) => i,
      );
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Input$CarColorFilter) || runtimeType != other.runtimeType) {
      return false;
    }
    final l$and = and;
    final lOther$and = other.and;
    if (_$data.containsKey('and') != other._$data.containsKey('and')) {
      return false;
    }
    if (l$and != null && lOther$and != null) {
      if (l$and.length != lOther$and.length) {
        return false;
      }
      for (int i = 0; i < l$and.length; i++) {
        final l$and$entry = l$and[i];
        final lOther$and$entry = lOther$and[i];
        if (l$and$entry != lOther$and$entry) {
          return false;
        }
      }
    } else if (l$and != lOther$and) {
      return false;
    }
    final l$or = or;
    final lOther$or = other.or;
    if (_$data.containsKey('or') != other._$data.containsKey('or')) {
      return false;
    }
    if (l$or != null && lOther$or != null) {
      if (l$or.length != lOther$or.length) {
        return false;
      }
      for (int i = 0; i < l$or.length; i++) {
        final l$or$entry = l$or[i];
        final lOther$or$entry = lOther$or[i];
        if (l$or$entry != lOther$or$entry) {
          return false;
        }
      }
    } else if (l$or != lOther$or) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (_$data.containsKey('id') != other._$data.containsKey('id')) {
      return false;
    }
    if (l$id != lOther$id) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$and = and;
    final l$or = or;
    final l$id = id;
    return Object.hashAll([
      _$data.containsKey('and')
          ? l$and == null
              ? null
              : Object.hashAll(l$and.map((v) => v))
          : const {},
      _$data.containsKey('or')
          ? l$or == null
              ? null
              : Object.hashAll(l$or.map((v) => v))
          : const {},
      _$data.containsKey('id') ? l$id : const {},
    ]);
  }
}

abstract class CopyWith$Input$CarColorFilter<TRes> {
  factory CopyWith$Input$CarColorFilter(
    Input$CarColorFilter instance,
    TRes Function(Input$CarColorFilter) then,
  ) = _CopyWithImpl$Input$CarColorFilter;

  factory CopyWith$Input$CarColorFilter.stub(TRes res) =
      _CopyWithStubImpl$Input$CarColorFilter;

  TRes call({
    List<Input$CarColorFilter>? and,
    List<Input$CarColorFilter>? or,
    Input$IDFilterComparison? id,
  });
  TRes and(
      Iterable<Input$CarColorFilter>? Function(
              Iterable<CopyWith$Input$CarColorFilter<Input$CarColorFilter>>?)
          _fn);
  TRes or(
      Iterable<Input$CarColorFilter>? Function(
              Iterable<CopyWith$Input$CarColorFilter<Input$CarColorFilter>>?)
          _fn);
  CopyWith$Input$IDFilterComparison<TRes> get id;
}

class _CopyWithImpl$Input$CarColorFilter<TRes>
    implements CopyWith$Input$CarColorFilter<TRes> {
  _CopyWithImpl$Input$CarColorFilter(
    this._instance,
    this._then,
  );

  final Input$CarColorFilter _instance;

  final TRes Function(Input$CarColorFilter) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? and = _undefined,
    Object? or = _undefined,
    Object? id = _undefined,
  }) =>
      _then(Input$CarColorFilter._({
        ..._instance._$data,
        if (and != _undefined) 'and': (and as List<Input$CarColorFilter>?),
        if (or != _undefined) 'or': (or as List<Input$CarColorFilter>?),
        if (id != _undefined) 'id': (id as Input$IDFilterComparison?),
      }));
  TRes and(
          Iterable<Input$CarColorFilter>? Function(
                  Iterable<
                      CopyWith$Input$CarColorFilter<Input$CarColorFilter>>?)
              _fn) =>
      call(
          and: _fn(_instance.and?.map((e) => CopyWith$Input$CarColorFilter(
                e,
                (i) => i,
              )))?.toList());
  TRes or(
          Iterable<Input$CarColorFilter>? Function(
                  Iterable<
                      CopyWith$Input$CarColorFilter<Input$CarColorFilter>>?)
              _fn) =>
      call(
          or: _fn(_instance.or?.map((e) => CopyWith$Input$CarColorFilter(
                e,
                (i) => i,
              )))?.toList());
  CopyWith$Input$IDFilterComparison<TRes> get id {
    final local$id = _instance.id;
    return local$id == null
        ? CopyWith$Input$IDFilterComparison.stub(_then(_instance))
        : CopyWith$Input$IDFilterComparison(local$id, (e) => call(id: e));
  }
}

class _CopyWithStubImpl$Input$CarColorFilter<TRes>
    implements CopyWith$Input$CarColorFilter<TRes> {
  _CopyWithStubImpl$Input$CarColorFilter(this._res);

  TRes _res;

  call({
    List<Input$CarColorFilter>? and,
    List<Input$CarColorFilter>? or,
    Input$IDFilterComparison? id,
  }) =>
      _res;
  and(_fn) => _res;
  or(_fn) => _res;
  CopyWith$Input$IDFilterComparison<TRes> get id =>
      CopyWith$Input$IDFilterComparison.stub(_res);
}

class Input$CarColorSort {
  factory Input$CarColorSort({
    required Enum$CarColorSortFields field,
    required Enum$SortDirection direction,
    Enum$SortNulls? nulls,
  }) =>
      Input$CarColorSort._({
        r'field': field,
        r'direction': direction,
        if (nulls != null) r'nulls': nulls,
      });

  Input$CarColorSort._(this._$data);

  factory Input$CarColorSort.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$field = data['field'];
    result$data['field'] =
        fromJson$Enum$CarColorSortFields((l$field as String));
    final l$direction = data['direction'];
    result$data['direction'] =
        fromJson$Enum$SortDirection((l$direction as String));
    if (data.containsKey('nulls')) {
      final l$nulls = data['nulls'];
      result$data['nulls'] =
          l$nulls == null ? null : fromJson$Enum$SortNulls((l$nulls as String));
    }
    return Input$CarColorSort._(result$data);
  }

  Map<String, dynamic> _$data;

  Enum$CarColorSortFields get field =>
      (_$data['field'] as Enum$CarColorSortFields);
  Enum$SortDirection get direction =>
      (_$data['direction'] as Enum$SortDirection);
  Enum$SortNulls? get nulls => (_$data['nulls'] as Enum$SortNulls?);
  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$field = field;
    result$data['field'] = toJson$Enum$CarColorSortFields(l$field);
    final l$direction = direction;
    result$data['direction'] = toJson$Enum$SortDirection(l$direction);
    if (_$data.containsKey('nulls')) {
      final l$nulls = nulls;
      result$data['nulls'] =
          l$nulls == null ? null : toJson$Enum$SortNulls(l$nulls);
    }
    return result$data;
  }

  CopyWith$Input$CarColorSort<Input$CarColorSort> get copyWith =>
      CopyWith$Input$CarColorSort(
        this,
        (i) => i,
      );
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Input$CarColorSort) || runtimeType != other.runtimeType) {
      return false;
    }
    final l$field = field;
    final lOther$field = other.field;
    if (l$field != lOther$field) {
      return false;
    }
    final l$direction = direction;
    final lOther$direction = other.direction;
    if (l$direction != lOther$direction) {
      return false;
    }
    final l$nulls = nulls;
    final lOther$nulls = other.nulls;
    if (_$data.containsKey('nulls') != other._$data.containsKey('nulls')) {
      return false;
    }
    if (l$nulls != lOther$nulls) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$field = field;
    final l$direction = direction;
    final l$nulls = nulls;
    return Object.hashAll([
      l$field,
      l$direction,
      _$data.containsKey('nulls') ? l$nulls : const {},
    ]);
  }
}

abstract class CopyWith$Input$CarColorSort<TRes> {
  factory CopyWith$Input$CarColorSort(
    Input$CarColorSort instance,
    TRes Function(Input$CarColorSort) then,
  ) = _CopyWithImpl$Input$CarColorSort;

  factory CopyWith$Input$CarColorSort.stub(TRes res) =
      _CopyWithStubImpl$Input$CarColorSort;

  TRes call({
    Enum$CarColorSortFields? field,
    Enum$SortDirection? direction,
    Enum$SortNulls? nulls,
  });
}

class _CopyWithImpl$Input$CarColorSort<TRes>
    implements CopyWith$Input$CarColorSort<TRes> {
  _CopyWithImpl$Input$CarColorSort(
    this._instance,
    this._then,
  );

  final Input$CarColorSort _instance;

  final TRes Function(Input$CarColorSort) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? field = _undefined,
    Object? direction = _undefined,
    Object? nulls = _undefined,
  }) =>
      _then(Input$CarColorSort._({
        ..._instance._$data,
        if (field != _undefined && field != null)
          'field': (field as Enum$CarColorSortFields),
        if (direction != _undefined && direction != null)
          'direction': (direction as Enum$SortDirection),
        if (nulls != _undefined) 'nulls': (nulls as Enum$SortNulls?),
      }));
}

class _CopyWithStubImpl$Input$CarColorSort<TRes>
    implements CopyWith$Input$CarColorSort<TRes> {
  _CopyWithStubImpl$Input$CarColorSort(this._res);

  TRes _res;

  call({
    Enum$CarColorSortFields? field,
    Enum$SortDirection? direction,
    Enum$SortNulls? nulls,
  }) =>
      _res;
}

class Input$DriverTransacionFilter {
  factory Input$DriverTransacionFilter({
    List<Input$DriverTransacionFilter>? and,
    List<Input$DriverTransacionFilter>? or,
    Input$IDFilterComparison? id,
    Input$IDFilterComparison? driverId,
  }) =>
      Input$DriverTransacionFilter._({
        if (and != null) r'and': and,
        if (or != null) r'or': or,
        if (id != null) r'id': id,
        if (driverId != null) r'driverId': driverId,
      });

  Input$DriverTransacionFilter._(this._$data);

  factory Input$DriverTransacionFilter.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('and')) {
      final l$and = data['and'];
      result$data['and'] = (l$and as List<dynamic>?)
          ?.map((e) => Input$DriverTransacionFilter.fromJson(
              (e as Map<String, dynamic>)))
          .toList();
    }
    if (data.containsKey('or')) {
      final l$or = data['or'];
      result$data['or'] = (l$or as List<dynamic>?)
          ?.map((e) => Input$DriverTransacionFilter.fromJson(
              (e as Map<String, dynamic>)))
          .toList();
    }
    if (data.containsKey('id')) {
      final l$id = data['id'];
      result$data['id'] = l$id == null
          ? null
          : Input$IDFilterComparison.fromJson((l$id as Map<String, dynamic>));
    }
    if (data.containsKey('driverId')) {
      final l$driverId = data['driverId'];
      result$data['driverId'] = l$driverId == null
          ? null
          : Input$IDFilterComparison.fromJson(
              (l$driverId as Map<String, dynamic>));
    }
    return Input$DriverTransacionFilter._(result$data);
  }

  Map<String, dynamic> _$data;

  List<Input$DriverTransacionFilter>? get and =>
      (_$data['and'] as List<Input$DriverTransacionFilter>?);
  List<Input$DriverTransacionFilter>? get or =>
      (_$data['or'] as List<Input$DriverTransacionFilter>?);
  Input$IDFilterComparison? get id =>
      (_$data['id'] as Input$IDFilterComparison?);
  Input$IDFilterComparison? get driverId =>
      (_$data['driverId'] as Input$IDFilterComparison?);
  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('and')) {
      final l$and = and;
      result$data['and'] = l$and?.map((e) => e.toJson()).toList();
    }
    if (_$data.containsKey('or')) {
      final l$or = or;
      result$data['or'] = l$or?.map((e) => e.toJson()).toList();
    }
    if (_$data.containsKey('id')) {
      final l$id = id;
      result$data['id'] = l$id?.toJson();
    }
    if (_$data.containsKey('driverId')) {
      final l$driverId = driverId;
      result$data['driverId'] = l$driverId?.toJson();
    }
    return result$data;
  }

  CopyWith$Input$DriverTransacionFilter<Input$DriverTransacionFilter>
      get copyWith => CopyWith$Input$DriverTransacionFilter(
            this,
            (i) => i,
          );
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Input$DriverTransacionFilter) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$and = and;
    final lOther$and = other.and;
    if (_$data.containsKey('and') != other._$data.containsKey('and')) {
      return false;
    }
    if (l$and != null && lOther$and != null) {
      if (l$and.length != lOther$and.length) {
        return false;
      }
      for (int i = 0; i < l$and.length; i++) {
        final l$and$entry = l$and[i];
        final lOther$and$entry = lOther$and[i];
        if (l$and$entry != lOther$and$entry) {
          return false;
        }
      }
    } else if (l$and != lOther$and) {
      return false;
    }
    final l$or = or;
    final lOther$or = other.or;
    if (_$data.containsKey('or') != other._$data.containsKey('or')) {
      return false;
    }
    if (l$or != null && lOther$or != null) {
      if (l$or.length != lOther$or.length) {
        return false;
      }
      for (int i = 0; i < l$or.length; i++) {
        final l$or$entry = l$or[i];
        final lOther$or$entry = lOther$or[i];
        if (l$or$entry != lOther$or$entry) {
          return false;
        }
      }
    } else if (l$or != lOther$or) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (_$data.containsKey('id') != other._$data.containsKey('id')) {
      return false;
    }
    if (l$id != lOther$id) {
      return false;
    }
    final l$driverId = driverId;
    final lOther$driverId = other.driverId;
    if (_$data.containsKey('driverId') !=
        other._$data.containsKey('driverId')) {
      return false;
    }
    if (l$driverId != lOther$driverId) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$and = and;
    final l$or = or;
    final l$id = id;
    final l$driverId = driverId;
    return Object.hashAll([
      _$data.containsKey('and')
          ? l$and == null
              ? null
              : Object.hashAll(l$and.map((v) => v))
          : const {},
      _$data.containsKey('or')
          ? l$or == null
              ? null
              : Object.hashAll(l$or.map((v) => v))
          : const {},
      _$data.containsKey('id') ? l$id : const {},
      _$data.containsKey('driverId') ? l$driverId : const {},
    ]);
  }
}

abstract class CopyWith$Input$DriverTransacionFilter<TRes> {
  factory CopyWith$Input$DriverTransacionFilter(
    Input$DriverTransacionFilter instance,
    TRes Function(Input$DriverTransacionFilter) then,
  ) = _CopyWithImpl$Input$DriverTransacionFilter;

  factory CopyWith$Input$DriverTransacionFilter.stub(TRes res) =
      _CopyWithStubImpl$Input$DriverTransacionFilter;

  TRes call({
    List<Input$DriverTransacionFilter>? and,
    List<Input$DriverTransacionFilter>? or,
    Input$IDFilterComparison? id,
    Input$IDFilterComparison? driverId,
  });
  TRes and(
      Iterable<Input$DriverTransacionFilter>? Function(
              Iterable<
                  CopyWith$Input$DriverTransacionFilter<
                      Input$DriverTransacionFilter>>?)
          _fn);
  TRes or(
      Iterable<Input$DriverTransacionFilter>? Function(
              Iterable<
                  CopyWith$Input$DriverTransacionFilter<
                      Input$DriverTransacionFilter>>?)
          _fn);
  CopyWith$Input$IDFilterComparison<TRes> get id;
  CopyWith$Input$IDFilterComparison<TRes> get driverId;
}

class _CopyWithImpl$Input$DriverTransacionFilter<TRes>
    implements CopyWith$Input$DriverTransacionFilter<TRes> {
  _CopyWithImpl$Input$DriverTransacionFilter(
    this._instance,
    this._then,
  );

  final Input$DriverTransacionFilter _instance;

  final TRes Function(Input$DriverTransacionFilter) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? and = _undefined,
    Object? or = _undefined,
    Object? id = _undefined,
    Object? driverId = _undefined,
  }) =>
      _then(Input$DriverTransacionFilter._({
        ..._instance._$data,
        if (and != _undefined)
          'and': (and as List<Input$DriverTransacionFilter>?),
        if (or != _undefined) 'or': (or as List<Input$DriverTransacionFilter>?),
        if (id != _undefined) 'id': (id as Input$IDFilterComparison?),
        if (driverId != _undefined)
          'driverId': (driverId as Input$IDFilterComparison?),
      }));
  TRes and(
          Iterable<Input$DriverTransacionFilter>? Function(
                  Iterable<
                      CopyWith$Input$DriverTransacionFilter<
                          Input$DriverTransacionFilter>>?)
              _fn) =>
      call(
          and: _fn(
              _instance.and?.map((e) => CopyWith$Input$DriverTransacionFilter(
                    e,
                    (i) => i,
                  )))?.toList());
  TRes or(
          Iterable<Input$DriverTransacionFilter>? Function(
                  Iterable<
                      CopyWith$Input$DriverTransacionFilter<
                          Input$DriverTransacionFilter>>?)
              _fn) =>
      call(
          or: _fn(
              _instance.or?.map((e) => CopyWith$Input$DriverTransacionFilter(
                    e,
                    (i) => i,
                  )))?.toList());
  CopyWith$Input$IDFilterComparison<TRes> get id {
    final local$id = _instance.id;
    return local$id == null
        ? CopyWith$Input$IDFilterComparison.stub(_then(_instance))
        : CopyWith$Input$IDFilterComparison(local$id, (e) => call(id: e));
  }

  CopyWith$Input$IDFilterComparison<TRes> get driverId {
    final local$driverId = _instance.driverId;
    return local$driverId == null
        ? CopyWith$Input$IDFilterComparison.stub(_then(_instance))
        : CopyWith$Input$IDFilterComparison(
            local$driverId, (e) => call(driverId: e));
  }
}

class _CopyWithStubImpl$Input$DriverTransacionFilter<TRes>
    implements CopyWith$Input$DriverTransacionFilter<TRes> {
  _CopyWithStubImpl$Input$DriverTransacionFilter(this._res);

  TRes _res;

  call({
    List<Input$DriverTransacionFilter>? and,
    List<Input$DriverTransacionFilter>? or,
    Input$IDFilterComparison? id,
    Input$IDFilterComparison? driverId,
  }) =>
      _res;
  and(_fn) => _res;
  or(_fn) => _res;
  CopyWith$Input$IDFilterComparison<TRes> get id =>
      CopyWith$Input$IDFilterComparison.stub(_res);
  CopyWith$Input$IDFilterComparison<TRes> get driverId =>
      CopyWith$Input$IDFilterComparison.stub(_res);
}

class Input$DriverTransacionSort {
  factory Input$DriverTransacionSort({
    required Enum$DriverTransacionSortFields field,
    required Enum$SortDirection direction,
    Enum$SortNulls? nulls,
  }) =>
      Input$DriverTransacionSort._({
        r'field': field,
        r'direction': direction,
        if (nulls != null) r'nulls': nulls,
      });

  Input$DriverTransacionSort._(this._$data);

  factory Input$DriverTransacionSort.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$field = data['field'];
    result$data['field'] =
        fromJson$Enum$DriverTransacionSortFields((l$field as String));
    final l$direction = data['direction'];
    result$data['direction'] =
        fromJson$Enum$SortDirection((l$direction as String));
    if (data.containsKey('nulls')) {
      final l$nulls = data['nulls'];
      result$data['nulls'] =
          l$nulls == null ? null : fromJson$Enum$SortNulls((l$nulls as String));
    }
    return Input$DriverTransacionSort._(result$data);
  }

  Map<String, dynamic> _$data;

  Enum$DriverTransacionSortFields get field =>
      (_$data['field'] as Enum$DriverTransacionSortFields);
  Enum$SortDirection get direction =>
      (_$data['direction'] as Enum$SortDirection);
  Enum$SortNulls? get nulls => (_$data['nulls'] as Enum$SortNulls?);
  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$field = field;
    result$data['field'] = toJson$Enum$DriverTransacionSortFields(l$field);
    final l$direction = direction;
    result$data['direction'] = toJson$Enum$SortDirection(l$direction);
    if (_$data.containsKey('nulls')) {
      final l$nulls = nulls;
      result$data['nulls'] =
          l$nulls == null ? null : toJson$Enum$SortNulls(l$nulls);
    }
    return result$data;
  }

  CopyWith$Input$DriverTransacionSort<Input$DriverTransacionSort>
      get copyWith => CopyWith$Input$DriverTransacionSort(
            this,
            (i) => i,
          );
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Input$DriverTransacionSort) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$field = field;
    final lOther$field = other.field;
    if (l$field != lOther$field) {
      return false;
    }
    final l$direction = direction;
    final lOther$direction = other.direction;
    if (l$direction != lOther$direction) {
      return false;
    }
    final l$nulls = nulls;
    final lOther$nulls = other.nulls;
    if (_$data.containsKey('nulls') != other._$data.containsKey('nulls')) {
      return false;
    }
    if (l$nulls != lOther$nulls) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$field = field;
    final l$direction = direction;
    final l$nulls = nulls;
    return Object.hashAll([
      l$field,
      l$direction,
      _$data.containsKey('nulls') ? l$nulls : const {},
    ]);
  }
}

abstract class CopyWith$Input$DriverTransacionSort<TRes> {
  factory CopyWith$Input$DriverTransacionSort(
    Input$DriverTransacionSort instance,
    TRes Function(Input$DriverTransacionSort) then,
  ) = _CopyWithImpl$Input$DriverTransacionSort;

  factory CopyWith$Input$DriverTransacionSort.stub(TRes res) =
      _CopyWithStubImpl$Input$DriverTransacionSort;

  TRes call({
    Enum$DriverTransacionSortFields? field,
    Enum$SortDirection? direction,
    Enum$SortNulls? nulls,
  });
}

class _CopyWithImpl$Input$DriverTransacionSort<TRes>
    implements CopyWith$Input$DriverTransacionSort<TRes> {
  _CopyWithImpl$Input$DriverTransacionSort(
    this._instance,
    this._then,
  );

  final Input$DriverTransacionSort _instance;

  final TRes Function(Input$DriverTransacionSort) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? field = _undefined,
    Object? direction = _undefined,
    Object? nulls = _undefined,
  }) =>
      _then(Input$DriverTransacionSort._({
        ..._instance._$data,
        if (field != _undefined && field != null)
          'field': (field as Enum$DriverTransacionSortFields),
        if (direction != _undefined && direction != null)
          'direction': (direction as Enum$SortDirection),
        if (nulls != _undefined) 'nulls': (nulls as Enum$SortNulls?),
      }));
}

class _CopyWithStubImpl$Input$DriverTransacionSort<TRes>
    implements CopyWith$Input$DriverTransacionSort<TRes> {
  _CopyWithStubImpl$Input$DriverTransacionSort(this._res);

  TRes _res;

  call({
    Enum$DriverTransacionSortFields? field,
    Enum$SortDirection? direction,
    Enum$SortNulls? nulls,
  }) =>
      _res;
}

class Input$PaymentGatewayFilter {
  factory Input$PaymentGatewayFilter({
    List<Input$PaymentGatewayFilter>? and,
    List<Input$PaymentGatewayFilter>? or,
    Input$IDFilterComparison? id,
    Input$BooleanFieldComparison? enabled,
  }) =>
      Input$PaymentGatewayFilter._({
        if (and != null) r'and': and,
        if (or != null) r'or': or,
        if (id != null) r'id': id,
        if (enabled != null) r'enabled': enabled,
      });

  Input$PaymentGatewayFilter._(this._$data);

  factory Input$PaymentGatewayFilter.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('and')) {
      final l$and = data['and'];
      result$data['and'] = (l$and as List<dynamic>?)
          ?.map((e) =>
              Input$PaymentGatewayFilter.fromJson((e as Map<String, dynamic>)))
          .toList();
    }
    if (data.containsKey('or')) {
      final l$or = data['or'];
      result$data['or'] = (l$or as List<dynamic>?)
          ?.map((e) =>
              Input$PaymentGatewayFilter.fromJson((e as Map<String, dynamic>)))
          .toList();
    }
    if (data.containsKey('id')) {
      final l$id = data['id'];
      result$data['id'] = l$id == null
          ? null
          : Input$IDFilterComparison.fromJson((l$id as Map<String, dynamic>));
    }
    if (data.containsKey('enabled')) {
      final l$enabled = data['enabled'];
      result$data['enabled'] = l$enabled == null
          ? null
          : Input$BooleanFieldComparison.fromJson(
              (l$enabled as Map<String, dynamic>));
    }
    return Input$PaymentGatewayFilter._(result$data);
  }

  Map<String, dynamic> _$data;

  List<Input$PaymentGatewayFilter>? get and =>
      (_$data['and'] as List<Input$PaymentGatewayFilter>?);
  List<Input$PaymentGatewayFilter>? get or =>
      (_$data['or'] as List<Input$PaymentGatewayFilter>?);
  Input$IDFilterComparison? get id =>
      (_$data['id'] as Input$IDFilterComparison?);
  Input$BooleanFieldComparison? get enabled =>
      (_$data['enabled'] as Input$BooleanFieldComparison?);
  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('and')) {
      final l$and = and;
      result$data['and'] = l$and?.map((e) => e.toJson()).toList();
    }
    if (_$data.containsKey('or')) {
      final l$or = or;
      result$data['or'] = l$or?.map((e) => e.toJson()).toList();
    }
    if (_$data.containsKey('id')) {
      final l$id = id;
      result$data['id'] = l$id?.toJson();
    }
    if (_$data.containsKey('enabled')) {
      final l$enabled = enabled;
      result$data['enabled'] = l$enabled?.toJson();
    }
    return result$data;
  }

  CopyWith$Input$PaymentGatewayFilter<Input$PaymentGatewayFilter>
      get copyWith => CopyWith$Input$PaymentGatewayFilter(
            this,
            (i) => i,
          );
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Input$PaymentGatewayFilter) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$and = and;
    final lOther$and = other.and;
    if (_$data.containsKey('and') != other._$data.containsKey('and')) {
      return false;
    }
    if (l$and != null && lOther$and != null) {
      if (l$and.length != lOther$and.length) {
        return false;
      }
      for (int i = 0; i < l$and.length; i++) {
        final l$and$entry = l$and[i];
        final lOther$and$entry = lOther$and[i];
        if (l$and$entry != lOther$and$entry) {
          return false;
        }
      }
    } else if (l$and != lOther$and) {
      return false;
    }
    final l$or = or;
    final lOther$or = other.or;
    if (_$data.containsKey('or') != other._$data.containsKey('or')) {
      return false;
    }
    if (l$or != null && lOther$or != null) {
      if (l$or.length != lOther$or.length) {
        return false;
      }
      for (int i = 0; i < l$or.length; i++) {
        final l$or$entry = l$or[i];
        final lOther$or$entry = lOther$or[i];
        if (l$or$entry != lOther$or$entry) {
          return false;
        }
      }
    } else if (l$or != lOther$or) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (_$data.containsKey('id') != other._$data.containsKey('id')) {
      return false;
    }
    if (l$id != lOther$id) {
      return false;
    }
    final l$enabled = enabled;
    final lOther$enabled = other.enabled;
    if (_$data.containsKey('enabled') != other._$data.containsKey('enabled')) {
      return false;
    }
    if (l$enabled != lOther$enabled) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$and = and;
    final l$or = or;
    final l$id = id;
    final l$enabled = enabled;
    return Object.hashAll([
      _$data.containsKey('and')
          ? l$and == null
              ? null
              : Object.hashAll(l$and.map((v) => v))
          : const {},
      _$data.containsKey('or')
          ? l$or == null
              ? null
              : Object.hashAll(l$or.map((v) => v))
          : const {},
      _$data.containsKey('id') ? l$id : const {},
      _$data.containsKey('enabled') ? l$enabled : const {},
    ]);
  }
}

abstract class CopyWith$Input$PaymentGatewayFilter<TRes> {
  factory CopyWith$Input$PaymentGatewayFilter(
    Input$PaymentGatewayFilter instance,
    TRes Function(Input$PaymentGatewayFilter) then,
  ) = _CopyWithImpl$Input$PaymentGatewayFilter;

  factory CopyWith$Input$PaymentGatewayFilter.stub(TRes res) =
      _CopyWithStubImpl$Input$PaymentGatewayFilter;

  TRes call({
    List<Input$PaymentGatewayFilter>? and,
    List<Input$PaymentGatewayFilter>? or,
    Input$IDFilterComparison? id,
    Input$BooleanFieldComparison? enabled,
  });
  TRes and(
      Iterable<Input$PaymentGatewayFilter>? Function(
              Iterable<
                  CopyWith$Input$PaymentGatewayFilter<
                      Input$PaymentGatewayFilter>>?)
          _fn);
  TRes or(
      Iterable<Input$PaymentGatewayFilter>? Function(
              Iterable<
                  CopyWith$Input$PaymentGatewayFilter<
                      Input$PaymentGatewayFilter>>?)
          _fn);
  CopyWith$Input$IDFilterComparison<TRes> get id;
  CopyWith$Input$BooleanFieldComparison<TRes> get enabled;
}

class _CopyWithImpl$Input$PaymentGatewayFilter<TRes>
    implements CopyWith$Input$PaymentGatewayFilter<TRes> {
  _CopyWithImpl$Input$PaymentGatewayFilter(
    this._instance,
    this._then,
  );

  final Input$PaymentGatewayFilter _instance;

  final TRes Function(Input$PaymentGatewayFilter) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? and = _undefined,
    Object? or = _undefined,
    Object? id = _undefined,
    Object? enabled = _undefined,
  }) =>
      _then(Input$PaymentGatewayFilter._({
        ..._instance._$data,
        if (and != _undefined)
          'and': (and as List<Input$PaymentGatewayFilter>?),
        if (or != _undefined) 'or': (or as List<Input$PaymentGatewayFilter>?),
        if (id != _undefined) 'id': (id as Input$IDFilterComparison?),
        if (enabled != _undefined)
          'enabled': (enabled as Input$BooleanFieldComparison?),
      }));
  TRes and(
          Iterable<Input$PaymentGatewayFilter>? Function(
                  Iterable<
                      CopyWith$Input$PaymentGatewayFilter<
                          Input$PaymentGatewayFilter>>?)
              _fn) =>
      call(
          and:
              _fn(_instance.and?.map((e) => CopyWith$Input$PaymentGatewayFilter(
                    e,
                    (i) => i,
                  )))?.toList());
  TRes or(
          Iterable<Input$PaymentGatewayFilter>? Function(
                  Iterable<
                      CopyWith$Input$PaymentGatewayFilter<
                          Input$PaymentGatewayFilter>>?)
              _fn) =>
      call(
          or: _fn(_instance.or?.map((e) => CopyWith$Input$PaymentGatewayFilter(
                e,
                (i) => i,
              )))?.toList());
  CopyWith$Input$IDFilterComparison<TRes> get id {
    final local$id = _instance.id;
    return local$id == null
        ? CopyWith$Input$IDFilterComparison.stub(_then(_instance))
        : CopyWith$Input$IDFilterComparison(local$id, (e) => call(id: e));
  }

  CopyWith$Input$BooleanFieldComparison<TRes> get enabled {
    final local$enabled = _instance.enabled;
    return local$enabled == null
        ? CopyWith$Input$BooleanFieldComparison.stub(_then(_instance))
        : CopyWith$Input$BooleanFieldComparison(
            local$enabled, (e) => call(enabled: e));
  }
}

class _CopyWithStubImpl$Input$PaymentGatewayFilter<TRes>
    implements CopyWith$Input$PaymentGatewayFilter<TRes> {
  _CopyWithStubImpl$Input$PaymentGatewayFilter(this._res);

  TRes _res;

  call({
    List<Input$PaymentGatewayFilter>? and,
    List<Input$PaymentGatewayFilter>? or,
    Input$IDFilterComparison? id,
    Input$BooleanFieldComparison? enabled,
  }) =>
      _res;
  and(_fn) => _res;
  or(_fn) => _res;
  CopyWith$Input$IDFilterComparison<TRes> get id =>
      CopyWith$Input$IDFilterComparison.stub(_res);
  CopyWith$Input$BooleanFieldComparison<TRes> get enabled =>
      CopyWith$Input$BooleanFieldComparison.stub(_res);
}

class Input$BooleanFieldComparison {
  factory Input$BooleanFieldComparison({
    bool? $is,
    bool? isNot,
  }) =>
      Input$BooleanFieldComparison._({
        if ($is != null) r'is': $is,
        if (isNot != null) r'isNot': isNot,
      });

  Input$BooleanFieldComparison._(this._$data);

  factory Input$BooleanFieldComparison.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('is')) {
      final l$$is = data['is'];
      result$data['is'] = (l$$is as bool?);
    }
    if (data.containsKey('isNot')) {
      final l$isNot = data['isNot'];
      result$data['isNot'] = (l$isNot as bool?);
    }
    return Input$BooleanFieldComparison._(result$data);
  }

  Map<String, dynamic> _$data;

  bool? get $is => (_$data['is'] as bool?);
  bool? get isNot => (_$data['isNot'] as bool?);
  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('is')) {
      final l$$is = $is;
      result$data['is'] = l$$is;
    }
    if (_$data.containsKey('isNot')) {
      final l$isNot = isNot;
      result$data['isNot'] = l$isNot;
    }
    return result$data;
  }

  CopyWith$Input$BooleanFieldComparison<Input$BooleanFieldComparison>
      get copyWith => CopyWith$Input$BooleanFieldComparison(
            this,
            (i) => i,
          );
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Input$BooleanFieldComparison) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$$is = $is;
    final lOther$$is = other.$is;
    if (_$data.containsKey('is') != other._$data.containsKey('is')) {
      return false;
    }
    if (l$$is != lOther$$is) {
      return false;
    }
    final l$isNot = isNot;
    final lOther$isNot = other.isNot;
    if (_$data.containsKey('isNot') != other._$data.containsKey('isNot')) {
      return false;
    }
    if (l$isNot != lOther$isNot) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$$is = $is;
    final l$isNot = isNot;
    return Object.hashAll([
      _$data.containsKey('is') ? l$$is : const {},
      _$data.containsKey('isNot') ? l$isNot : const {},
    ]);
  }
}

abstract class CopyWith$Input$BooleanFieldComparison<TRes> {
  factory CopyWith$Input$BooleanFieldComparison(
    Input$BooleanFieldComparison instance,
    TRes Function(Input$BooleanFieldComparison) then,
  ) = _CopyWithImpl$Input$BooleanFieldComparison;

  factory CopyWith$Input$BooleanFieldComparison.stub(TRes res) =
      _CopyWithStubImpl$Input$BooleanFieldComparison;

  TRes call({
    bool? $is,
    bool? isNot,
  });
}

class _CopyWithImpl$Input$BooleanFieldComparison<TRes>
    implements CopyWith$Input$BooleanFieldComparison<TRes> {
  _CopyWithImpl$Input$BooleanFieldComparison(
    this._instance,
    this._then,
  );

  final Input$BooleanFieldComparison _instance;

  final TRes Function(Input$BooleanFieldComparison) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? $is = _undefined,
    Object? isNot = _undefined,
  }) =>
      _then(Input$BooleanFieldComparison._({
        ..._instance._$data,
        if ($is != _undefined) 'is': ($is as bool?),
        if (isNot != _undefined) 'isNot': (isNot as bool?),
      }));
}

class _CopyWithStubImpl$Input$BooleanFieldComparison<TRes>
    implements CopyWith$Input$BooleanFieldComparison<TRes> {
  _CopyWithStubImpl$Input$BooleanFieldComparison(this._res);

  TRes _res;

  call({
    bool? $is,
    bool? isNot,
  }) =>
      _res;
}

class Input$PaymentGatewaySort {
  factory Input$PaymentGatewaySort({
    required Enum$PaymentGatewaySortFields field,
    required Enum$SortDirection direction,
    Enum$SortNulls? nulls,
  }) =>
      Input$PaymentGatewaySort._({
        r'field': field,
        r'direction': direction,
        if (nulls != null) r'nulls': nulls,
      });

  Input$PaymentGatewaySort._(this._$data);

  factory Input$PaymentGatewaySort.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$field = data['field'];
    result$data['field'] =
        fromJson$Enum$PaymentGatewaySortFields((l$field as String));
    final l$direction = data['direction'];
    result$data['direction'] =
        fromJson$Enum$SortDirection((l$direction as String));
    if (data.containsKey('nulls')) {
      final l$nulls = data['nulls'];
      result$data['nulls'] =
          l$nulls == null ? null : fromJson$Enum$SortNulls((l$nulls as String));
    }
    return Input$PaymentGatewaySort._(result$data);
  }

  Map<String, dynamic> _$data;

  Enum$PaymentGatewaySortFields get field =>
      (_$data['field'] as Enum$PaymentGatewaySortFields);
  Enum$SortDirection get direction =>
      (_$data['direction'] as Enum$SortDirection);
  Enum$SortNulls? get nulls => (_$data['nulls'] as Enum$SortNulls?);
  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$field = field;
    result$data['field'] = toJson$Enum$PaymentGatewaySortFields(l$field);
    final l$direction = direction;
    result$data['direction'] = toJson$Enum$SortDirection(l$direction);
    if (_$data.containsKey('nulls')) {
      final l$nulls = nulls;
      result$data['nulls'] =
          l$nulls == null ? null : toJson$Enum$SortNulls(l$nulls);
    }
    return result$data;
  }

  CopyWith$Input$PaymentGatewaySort<Input$PaymentGatewaySort> get copyWith =>
      CopyWith$Input$PaymentGatewaySort(
        this,
        (i) => i,
      );
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Input$PaymentGatewaySort) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$field = field;
    final lOther$field = other.field;
    if (l$field != lOther$field) {
      return false;
    }
    final l$direction = direction;
    final lOther$direction = other.direction;
    if (l$direction != lOther$direction) {
      return false;
    }
    final l$nulls = nulls;
    final lOther$nulls = other.nulls;
    if (_$data.containsKey('nulls') != other._$data.containsKey('nulls')) {
      return false;
    }
    if (l$nulls != lOther$nulls) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$field = field;
    final l$direction = direction;
    final l$nulls = nulls;
    return Object.hashAll([
      l$field,
      l$direction,
      _$data.containsKey('nulls') ? l$nulls : const {},
    ]);
  }
}

abstract class CopyWith$Input$PaymentGatewaySort<TRes> {
  factory CopyWith$Input$PaymentGatewaySort(
    Input$PaymentGatewaySort instance,
    TRes Function(Input$PaymentGatewaySort) then,
  ) = _CopyWithImpl$Input$PaymentGatewaySort;

  factory CopyWith$Input$PaymentGatewaySort.stub(TRes res) =
      _CopyWithStubImpl$Input$PaymentGatewaySort;

  TRes call({
    Enum$PaymentGatewaySortFields? field,
    Enum$SortDirection? direction,
    Enum$SortNulls? nulls,
  });
}

class _CopyWithImpl$Input$PaymentGatewaySort<TRes>
    implements CopyWith$Input$PaymentGatewaySort<TRes> {
  _CopyWithImpl$Input$PaymentGatewaySort(
    this._instance,
    this._then,
  );

  final Input$PaymentGatewaySort _instance;

  final TRes Function(Input$PaymentGatewaySort) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? field = _undefined,
    Object? direction = _undefined,
    Object? nulls = _undefined,
  }) =>
      _then(Input$PaymentGatewaySort._({
        ..._instance._$data,
        if (field != _undefined && field != null)
          'field': (field as Enum$PaymentGatewaySortFields),
        if (direction != _undefined && direction != null)
          'direction': (direction as Enum$SortDirection),
        if (nulls != _undefined) 'nulls': (nulls as Enum$SortNulls?),
      }));
}

class _CopyWithStubImpl$Input$PaymentGatewaySort<TRes>
    implements CopyWith$Input$PaymentGatewaySort<TRes> {
  _CopyWithStubImpl$Input$PaymentGatewaySort(this._res);

  TRes _res;

  call({
    Enum$PaymentGatewaySortFields? field,
    Enum$SortDirection? direction,
    Enum$SortNulls? nulls,
  }) =>
      _res;
}

class Input$AnnouncementFilter {
  factory Input$AnnouncementFilter({
    List<Input$AnnouncementFilter>? and,
    List<Input$AnnouncementFilter>? or,
    Input$IDFilterComparison? id,
    Input$AnnouncementUserTypeFilterComparison? userType,
  }) =>
      Input$AnnouncementFilter._({
        if (and != null) r'and': and,
        if (or != null) r'or': or,
        if (id != null) r'id': id,
        if (userType != null) r'userType': userType,
      });

  Input$AnnouncementFilter._(this._$data);

  factory Input$AnnouncementFilter.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('and')) {
      final l$and = data['and'];
      result$data['and'] = (l$and as List<dynamic>?)
          ?.map((e) =>
              Input$AnnouncementFilter.fromJson((e as Map<String, dynamic>)))
          .toList();
    }
    if (data.containsKey('or')) {
      final l$or = data['or'];
      result$data['or'] = (l$or as List<dynamic>?)
          ?.map((e) =>
              Input$AnnouncementFilter.fromJson((e as Map<String, dynamic>)))
          .toList();
    }
    if (data.containsKey('id')) {
      final l$id = data['id'];
      result$data['id'] = l$id == null
          ? null
          : Input$IDFilterComparison.fromJson((l$id as Map<String, dynamic>));
    }
    if (data.containsKey('userType')) {
      final l$userType = data['userType'];
      result$data['userType'] = l$userType == null
          ? null
          : Input$AnnouncementUserTypeFilterComparison.fromJson(
              (l$userType as Map<String, dynamic>));
    }
    return Input$AnnouncementFilter._(result$data);
  }

  Map<String, dynamic> _$data;

  List<Input$AnnouncementFilter>? get and =>
      (_$data['and'] as List<Input$AnnouncementFilter>?);
  List<Input$AnnouncementFilter>? get or =>
      (_$data['or'] as List<Input$AnnouncementFilter>?);
  Input$IDFilterComparison? get id =>
      (_$data['id'] as Input$IDFilterComparison?);
  Input$AnnouncementUserTypeFilterComparison? get userType =>
      (_$data['userType'] as Input$AnnouncementUserTypeFilterComparison?);
  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('and')) {
      final l$and = and;
      result$data['and'] = l$and?.map((e) => e.toJson()).toList();
    }
    if (_$data.containsKey('or')) {
      final l$or = or;
      result$data['or'] = l$or?.map((e) => e.toJson()).toList();
    }
    if (_$data.containsKey('id')) {
      final l$id = id;
      result$data['id'] = l$id?.toJson();
    }
    if (_$data.containsKey('userType')) {
      final l$userType = userType;
      result$data['userType'] = l$userType?.toJson();
    }
    return result$data;
  }

  CopyWith$Input$AnnouncementFilter<Input$AnnouncementFilter> get copyWith =>
      CopyWith$Input$AnnouncementFilter(
        this,
        (i) => i,
      );
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Input$AnnouncementFilter) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$and = and;
    final lOther$and = other.and;
    if (_$data.containsKey('and') != other._$data.containsKey('and')) {
      return false;
    }
    if (l$and != null && lOther$and != null) {
      if (l$and.length != lOther$and.length) {
        return false;
      }
      for (int i = 0; i < l$and.length; i++) {
        final l$and$entry = l$and[i];
        final lOther$and$entry = lOther$and[i];
        if (l$and$entry != lOther$and$entry) {
          return false;
        }
      }
    } else if (l$and != lOther$and) {
      return false;
    }
    final l$or = or;
    final lOther$or = other.or;
    if (_$data.containsKey('or') != other._$data.containsKey('or')) {
      return false;
    }
    if (l$or != null && lOther$or != null) {
      if (l$or.length != lOther$or.length) {
        return false;
      }
      for (int i = 0; i < l$or.length; i++) {
        final l$or$entry = l$or[i];
        final lOther$or$entry = lOther$or[i];
        if (l$or$entry != lOther$or$entry) {
          return false;
        }
      }
    } else if (l$or != lOther$or) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (_$data.containsKey('id') != other._$data.containsKey('id')) {
      return false;
    }
    if (l$id != lOther$id) {
      return false;
    }
    final l$userType = userType;
    final lOther$userType = other.userType;
    if (_$data.containsKey('userType') !=
        other._$data.containsKey('userType')) {
      return false;
    }
    if (l$userType != lOther$userType) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$and = and;
    final l$or = or;
    final l$id = id;
    final l$userType = userType;
    return Object.hashAll([
      _$data.containsKey('and')
          ? l$and == null
              ? null
              : Object.hashAll(l$and.map((v) => v))
          : const {},
      _$data.containsKey('or')
          ? l$or == null
              ? null
              : Object.hashAll(l$or.map((v) => v))
          : const {},
      _$data.containsKey('id') ? l$id : const {},
      _$data.containsKey('userType') ? l$userType : const {},
    ]);
  }
}

abstract class CopyWith$Input$AnnouncementFilter<TRes> {
  factory CopyWith$Input$AnnouncementFilter(
    Input$AnnouncementFilter instance,
    TRes Function(Input$AnnouncementFilter) then,
  ) = _CopyWithImpl$Input$AnnouncementFilter;

  factory CopyWith$Input$AnnouncementFilter.stub(TRes res) =
      _CopyWithStubImpl$Input$AnnouncementFilter;

  TRes call({
    List<Input$AnnouncementFilter>? and,
    List<Input$AnnouncementFilter>? or,
    Input$IDFilterComparison? id,
    Input$AnnouncementUserTypeFilterComparison? userType,
  });
  TRes and(
      Iterable<Input$AnnouncementFilter>? Function(
              Iterable<
                  CopyWith$Input$AnnouncementFilter<Input$AnnouncementFilter>>?)
          _fn);
  TRes or(
      Iterable<Input$AnnouncementFilter>? Function(
              Iterable<
                  CopyWith$Input$AnnouncementFilter<Input$AnnouncementFilter>>?)
          _fn);
  CopyWith$Input$IDFilterComparison<TRes> get id;
  CopyWith$Input$AnnouncementUserTypeFilterComparison<TRes> get userType;
}

class _CopyWithImpl$Input$AnnouncementFilter<TRes>
    implements CopyWith$Input$AnnouncementFilter<TRes> {
  _CopyWithImpl$Input$AnnouncementFilter(
    this._instance,
    this._then,
  );

  final Input$AnnouncementFilter _instance;

  final TRes Function(Input$AnnouncementFilter) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? and = _undefined,
    Object? or = _undefined,
    Object? id = _undefined,
    Object? userType = _undefined,
  }) =>
      _then(Input$AnnouncementFilter._({
        ..._instance._$data,
        if (and != _undefined) 'and': (and as List<Input$AnnouncementFilter>?),
        if (or != _undefined) 'or': (or as List<Input$AnnouncementFilter>?),
        if (id != _undefined) 'id': (id as Input$IDFilterComparison?),
        if (userType != _undefined)
          'userType': (userType as Input$AnnouncementUserTypeFilterComparison?),
      }));
  TRes and(
          Iterable<Input$AnnouncementFilter>? Function(
                  Iterable<
                      CopyWith$Input$AnnouncementFilter<
                          Input$AnnouncementFilter>>?)
              _fn) =>
      call(
          and: _fn(_instance.and?.map((e) => CopyWith$Input$AnnouncementFilter(
                e,
                (i) => i,
              )))?.toList());
  TRes or(
          Iterable<Input$AnnouncementFilter>? Function(
                  Iterable<
                      CopyWith$Input$AnnouncementFilter<
                          Input$AnnouncementFilter>>?)
              _fn) =>
      call(
          or: _fn(_instance.or?.map((e) => CopyWith$Input$AnnouncementFilter(
                e,
                (i) => i,
              )))?.toList());
  CopyWith$Input$IDFilterComparison<TRes> get id {
    final local$id = _instance.id;
    return local$id == null
        ? CopyWith$Input$IDFilterComparison.stub(_then(_instance))
        : CopyWith$Input$IDFilterComparison(local$id, (e) => call(id: e));
  }

  CopyWith$Input$AnnouncementUserTypeFilterComparison<TRes> get userType {
    final local$userType = _instance.userType;
    return local$userType == null
        ? CopyWith$Input$AnnouncementUserTypeFilterComparison.stub(
            _then(_instance))
        : CopyWith$Input$AnnouncementUserTypeFilterComparison(
            local$userType, (e) => call(userType: e));
  }
}

class _CopyWithStubImpl$Input$AnnouncementFilter<TRes>
    implements CopyWith$Input$AnnouncementFilter<TRes> {
  _CopyWithStubImpl$Input$AnnouncementFilter(this._res);

  TRes _res;

  call({
    List<Input$AnnouncementFilter>? and,
    List<Input$AnnouncementFilter>? or,
    Input$IDFilterComparison? id,
    Input$AnnouncementUserTypeFilterComparison? userType,
  }) =>
      _res;
  and(_fn) => _res;
  or(_fn) => _res;
  CopyWith$Input$IDFilterComparison<TRes> get id =>
      CopyWith$Input$IDFilterComparison.stub(_res);
  CopyWith$Input$AnnouncementUserTypeFilterComparison<TRes> get userType =>
      CopyWith$Input$AnnouncementUserTypeFilterComparison.stub(_res);
}

class Input$AnnouncementUserTypeFilterComparison {
  factory Input$AnnouncementUserTypeFilterComparison({
    bool? $is,
    bool? isNot,
    Enum$AnnouncementUserType? eq,
    Enum$AnnouncementUserType? neq,
    Enum$AnnouncementUserType? gt,
    Enum$AnnouncementUserType? gte,
    Enum$AnnouncementUserType? lt,
    Enum$AnnouncementUserType? lte,
    Enum$AnnouncementUserType? like,
    Enum$AnnouncementUserType? notLike,
    Enum$AnnouncementUserType? iLike,
    Enum$AnnouncementUserType? notILike,
    List<Enum$AnnouncementUserType>? $in,
    List<Enum$AnnouncementUserType>? notIn,
  }) =>
      Input$AnnouncementUserTypeFilterComparison._({
        if ($is != null) r'is': $is,
        if (isNot != null) r'isNot': isNot,
        if (eq != null) r'eq': eq,
        if (neq != null) r'neq': neq,
        if (gt != null) r'gt': gt,
        if (gte != null) r'gte': gte,
        if (lt != null) r'lt': lt,
        if (lte != null) r'lte': lte,
        if (like != null) r'like': like,
        if (notLike != null) r'notLike': notLike,
        if (iLike != null) r'iLike': iLike,
        if (notILike != null) r'notILike': notILike,
        if ($in != null) r'in': $in,
        if (notIn != null) r'notIn': notIn,
      });

  Input$AnnouncementUserTypeFilterComparison._(this._$data);

  factory Input$AnnouncementUserTypeFilterComparison.fromJson(
      Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('is')) {
      final l$$is = data['is'];
      result$data['is'] = (l$$is as bool?);
    }
    if (data.containsKey('isNot')) {
      final l$isNot = data['isNot'];
      result$data['isNot'] = (l$isNot as bool?);
    }
    if (data.containsKey('eq')) {
      final l$eq = data['eq'];
      result$data['eq'] = l$eq == null
          ? null
          : fromJson$Enum$AnnouncementUserType((l$eq as String));
    }
    if (data.containsKey('neq')) {
      final l$neq = data['neq'];
      result$data['neq'] = l$neq == null
          ? null
          : fromJson$Enum$AnnouncementUserType((l$neq as String));
    }
    if (data.containsKey('gt')) {
      final l$gt = data['gt'];
      result$data['gt'] = l$gt == null
          ? null
          : fromJson$Enum$AnnouncementUserType((l$gt as String));
    }
    if (data.containsKey('gte')) {
      final l$gte = data['gte'];
      result$data['gte'] = l$gte == null
          ? null
          : fromJson$Enum$AnnouncementUserType((l$gte as String));
    }
    if (data.containsKey('lt')) {
      final l$lt = data['lt'];
      result$data['lt'] = l$lt == null
          ? null
          : fromJson$Enum$AnnouncementUserType((l$lt as String));
    }
    if (data.containsKey('lte')) {
      final l$lte = data['lte'];
      result$data['lte'] = l$lte == null
          ? null
          : fromJson$Enum$AnnouncementUserType((l$lte as String));
    }
    if (data.containsKey('like')) {
      final l$like = data['like'];
      result$data['like'] = l$like == null
          ? null
          : fromJson$Enum$AnnouncementUserType((l$like as String));
    }
    if (data.containsKey('notLike')) {
      final l$notLike = data['notLike'];
      result$data['notLike'] = l$notLike == null
          ? null
          : fromJson$Enum$AnnouncementUserType((l$notLike as String));
    }
    if (data.containsKey('iLike')) {
      final l$iLike = data['iLike'];
      result$data['iLike'] = l$iLike == null
          ? null
          : fromJson$Enum$AnnouncementUserType((l$iLike as String));
    }
    if (data.containsKey('notILike')) {
      final l$notILike = data['notILike'];
      result$data['notILike'] = l$notILike == null
          ? null
          : fromJson$Enum$AnnouncementUserType((l$notILike as String));
    }
    if (data.containsKey('in')) {
      final l$$in = data['in'];
      result$data['in'] = (l$$in as List<dynamic>?)
          ?.map((e) => fromJson$Enum$AnnouncementUserType((e as String)))
          .toList();
    }
    if (data.containsKey('notIn')) {
      final l$notIn = data['notIn'];
      result$data['notIn'] = (l$notIn as List<dynamic>?)
          ?.map((e) => fromJson$Enum$AnnouncementUserType((e as String)))
          .toList();
    }
    return Input$AnnouncementUserTypeFilterComparison._(result$data);
  }

  Map<String, dynamic> _$data;

  bool? get $is => (_$data['is'] as bool?);
  bool? get isNot => (_$data['isNot'] as bool?);
  Enum$AnnouncementUserType? get eq =>
      (_$data['eq'] as Enum$AnnouncementUserType?);
  Enum$AnnouncementUserType? get neq =>
      (_$data['neq'] as Enum$AnnouncementUserType?);
  Enum$AnnouncementUserType? get gt =>
      (_$data['gt'] as Enum$AnnouncementUserType?);
  Enum$AnnouncementUserType? get gte =>
      (_$data['gte'] as Enum$AnnouncementUserType?);
  Enum$AnnouncementUserType? get lt =>
      (_$data['lt'] as Enum$AnnouncementUserType?);
  Enum$AnnouncementUserType? get lte =>
      (_$data['lte'] as Enum$AnnouncementUserType?);
  Enum$AnnouncementUserType? get like =>
      (_$data['like'] as Enum$AnnouncementUserType?);
  Enum$AnnouncementUserType? get notLike =>
      (_$data['notLike'] as Enum$AnnouncementUserType?);
  Enum$AnnouncementUserType? get iLike =>
      (_$data['iLike'] as Enum$AnnouncementUserType?);
  Enum$AnnouncementUserType? get notILike =>
      (_$data['notILike'] as Enum$AnnouncementUserType?);
  List<Enum$AnnouncementUserType>? get $in =>
      (_$data['in'] as List<Enum$AnnouncementUserType>?);
  List<Enum$AnnouncementUserType>? get notIn =>
      (_$data['notIn'] as List<Enum$AnnouncementUserType>?);
  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('is')) {
      final l$$is = $is;
      result$data['is'] = l$$is;
    }
    if (_$data.containsKey('isNot')) {
      final l$isNot = isNot;
      result$data['isNot'] = l$isNot;
    }
    if (_$data.containsKey('eq')) {
      final l$eq = eq;
      result$data['eq'] =
          l$eq == null ? null : toJson$Enum$AnnouncementUserType(l$eq);
    }
    if (_$data.containsKey('neq')) {
      final l$neq = neq;
      result$data['neq'] =
          l$neq == null ? null : toJson$Enum$AnnouncementUserType(l$neq);
    }
    if (_$data.containsKey('gt')) {
      final l$gt = gt;
      result$data['gt'] =
          l$gt == null ? null : toJson$Enum$AnnouncementUserType(l$gt);
    }
    if (_$data.containsKey('gte')) {
      final l$gte = gte;
      result$data['gte'] =
          l$gte == null ? null : toJson$Enum$AnnouncementUserType(l$gte);
    }
    if (_$data.containsKey('lt')) {
      final l$lt = lt;
      result$data['lt'] =
          l$lt == null ? null : toJson$Enum$AnnouncementUserType(l$lt);
    }
    if (_$data.containsKey('lte')) {
      final l$lte = lte;
      result$data['lte'] =
          l$lte == null ? null : toJson$Enum$AnnouncementUserType(l$lte);
    }
    if (_$data.containsKey('like')) {
      final l$like = like;
      result$data['like'] =
          l$like == null ? null : toJson$Enum$AnnouncementUserType(l$like);
    }
    if (_$data.containsKey('notLike')) {
      final l$notLike = notLike;
      result$data['notLike'] = l$notLike == null
          ? null
          : toJson$Enum$AnnouncementUserType(l$notLike);
    }
    if (_$data.containsKey('iLike')) {
      final l$iLike = iLike;
      result$data['iLike'] =
          l$iLike == null ? null : toJson$Enum$AnnouncementUserType(l$iLike);
    }
    if (_$data.containsKey('notILike')) {
      final l$notILike = notILike;
      result$data['notILike'] = l$notILike == null
          ? null
          : toJson$Enum$AnnouncementUserType(l$notILike);
    }
    if (_$data.containsKey('in')) {
      final l$$in = $in;
      result$data['in'] =
          l$$in?.map((e) => toJson$Enum$AnnouncementUserType(e)).toList();
    }
    if (_$data.containsKey('notIn')) {
      final l$notIn = notIn;
      result$data['notIn'] =
          l$notIn?.map((e) => toJson$Enum$AnnouncementUserType(e)).toList();
    }
    return result$data;
  }

  CopyWith$Input$AnnouncementUserTypeFilterComparison<
          Input$AnnouncementUserTypeFilterComparison>
      get copyWith => CopyWith$Input$AnnouncementUserTypeFilterComparison(
            this,
            (i) => i,
          );
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Input$AnnouncementUserTypeFilterComparison) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$$is = $is;
    final lOther$$is = other.$is;
    if (_$data.containsKey('is') != other._$data.containsKey('is')) {
      return false;
    }
    if (l$$is != lOther$$is) {
      return false;
    }
    final l$isNot = isNot;
    final lOther$isNot = other.isNot;
    if (_$data.containsKey('isNot') != other._$data.containsKey('isNot')) {
      return false;
    }
    if (l$isNot != lOther$isNot) {
      return false;
    }
    final l$eq = eq;
    final lOther$eq = other.eq;
    if (_$data.containsKey('eq') != other._$data.containsKey('eq')) {
      return false;
    }
    if (l$eq != lOther$eq) {
      return false;
    }
    final l$neq = neq;
    final lOther$neq = other.neq;
    if (_$data.containsKey('neq') != other._$data.containsKey('neq')) {
      return false;
    }
    if (l$neq != lOther$neq) {
      return false;
    }
    final l$gt = gt;
    final lOther$gt = other.gt;
    if (_$data.containsKey('gt') != other._$data.containsKey('gt')) {
      return false;
    }
    if (l$gt != lOther$gt) {
      return false;
    }
    final l$gte = gte;
    final lOther$gte = other.gte;
    if (_$data.containsKey('gte') != other._$data.containsKey('gte')) {
      return false;
    }
    if (l$gte != lOther$gte) {
      return false;
    }
    final l$lt = lt;
    final lOther$lt = other.lt;
    if (_$data.containsKey('lt') != other._$data.containsKey('lt')) {
      return false;
    }
    if (l$lt != lOther$lt) {
      return false;
    }
    final l$lte = lte;
    final lOther$lte = other.lte;
    if (_$data.containsKey('lte') != other._$data.containsKey('lte')) {
      return false;
    }
    if (l$lte != lOther$lte) {
      return false;
    }
    final l$like = like;
    final lOther$like = other.like;
    if (_$data.containsKey('like') != other._$data.containsKey('like')) {
      return false;
    }
    if (l$like != lOther$like) {
      return false;
    }
    final l$notLike = notLike;
    final lOther$notLike = other.notLike;
    if (_$data.containsKey('notLike') != other._$data.containsKey('notLike')) {
      return false;
    }
    if (l$notLike != lOther$notLike) {
      return false;
    }
    final l$iLike = iLike;
    final lOther$iLike = other.iLike;
    if (_$data.containsKey('iLike') != other._$data.containsKey('iLike')) {
      return false;
    }
    if (l$iLike != lOther$iLike) {
      return false;
    }
    final l$notILike = notILike;
    final lOther$notILike = other.notILike;
    if (_$data.containsKey('notILike') !=
        other._$data.containsKey('notILike')) {
      return false;
    }
    if (l$notILike != lOther$notILike) {
      return false;
    }
    final l$$in = $in;
    final lOther$$in = other.$in;
    if (_$data.containsKey('in') != other._$data.containsKey('in')) {
      return false;
    }
    if (l$$in != null && lOther$$in != null) {
      if (l$$in.length != lOther$$in.length) {
        return false;
      }
      for (int i = 0; i < l$$in.length; i++) {
        final l$$in$entry = l$$in[i];
        final lOther$$in$entry = lOther$$in[i];
        if (l$$in$entry != lOther$$in$entry) {
          return false;
        }
      }
    } else if (l$$in != lOther$$in) {
      return false;
    }
    final l$notIn = notIn;
    final lOther$notIn = other.notIn;
    if (_$data.containsKey('notIn') != other._$data.containsKey('notIn')) {
      return false;
    }
    if (l$notIn != null && lOther$notIn != null) {
      if (l$notIn.length != lOther$notIn.length) {
        return false;
      }
      for (int i = 0; i < l$notIn.length; i++) {
        final l$notIn$entry = l$notIn[i];
        final lOther$notIn$entry = lOther$notIn[i];
        if (l$notIn$entry != lOther$notIn$entry) {
          return false;
        }
      }
    } else if (l$notIn != lOther$notIn) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$$is = $is;
    final l$isNot = isNot;
    final l$eq = eq;
    final l$neq = neq;
    final l$gt = gt;
    final l$gte = gte;
    final l$lt = lt;
    final l$lte = lte;
    final l$like = like;
    final l$notLike = notLike;
    final l$iLike = iLike;
    final l$notILike = notILike;
    final l$$in = $in;
    final l$notIn = notIn;
    return Object.hashAll([
      _$data.containsKey('is') ? l$$is : const {},
      _$data.containsKey('isNot') ? l$isNot : const {},
      _$data.containsKey('eq') ? l$eq : const {},
      _$data.containsKey('neq') ? l$neq : const {},
      _$data.containsKey('gt') ? l$gt : const {},
      _$data.containsKey('gte') ? l$gte : const {},
      _$data.containsKey('lt') ? l$lt : const {},
      _$data.containsKey('lte') ? l$lte : const {},
      _$data.containsKey('like') ? l$like : const {},
      _$data.containsKey('notLike') ? l$notLike : const {},
      _$data.containsKey('iLike') ? l$iLike : const {},
      _$data.containsKey('notILike') ? l$notILike : const {},
      _$data.containsKey('in')
          ? l$$in == null
              ? null
              : Object.hashAll(l$$in.map((v) => v))
          : const {},
      _$data.containsKey('notIn')
          ? l$notIn == null
              ? null
              : Object.hashAll(l$notIn.map((v) => v))
          : const {},
    ]);
  }
}

abstract class CopyWith$Input$AnnouncementUserTypeFilterComparison<TRes> {
  factory CopyWith$Input$AnnouncementUserTypeFilterComparison(
    Input$AnnouncementUserTypeFilterComparison instance,
    TRes Function(Input$AnnouncementUserTypeFilterComparison) then,
  ) = _CopyWithImpl$Input$AnnouncementUserTypeFilterComparison;

  factory CopyWith$Input$AnnouncementUserTypeFilterComparison.stub(TRes res) =
      _CopyWithStubImpl$Input$AnnouncementUserTypeFilterComparison;

  TRes call({
    bool? $is,
    bool? isNot,
    Enum$AnnouncementUserType? eq,
    Enum$AnnouncementUserType? neq,
    Enum$AnnouncementUserType? gt,
    Enum$AnnouncementUserType? gte,
    Enum$AnnouncementUserType? lt,
    Enum$AnnouncementUserType? lte,
    Enum$AnnouncementUserType? like,
    Enum$AnnouncementUserType? notLike,
    Enum$AnnouncementUserType? iLike,
    Enum$AnnouncementUserType? notILike,
    List<Enum$AnnouncementUserType>? $in,
    List<Enum$AnnouncementUserType>? notIn,
  });
}

class _CopyWithImpl$Input$AnnouncementUserTypeFilterComparison<TRes>
    implements CopyWith$Input$AnnouncementUserTypeFilterComparison<TRes> {
  _CopyWithImpl$Input$AnnouncementUserTypeFilterComparison(
    this._instance,
    this._then,
  );

  final Input$AnnouncementUserTypeFilterComparison _instance;

  final TRes Function(Input$AnnouncementUserTypeFilterComparison) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? $is = _undefined,
    Object? isNot = _undefined,
    Object? eq = _undefined,
    Object? neq = _undefined,
    Object? gt = _undefined,
    Object? gte = _undefined,
    Object? lt = _undefined,
    Object? lte = _undefined,
    Object? like = _undefined,
    Object? notLike = _undefined,
    Object? iLike = _undefined,
    Object? notILike = _undefined,
    Object? $in = _undefined,
    Object? notIn = _undefined,
  }) =>
      _then(Input$AnnouncementUserTypeFilterComparison._({
        ..._instance._$data,
        if ($is != _undefined) 'is': ($is as bool?),
        if (isNot != _undefined) 'isNot': (isNot as bool?),
        if (eq != _undefined) 'eq': (eq as Enum$AnnouncementUserType?),
        if (neq != _undefined) 'neq': (neq as Enum$AnnouncementUserType?),
        if (gt != _undefined) 'gt': (gt as Enum$AnnouncementUserType?),
        if (gte != _undefined) 'gte': (gte as Enum$AnnouncementUserType?),
        if (lt != _undefined) 'lt': (lt as Enum$AnnouncementUserType?),
        if (lte != _undefined) 'lte': (lte as Enum$AnnouncementUserType?),
        if (like != _undefined) 'like': (like as Enum$AnnouncementUserType?),
        if (notLike != _undefined)
          'notLike': (notLike as Enum$AnnouncementUserType?),
        if (iLike != _undefined) 'iLike': (iLike as Enum$AnnouncementUserType?),
        if (notILike != _undefined)
          'notILike': (notILike as Enum$AnnouncementUserType?),
        if ($in != _undefined) 'in': ($in as List<Enum$AnnouncementUserType>?),
        if (notIn != _undefined)
          'notIn': (notIn as List<Enum$AnnouncementUserType>?),
      }));
}

class _CopyWithStubImpl$Input$AnnouncementUserTypeFilterComparison<TRes>
    implements CopyWith$Input$AnnouncementUserTypeFilterComparison<TRes> {
  _CopyWithStubImpl$Input$AnnouncementUserTypeFilterComparison(this._res);

  TRes _res;

  call({
    bool? $is,
    bool? isNot,
    Enum$AnnouncementUserType? eq,
    Enum$AnnouncementUserType? neq,
    Enum$AnnouncementUserType? gt,
    Enum$AnnouncementUserType? gte,
    Enum$AnnouncementUserType? lt,
    Enum$AnnouncementUserType? lte,
    Enum$AnnouncementUserType? like,
    Enum$AnnouncementUserType? notLike,
    Enum$AnnouncementUserType? iLike,
    Enum$AnnouncementUserType? notILike,
    List<Enum$AnnouncementUserType>? $in,
    List<Enum$AnnouncementUserType>? notIn,
  }) =>
      _res;
}

class Input$AnnouncementSort {
  factory Input$AnnouncementSort({
    required Enum$AnnouncementSortFields field,
    required Enum$SortDirection direction,
    Enum$SortNulls? nulls,
  }) =>
      Input$AnnouncementSort._({
        r'field': field,
        r'direction': direction,
        if (nulls != null) r'nulls': nulls,
      });

  Input$AnnouncementSort._(this._$data);

  factory Input$AnnouncementSort.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$field = data['field'];
    result$data['field'] =
        fromJson$Enum$AnnouncementSortFields((l$field as String));
    final l$direction = data['direction'];
    result$data['direction'] =
        fromJson$Enum$SortDirection((l$direction as String));
    if (data.containsKey('nulls')) {
      final l$nulls = data['nulls'];
      result$data['nulls'] =
          l$nulls == null ? null : fromJson$Enum$SortNulls((l$nulls as String));
    }
    return Input$AnnouncementSort._(result$data);
  }

  Map<String, dynamic> _$data;

  Enum$AnnouncementSortFields get field =>
      (_$data['field'] as Enum$AnnouncementSortFields);
  Enum$SortDirection get direction =>
      (_$data['direction'] as Enum$SortDirection);
  Enum$SortNulls? get nulls => (_$data['nulls'] as Enum$SortNulls?);
  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$field = field;
    result$data['field'] = toJson$Enum$AnnouncementSortFields(l$field);
    final l$direction = direction;
    result$data['direction'] = toJson$Enum$SortDirection(l$direction);
    if (_$data.containsKey('nulls')) {
      final l$nulls = nulls;
      result$data['nulls'] =
          l$nulls == null ? null : toJson$Enum$SortNulls(l$nulls);
    }
    return result$data;
  }

  CopyWith$Input$AnnouncementSort<Input$AnnouncementSort> get copyWith =>
      CopyWith$Input$AnnouncementSort(
        this,
        (i) => i,
      );
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Input$AnnouncementSort) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$field = field;
    final lOther$field = other.field;
    if (l$field != lOther$field) {
      return false;
    }
    final l$direction = direction;
    final lOther$direction = other.direction;
    if (l$direction != lOther$direction) {
      return false;
    }
    final l$nulls = nulls;
    final lOther$nulls = other.nulls;
    if (_$data.containsKey('nulls') != other._$data.containsKey('nulls')) {
      return false;
    }
    if (l$nulls != lOther$nulls) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$field = field;
    final l$direction = direction;
    final l$nulls = nulls;
    return Object.hashAll([
      l$field,
      l$direction,
      _$data.containsKey('nulls') ? l$nulls : const {},
    ]);
  }
}

abstract class CopyWith$Input$AnnouncementSort<TRes> {
  factory CopyWith$Input$AnnouncementSort(
    Input$AnnouncementSort instance,
    TRes Function(Input$AnnouncementSort) then,
  ) = _CopyWithImpl$Input$AnnouncementSort;

  factory CopyWith$Input$AnnouncementSort.stub(TRes res) =
      _CopyWithStubImpl$Input$AnnouncementSort;

  TRes call({
    Enum$AnnouncementSortFields? field,
    Enum$SortDirection? direction,
    Enum$SortNulls? nulls,
  });
}

class _CopyWithImpl$Input$AnnouncementSort<TRes>
    implements CopyWith$Input$AnnouncementSort<TRes> {
  _CopyWithImpl$Input$AnnouncementSort(
    this._instance,
    this._then,
  );

  final Input$AnnouncementSort _instance;

  final TRes Function(Input$AnnouncementSort) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? field = _undefined,
    Object? direction = _undefined,
    Object? nulls = _undefined,
  }) =>
      _then(Input$AnnouncementSort._({
        ..._instance._$data,
        if (field != _undefined && field != null)
          'field': (field as Enum$AnnouncementSortFields),
        if (direction != _undefined && direction != null)
          'direction': (direction as Enum$SortDirection),
        if (nulls != _undefined) 'nulls': (nulls as Enum$SortNulls?),
      }));
}

class _CopyWithStubImpl$Input$AnnouncementSort<TRes>
    implements CopyWith$Input$AnnouncementSort<TRes> {
  _CopyWithStubImpl$Input$AnnouncementSort(this._res);

  TRes _res;

  call({
    Enum$AnnouncementSortFields? field,
    Enum$SortDirection? direction,
    Enum$SortNulls? nulls,
  }) =>
      _res;
}

class Input$LoginInput {
  factory Input$LoginInput({required String firebaseToken}) =>
      Input$LoginInput._({
        r'firebaseToken': firebaseToken,
      });

  Input$LoginInput._(this._$data);

  factory Input$LoginInput.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$firebaseToken = data['firebaseToken'];
    result$data['firebaseToken'] = (l$firebaseToken as String);
    return Input$LoginInput._(result$data);
  }

  Map<String, dynamic> _$data;

  String get firebaseToken => (_$data['firebaseToken'] as String);
  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$firebaseToken = firebaseToken;
    result$data['firebaseToken'] = l$firebaseToken;
    return result$data;
  }

  CopyWith$Input$LoginInput<Input$LoginInput> get copyWith =>
      CopyWith$Input$LoginInput(
        this,
        (i) => i,
      );
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Input$LoginInput) || runtimeType != other.runtimeType) {
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

abstract class CopyWith$Input$LoginInput<TRes> {
  factory CopyWith$Input$LoginInput(
    Input$LoginInput instance,
    TRes Function(Input$LoginInput) then,
  ) = _CopyWithImpl$Input$LoginInput;

  factory CopyWith$Input$LoginInput.stub(TRes res) =
      _CopyWithStubImpl$Input$LoginInput;

  TRes call({String? firebaseToken});
}

class _CopyWithImpl$Input$LoginInput<TRes>
    implements CopyWith$Input$LoginInput<TRes> {
  _CopyWithImpl$Input$LoginInput(
    this._instance,
    this._then,
  );

  final Input$LoginInput _instance;

  final TRes Function(Input$LoginInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? firebaseToken = _undefined}) => _then(Input$LoginInput._({
        ..._instance._$data,
        if (firebaseToken != _undefined && firebaseToken != null)
          'firebaseToken': (firebaseToken as String),
      }));
}

class _CopyWithStubImpl$Input$LoginInput<TRes>
    implements CopyWith$Input$LoginInput<TRes> {
  _CopyWithStubImpl$Input$LoginInput(this._res);

  TRes _res;

  call({String? firebaseToken}) => _res;
}

class Input$UpdateOneOrderInput {
  factory Input$UpdateOneOrderInput({
    required String id,
    required Input$UpdateOrderInput update,
  }) =>
      Input$UpdateOneOrderInput._({
        r'id': id,
        r'update': update,
      });

  Input$UpdateOneOrderInput._(this._$data);

  factory Input$UpdateOneOrderInput.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$id = data['id'];
    result$data['id'] = (l$id as String);
    final l$update = data['update'];
    result$data['update'] =
        Input$UpdateOrderInput.fromJson((l$update as Map<String, dynamic>));
    return Input$UpdateOneOrderInput._(result$data);
  }

  Map<String, dynamic> _$data;

  String get id => (_$data['id'] as String);
  Input$UpdateOrderInput get update =>
      (_$data['update'] as Input$UpdateOrderInput);
  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$id = id;
    result$data['id'] = l$id;
    final l$update = update;
    result$data['update'] = l$update.toJson();
    return result$data;
  }

  CopyWith$Input$UpdateOneOrderInput<Input$UpdateOneOrderInput> get copyWith =>
      CopyWith$Input$UpdateOneOrderInput(
        this,
        (i) => i,
      );
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Input$UpdateOneOrderInput) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
      return false;
    }
    final l$update = update;
    final lOther$update = other.update;
    if (l$update != lOther$update) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$update = update;
    return Object.hashAll([
      l$id,
      l$update,
    ]);
  }
}

abstract class CopyWith$Input$UpdateOneOrderInput<TRes> {
  factory CopyWith$Input$UpdateOneOrderInput(
    Input$UpdateOneOrderInput instance,
    TRes Function(Input$UpdateOneOrderInput) then,
  ) = _CopyWithImpl$Input$UpdateOneOrderInput;

  factory CopyWith$Input$UpdateOneOrderInput.stub(TRes res) =
      _CopyWithStubImpl$Input$UpdateOneOrderInput;

  TRes call({
    String? id,
    Input$UpdateOrderInput? update,
  });
  CopyWith$Input$UpdateOrderInput<TRes> get update;
}

class _CopyWithImpl$Input$UpdateOneOrderInput<TRes>
    implements CopyWith$Input$UpdateOneOrderInput<TRes> {
  _CopyWithImpl$Input$UpdateOneOrderInput(
    this._instance,
    this._then,
  );

  final Input$UpdateOneOrderInput _instance;

  final TRes Function(Input$UpdateOneOrderInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? update = _undefined,
  }) =>
      _then(Input$UpdateOneOrderInput._({
        ..._instance._$data,
        if (id != _undefined && id != null) 'id': (id as String),
        if (update != _undefined && update != null)
          'update': (update as Input$UpdateOrderInput),
      }));
  CopyWith$Input$UpdateOrderInput<TRes> get update {
    final local$update = _instance.update;
    return CopyWith$Input$UpdateOrderInput(
        local$update, (e) => call(update: e));
  }
}

class _CopyWithStubImpl$Input$UpdateOneOrderInput<TRes>
    implements CopyWith$Input$UpdateOneOrderInput<TRes> {
  _CopyWithStubImpl$Input$UpdateOneOrderInput(this._res);

  TRes _res;

  call({
    String? id,
    Input$UpdateOrderInput? update,
  }) =>
      _res;
  CopyWith$Input$UpdateOrderInput<TRes> get update =>
      CopyWith$Input$UpdateOrderInput.stub(_res);
}

class Input$UpdateOrderInput {
  factory Input$UpdateOrderInput({
    int? destinationArrivedTo,
    Enum$OrderStatus? status,
    double? paidAmount,
  }) =>
      Input$UpdateOrderInput._({
        if (destinationArrivedTo != null)
          r'destinationArrivedTo': destinationArrivedTo,
        if (status != null) r'status': status,
        if (paidAmount != null) r'paidAmount': paidAmount,
      });

  Input$UpdateOrderInput._(this._$data);

  factory Input$UpdateOrderInput.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('destinationArrivedTo')) {
      final l$destinationArrivedTo = data['destinationArrivedTo'];
      result$data['destinationArrivedTo'] = (l$destinationArrivedTo as int?);
    }
    if (data.containsKey('status')) {
      final l$status = data['status'];
      result$data['status'] = l$status == null
          ? null
          : fromJson$Enum$OrderStatus((l$status as String));
    }
    if (data.containsKey('paidAmount')) {
      final l$paidAmount = data['paidAmount'];
      result$data['paidAmount'] = (l$paidAmount as num?)?.toDouble();
    }
    return Input$UpdateOrderInput._(result$data);
  }

  Map<String, dynamic> _$data;

  int? get destinationArrivedTo => (_$data['destinationArrivedTo'] as int?);
  Enum$OrderStatus? get status => (_$data['status'] as Enum$OrderStatus?);
  double? get paidAmount => (_$data['paidAmount'] as double?);
  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('destinationArrivedTo')) {
      final l$destinationArrivedTo = destinationArrivedTo;
      result$data['destinationArrivedTo'] = l$destinationArrivedTo;
    }
    if (_$data.containsKey('status')) {
      final l$status = status;
      result$data['status'] =
          l$status == null ? null : toJson$Enum$OrderStatus(l$status);
    }
    if (_$data.containsKey('paidAmount')) {
      final l$paidAmount = paidAmount;
      result$data['paidAmount'] = l$paidAmount;
    }
    return result$data;
  }

  CopyWith$Input$UpdateOrderInput<Input$UpdateOrderInput> get copyWith =>
      CopyWith$Input$UpdateOrderInput(
        this,
        (i) => i,
      );
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Input$UpdateOrderInput) ||
        runtimeType != other.runtimeType) {
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
    final l$status = status;
    final lOther$status = other.status;
    if (_$data.containsKey('status') != other._$data.containsKey('status')) {
      return false;
    }
    if (l$status != lOther$status) {
      return false;
    }
    final l$paidAmount = paidAmount;
    final lOther$paidAmount = other.paidAmount;
    if (_$data.containsKey('paidAmount') !=
        other._$data.containsKey('paidAmount')) {
      return false;
    }
    if (l$paidAmount != lOther$paidAmount) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$destinationArrivedTo = destinationArrivedTo;
    final l$status = status;
    final l$paidAmount = paidAmount;
    return Object.hashAll([
      _$data.containsKey('destinationArrivedTo')
          ? l$destinationArrivedTo
          : const {},
      _$data.containsKey('status') ? l$status : const {},
      _$data.containsKey('paidAmount') ? l$paidAmount : const {},
    ]);
  }
}

abstract class CopyWith$Input$UpdateOrderInput<TRes> {
  factory CopyWith$Input$UpdateOrderInput(
    Input$UpdateOrderInput instance,
    TRes Function(Input$UpdateOrderInput) then,
  ) = _CopyWithImpl$Input$UpdateOrderInput;

  factory CopyWith$Input$UpdateOrderInput.stub(TRes res) =
      _CopyWithStubImpl$Input$UpdateOrderInput;

  TRes call({
    int? destinationArrivedTo,
    Enum$OrderStatus? status,
    double? paidAmount,
  });
}

class _CopyWithImpl$Input$UpdateOrderInput<TRes>
    implements CopyWith$Input$UpdateOrderInput<TRes> {
  _CopyWithImpl$Input$UpdateOrderInput(
    this._instance,
    this._then,
  );

  final Input$UpdateOrderInput _instance;

  final TRes Function(Input$UpdateOrderInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? destinationArrivedTo = _undefined,
    Object? status = _undefined,
    Object? paidAmount = _undefined,
  }) =>
      _then(Input$UpdateOrderInput._({
        ..._instance._$data,
        if (destinationArrivedTo != _undefined)
          'destinationArrivedTo': (destinationArrivedTo as int?),
        if (status != _undefined) 'status': (status as Enum$OrderStatus?),
        if (paidAmount != _undefined) 'paidAmount': (paidAmount as double?),
      }));
}

class _CopyWithStubImpl$Input$UpdateOrderInput<TRes>
    implements CopyWith$Input$UpdateOrderInput<TRes> {
  _CopyWithStubImpl$Input$UpdateOrderInput(this._res);

  TRes _res;

  call({
    int? destinationArrivedTo,
    Enum$OrderStatus? status,
    double? paidAmount,
  }) =>
      _res;
}

class Input$AddDocumentsToDriverInput {
  factory Input$AddDocumentsToDriverInput({
    required String id,
    required List<String> relationIds,
  }) =>
      Input$AddDocumentsToDriverInput._({
        r'id': id,
        r'relationIds': relationIds,
      });

  Input$AddDocumentsToDriverInput._(this._$data);

  factory Input$AddDocumentsToDriverInput.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$id = data['id'];
    result$data['id'] = (l$id as String);
    final l$relationIds = data['relationIds'];
    result$data['relationIds'] =
        (l$relationIds as List<dynamic>).map((e) => (e as String)).toList();
    return Input$AddDocumentsToDriverInput._(result$data);
  }

  Map<String, dynamic> _$data;

  String get id => (_$data['id'] as String);
  List<String> get relationIds => (_$data['relationIds'] as List<String>);
  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$id = id;
    result$data['id'] = l$id;
    final l$relationIds = relationIds;
    result$data['relationIds'] = l$relationIds.map((e) => e).toList();
    return result$data;
  }

  CopyWith$Input$AddDocumentsToDriverInput<Input$AddDocumentsToDriverInput>
      get copyWith => CopyWith$Input$AddDocumentsToDriverInput(
            this,
            (i) => i,
          );
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Input$AddDocumentsToDriverInput) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
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
    final l$id = id;
    final l$relationIds = relationIds;
    return Object.hashAll([
      l$id,
      Object.hashAll(l$relationIds.map((v) => v)),
    ]);
  }
}

abstract class CopyWith$Input$AddDocumentsToDriverInput<TRes> {
  factory CopyWith$Input$AddDocumentsToDriverInput(
    Input$AddDocumentsToDriverInput instance,
    TRes Function(Input$AddDocumentsToDriverInput) then,
  ) = _CopyWithImpl$Input$AddDocumentsToDriverInput;

  factory CopyWith$Input$AddDocumentsToDriverInput.stub(TRes res) =
      _CopyWithStubImpl$Input$AddDocumentsToDriverInput;

  TRes call({
    String? id,
    List<String>? relationIds,
  });
}

class _CopyWithImpl$Input$AddDocumentsToDriverInput<TRes>
    implements CopyWith$Input$AddDocumentsToDriverInput<TRes> {
  _CopyWithImpl$Input$AddDocumentsToDriverInput(
    this._instance,
    this._then,
  );

  final Input$AddDocumentsToDriverInput _instance;

  final TRes Function(Input$AddDocumentsToDriverInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? relationIds = _undefined,
  }) =>
      _then(Input$AddDocumentsToDriverInput._({
        ..._instance._$data,
        if (id != _undefined && id != null) 'id': (id as String),
        if (relationIds != _undefined && relationIds != null)
          'relationIds': (relationIds as List<String>),
      }));
}

class _CopyWithStubImpl$Input$AddDocumentsToDriverInput<TRes>
    implements CopyWith$Input$AddDocumentsToDriverInput<TRes> {
  _CopyWithStubImpl$Input$AddDocumentsToDriverInput(this._res);

  TRes _res;

  call({
    String? id,
    List<String>? relationIds,
  }) =>
      _res;
}

class Input$SetDocumentsOnDriverInput {
  factory Input$SetDocumentsOnDriverInput({
    required String id,
    required List<String> relationIds,
  }) =>
      Input$SetDocumentsOnDriverInput._({
        r'id': id,
        r'relationIds': relationIds,
      });

  Input$SetDocumentsOnDriverInput._(this._$data);

  factory Input$SetDocumentsOnDriverInput.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$id = data['id'];
    result$data['id'] = (l$id as String);
    final l$relationIds = data['relationIds'];
    result$data['relationIds'] =
        (l$relationIds as List<dynamic>).map((e) => (e as String)).toList();
    return Input$SetDocumentsOnDriverInput._(result$data);
  }

  Map<String, dynamic> _$data;

  String get id => (_$data['id'] as String);
  List<String> get relationIds => (_$data['relationIds'] as List<String>);
  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$id = id;
    result$data['id'] = l$id;
    final l$relationIds = relationIds;
    result$data['relationIds'] = l$relationIds.map((e) => e).toList();
    return result$data;
  }

  CopyWith$Input$SetDocumentsOnDriverInput<Input$SetDocumentsOnDriverInput>
      get copyWith => CopyWith$Input$SetDocumentsOnDriverInput(
            this,
            (i) => i,
          );
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Input$SetDocumentsOnDriverInput) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
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
    final l$id = id;
    final l$relationIds = relationIds;
    return Object.hashAll([
      l$id,
      Object.hashAll(l$relationIds.map((v) => v)),
    ]);
  }
}

abstract class CopyWith$Input$SetDocumentsOnDriverInput<TRes> {
  factory CopyWith$Input$SetDocumentsOnDriverInput(
    Input$SetDocumentsOnDriverInput instance,
    TRes Function(Input$SetDocumentsOnDriverInput) then,
  ) = _CopyWithImpl$Input$SetDocumentsOnDriverInput;

  factory CopyWith$Input$SetDocumentsOnDriverInput.stub(TRes res) =
      _CopyWithStubImpl$Input$SetDocumentsOnDriverInput;

  TRes call({
    String? id,
    List<String>? relationIds,
  });
}

class _CopyWithImpl$Input$SetDocumentsOnDriverInput<TRes>
    implements CopyWith$Input$SetDocumentsOnDriverInput<TRes> {
  _CopyWithImpl$Input$SetDocumentsOnDriverInput(
    this._instance,
    this._then,
  );

  final Input$SetDocumentsOnDriverInput _instance;

  final TRes Function(Input$SetDocumentsOnDriverInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? relationIds = _undefined,
  }) =>
      _then(Input$SetDocumentsOnDriverInput._({
        ..._instance._$data,
        if (id != _undefined && id != null) 'id': (id as String),
        if (relationIds != _undefined && relationIds != null)
          'relationIds': (relationIds as List<String>),
      }));
}

class _CopyWithStubImpl$Input$SetDocumentsOnDriverInput<TRes>
    implements CopyWith$Input$SetDocumentsOnDriverInput<TRes> {
  _CopyWithStubImpl$Input$SetDocumentsOnDriverInput(this._res);

  TRes _res;

  call({
    String? id,
    List<String>? relationIds,
  }) =>
      _res;
}

class Input$AddEnabledServicesToDriverInput {
  factory Input$AddEnabledServicesToDriverInput({
    required String id,
    required List<String> relationIds,
  }) =>
      Input$AddEnabledServicesToDriverInput._({
        r'id': id,
        r'relationIds': relationIds,
      });

  Input$AddEnabledServicesToDriverInput._(this._$data);

  factory Input$AddEnabledServicesToDriverInput.fromJson(
      Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$id = data['id'];
    result$data['id'] = (l$id as String);
    final l$relationIds = data['relationIds'];
    result$data['relationIds'] =
        (l$relationIds as List<dynamic>).map((e) => (e as String)).toList();
    return Input$AddEnabledServicesToDriverInput._(result$data);
  }

  Map<String, dynamic> _$data;

  String get id => (_$data['id'] as String);
  List<String> get relationIds => (_$data['relationIds'] as List<String>);
  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$id = id;
    result$data['id'] = l$id;
    final l$relationIds = relationIds;
    result$data['relationIds'] = l$relationIds.map((e) => e).toList();
    return result$data;
  }

  CopyWith$Input$AddEnabledServicesToDriverInput<
          Input$AddEnabledServicesToDriverInput>
      get copyWith => CopyWith$Input$AddEnabledServicesToDriverInput(
            this,
            (i) => i,
          );
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Input$AddEnabledServicesToDriverInput) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
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
    final l$id = id;
    final l$relationIds = relationIds;
    return Object.hashAll([
      l$id,
      Object.hashAll(l$relationIds.map((v) => v)),
    ]);
  }
}

abstract class CopyWith$Input$AddEnabledServicesToDriverInput<TRes> {
  factory CopyWith$Input$AddEnabledServicesToDriverInput(
    Input$AddEnabledServicesToDriverInput instance,
    TRes Function(Input$AddEnabledServicesToDriverInput) then,
  ) = _CopyWithImpl$Input$AddEnabledServicesToDriverInput;

  factory CopyWith$Input$AddEnabledServicesToDriverInput.stub(TRes res) =
      _CopyWithStubImpl$Input$AddEnabledServicesToDriverInput;

  TRes call({
    String? id,
    List<String>? relationIds,
  });
}

class _CopyWithImpl$Input$AddEnabledServicesToDriverInput<TRes>
    implements CopyWith$Input$AddEnabledServicesToDriverInput<TRes> {
  _CopyWithImpl$Input$AddEnabledServicesToDriverInput(
    this._instance,
    this._then,
  );

  final Input$AddEnabledServicesToDriverInput _instance;

  final TRes Function(Input$AddEnabledServicesToDriverInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? relationIds = _undefined,
  }) =>
      _then(Input$AddEnabledServicesToDriverInput._({
        ..._instance._$data,
        if (id != _undefined && id != null) 'id': (id as String),
        if (relationIds != _undefined && relationIds != null)
          'relationIds': (relationIds as List<String>),
      }));
}

class _CopyWithStubImpl$Input$AddEnabledServicesToDriverInput<TRes>
    implements CopyWith$Input$AddEnabledServicesToDriverInput<TRes> {
  _CopyWithStubImpl$Input$AddEnabledServicesToDriverInput(this._res);

  TRes _res;

  call({
    String? id,
    List<String>? relationIds,
  }) =>
      _res;
}

class Input$SetEnabledServicesOnDriverInput {
  factory Input$SetEnabledServicesOnDriverInput({
    required String id,
    required List<String> relationIds,
  }) =>
      Input$SetEnabledServicesOnDriverInput._({
        r'id': id,
        r'relationIds': relationIds,
      });

  Input$SetEnabledServicesOnDriverInput._(this._$data);

  factory Input$SetEnabledServicesOnDriverInput.fromJson(
      Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$id = data['id'];
    result$data['id'] = (l$id as String);
    final l$relationIds = data['relationIds'];
    result$data['relationIds'] =
        (l$relationIds as List<dynamic>).map((e) => (e as String)).toList();
    return Input$SetEnabledServicesOnDriverInput._(result$data);
  }

  Map<String, dynamic> _$data;

  String get id => (_$data['id'] as String);
  List<String> get relationIds => (_$data['relationIds'] as List<String>);
  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$id = id;
    result$data['id'] = l$id;
    final l$relationIds = relationIds;
    result$data['relationIds'] = l$relationIds.map((e) => e).toList();
    return result$data;
  }

  CopyWith$Input$SetEnabledServicesOnDriverInput<
          Input$SetEnabledServicesOnDriverInput>
      get copyWith => CopyWith$Input$SetEnabledServicesOnDriverInput(
            this,
            (i) => i,
          );
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Input$SetEnabledServicesOnDriverInput) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
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
    final l$id = id;
    final l$relationIds = relationIds;
    return Object.hashAll([
      l$id,
      Object.hashAll(l$relationIds.map((v) => v)),
    ]);
  }
}

abstract class CopyWith$Input$SetEnabledServicesOnDriverInput<TRes> {
  factory CopyWith$Input$SetEnabledServicesOnDriverInput(
    Input$SetEnabledServicesOnDriverInput instance,
    TRes Function(Input$SetEnabledServicesOnDriverInput) then,
  ) = _CopyWithImpl$Input$SetEnabledServicesOnDriverInput;

  factory CopyWith$Input$SetEnabledServicesOnDriverInput.stub(TRes res) =
      _CopyWithStubImpl$Input$SetEnabledServicesOnDriverInput;

  TRes call({
    String? id,
    List<String>? relationIds,
  });
}

class _CopyWithImpl$Input$SetEnabledServicesOnDriverInput<TRes>
    implements CopyWith$Input$SetEnabledServicesOnDriverInput<TRes> {
  _CopyWithImpl$Input$SetEnabledServicesOnDriverInput(
    this._instance,
    this._then,
  );

  final Input$SetEnabledServicesOnDriverInput _instance;

  final TRes Function(Input$SetEnabledServicesOnDriverInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? relationIds = _undefined,
  }) =>
      _then(Input$SetEnabledServicesOnDriverInput._({
        ..._instance._$data,
        if (id != _undefined && id != null) 'id': (id as String),
        if (relationIds != _undefined && relationIds != null)
          'relationIds': (relationIds as List<String>),
      }));
}

class _CopyWithStubImpl$Input$SetEnabledServicesOnDriverInput<TRes>
    implements CopyWith$Input$SetEnabledServicesOnDriverInput<TRes> {
  _CopyWithStubImpl$Input$SetEnabledServicesOnDriverInput(this._res);

  TRes _res;

  call({
    String? id,
    List<String>? relationIds,
  }) =>
      _res;
}

class Input$RemoveEnabledServicesFromDriverInput {
  factory Input$RemoveEnabledServicesFromDriverInput({
    required String id,
    required List<String> relationIds,
  }) =>
      Input$RemoveEnabledServicesFromDriverInput._({
        r'id': id,
        r'relationIds': relationIds,
      });

  Input$RemoveEnabledServicesFromDriverInput._(this._$data);

  factory Input$RemoveEnabledServicesFromDriverInput.fromJson(
      Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$id = data['id'];
    result$data['id'] = (l$id as String);
    final l$relationIds = data['relationIds'];
    result$data['relationIds'] =
        (l$relationIds as List<dynamic>).map((e) => (e as String)).toList();
    return Input$RemoveEnabledServicesFromDriverInput._(result$data);
  }

  Map<String, dynamic> _$data;

  String get id => (_$data['id'] as String);
  List<String> get relationIds => (_$data['relationIds'] as List<String>);
  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$id = id;
    result$data['id'] = l$id;
    final l$relationIds = relationIds;
    result$data['relationIds'] = l$relationIds.map((e) => e).toList();
    return result$data;
  }

  CopyWith$Input$RemoveEnabledServicesFromDriverInput<
          Input$RemoveEnabledServicesFromDriverInput>
      get copyWith => CopyWith$Input$RemoveEnabledServicesFromDriverInput(
            this,
            (i) => i,
          );
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Input$RemoveEnabledServicesFromDriverInput) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
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
    final l$id = id;
    final l$relationIds = relationIds;
    return Object.hashAll([
      l$id,
      Object.hashAll(l$relationIds.map((v) => v)),
    ]);
  }
}

abstract class CopyWith$Input$RemoveEnabledServicesFromDriverInput<TRes> {
  factory CopyWith$Input$RemoveEnabledServicesFromDriverInput(
    Input$RemoveEnabledServicesFromDriverInput instance,
    TRes Function(Input$RemoveEnabledServicesFromDriverInput) then,
  ) = _CopyWithImpl$Input$RemoveEnabledServicesFromDriverInput;

  factory CopyWith$Input$RemoveEnabledServicesFromDriverInput.stub(TRes res) =
      _CopyWithStubImpl$Input$RemoveEnabledServicesFromDriverInput;

  TRes call({
    String? id,
    List<String>? relationIds,
  });
}

class _CopyWithImpl$Input$RemoveEnabledServicesFromDriverInput<TRes>
    implements CopyWith$Input$RemoveEnabledServicesFromDriverInput<TRes> {
  _CopyWithImpl$Input$RemoveEnabledServicesFromDriverInput(
    this._instance,
    this._then,
  );

  final Input$RemoveEnabledServicesFromDriverInput _instance;

  final TRes Function(Input$RemoveEnabledServicesFromDriverInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? relationIds = _undefined,
  }) =>
      _then(Input$RemoveEnabledServicesFromDriverInput._({
        ..._instance._$data,
        if (id != _undefined && id != null) 'id': (id as String),
        if (relationIds != _undefined && relationIds != null)
          'relationIds': (relationIds as List<String>),
      }));
}

class _CopyWithStubImpl$Input$RemoveEnabledServicesFromDriverInput<TRes>
    implements CopyWith$Input$RemoveEnabledServicesFromDriverInput<TRes> {
  _CopyWithStubImpl$Input$RemoveEnabledServicesFromDriverInput(this._res);

  TRes _res;

  call({
    String? id,
    List<String>? relationIds,
  }) =>
      _res;
}

class Input$UpdateOneDriverInput {
  factory Input$UpdateOneDriverInput({
    required String id,
    required Input$UpdateDriverInput update,
  }) =>
      Input$UpdateOneDriverInput._({
        r'id': id,
        r'update': update,
      });

  Input$UpdateOneDriverInput._(this._$data);

  factory Input$UpdateOneDriverInput.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$id = data['id'];
    result$data['id'] = (l$id as String);
    final l$update = data['update'];
    result$data['update'] =
        Input$UpdateDriverInput.fromJson((l$update as Map<String, dynamic>));
    return Input$UpdateOneDriverInput._(result$data);
  }

  Map<String, dynamic> _$data;

  String get id => (_$data['id'] as String);
  Input$UpdateDriverInput get update =>
      (_$data['update'] as Input$UpdateDriverInput);
  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$id = id;
    result$data['id'] = l$id;
    final l$update = update;
    result$data['update'] = l$update.toJson();
    return result$data;
  }

  CopyWith$Input$UpdateOneDriverInput<Input$UpdateOneDriverInput>
      get copyWith => CopyWith$Input$UpdateOneDriverInput(
            this,
            (i) => i,
          );
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Input$UpdateOneDriverInput) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
      return false;
    }
    final l$update = update;
    final lOther$update = other.update;
    if (l$update != lOther$update) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$update = update;
    return Object.hashAll([
      l$id,
      l$update,
    ]);
  }
}

abstract class CopyWith$Input$UpdateOneDriverInput<TRes> {
  factory CopyWith$Input$UpdateOneDriverInput(
    Input$UpdateOneDriverInput instance,
    TRes Function(Input$UpdateOneDriverInput) then,
  ) = _CopyWithImpl$Input$UpdateOneDriverInput;

  factory CopyWith$Input$UpdateOneDriverInput.stub(TRes res) =
      _CopyWithStubImpl$Input$UpdateOneDriverInput;

  TRes call({
    String? id,
    Input$UpdateDriverInput? update,
  });
  CopyWith$Input$UpdateDriverInput<TRes> get update;
}

class _CopyWithImpl$Input$UpdateOneDriverInput<TRes>
    implements CopyWith$Input$UpdateOneDriverInput<TRes> {
  _CopyWithImpl$Input$UpdateOneDriverInput(
    this._instance,
    this._then,
  );

  final Input$UpdateOneDriverInput _instance;

  final TRes Function(Input$UpdateOneDriverInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? update = _undefined,
  }) =>
      _then(Input$UpdateOneDriverInput._({
        ..._instance._$data,
        if (id != _undefined && id != null) 'id': (id as String),
        if (update != _undefined && update != null)
          'update': (update as Input$UpdateDriverInput),
      }));
  CopyWith$Input$UpdateDriverInput<TRes> get update {
    final local$update = _instance.update;
    return CopyWith$Input$UpdateDriverInput(
        local$update, (e) => call(update: e));
  }
}

class _CopyWithStubImpl$Input$UpdateOneDriverInput<TRes>
    implements CopyWith$Input$UpdateOneDriverInput<TRes> {
  _CopyWithStubImpl$Input$UpdateOneDriverInput(this._res);

  TRes _res;

  call({
    String? id,
    Input$UpdateDriverInput? update,
  }) =>
      _res;
  CopyWith$Input$UpdateDriverInput<TRes> get update =>
      CopyWith$Input$UpdateDriverInput.stub(_res);
}

class Input$UpdateDriverInput {
  factory Input$UpdateDriverInput({
    int? carProductionYear,
    String? carModelId,
    String? carId,
    String? carColorId,
    int? searchDistance,
    String? firstName,
    String? lastName,
    Enum$DriverStatus? status,
    String? certificateNumber,
    String? email,
    String? carPlate,
    double? mediaId,
    Enum$Gender? gender,
    String? accountNumber,
    String? bankName,
    String? bankRoutingNumber,
    String? bankSwift,
    String? address,
    String? notificationPlayerId,
  }) =>
      Input$UpdateDriverInput._({
        if (carProductionYear != null) r'carProductionYear': carProductionYear,
        if (carModelId != null) r'carModelId': carModelId,
        if (carId != null) r'carId': carId,
        if (carColorId != null) r'carColorId': carColorId,
        if (searchDistance != null) r'searchDistance': searchDistance,
        if (firstName != null) r'firstName': firstName,
        if (lastName != null) r'lastName': lastName,
        if (status != null) r'status': status,
        if (certificateNumber != null) r'certificateNumber': certificateNumber,
        if (email != null) r'email': email,
        if (carPlate != null) r'carPlate': carPlate,
        if (mediaId != null) r'mediaId': mediaId,
        if (gender != null) r'gender': gender,
        if (accountNumber != null) r'accountNumber': accountNumber,
        if (bankName != null) r'bankName': bankName,
        if (bankRoutingNumber != null) r'bankRoutingNumber': bankRoutingNumber,
        if (bankSwift != null) r'bankSwift': bankSwift,
        if (address != null) r'address': address,
        if (notificationPlayerId != null)
          r'notificationPlayerId': notificationPlayerId,
      });

  Input$UpdateDriverInput._(this._$data);

  factory Input$UpdateDriverInput.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('carProductionYear')) {
      final l$carProductionYear = data['carProductionYear'];
      result$data['carProductionYear'] = (l$carProductionYear as int?);
    }
    if (data.containsKey('carModelId')) {
      final l$carModelId = data['carModelId'];
      result$data['carModelId'] = (l$carModelId as String?);
    }
    if (data.containsKey('carId')) {
      final l$carId = data['carId'];
      result$data['carId'] = (l$carId as String?);
    }
    if (data.containsKey('carColorId')) {
      final l$carColorId = data['carColorId'];
      result$data['carColorId'] = (l$carColorId as String?);
    }
    if (data.containsKey('searchDistance')) {
      final l$searchDistance = data['searchDistance'];
      result$data['searchDistance'] = (l$searchDistance as int?);
    }
    if (data.containsKey('firstName')) {
      final l$firstName = data['firstName'];
      result$data['firstName'] = (l$firstName as String?);
    }
    if (data.containsKey('lastName')) {
      final l$lastName = data['lastName'];
      result$data['lastName'] = (l$lastName as String?);
    }
    if (data.containsKey('status')) {
      final l$status = data['status'];
      result$data['status'] = l$status == null
          ? null
          : fromJson$Enum$DriverStatus((l$status as String));
    }
    if (data.containsKey('certificateNumber')) {
      final l$certificateNumber = data['certificateNumber'];
      result$data['certificateNumber'] = (l$certificateNumber as String?);
    }
    if (data.containsKey('email')) {
      final l$email = data['email'];
      result$data['email'] = (l$email as String?);
    }
    if (data.containsKey('carPlate')) {
      final l$carPlate = data['carPlate'];
      result$data['carPlate'] = (l$carPlate as String?);
    }
    if (data.containsKey('mediaId')) {
      final l$mediaId = data['mediaId'];
      result$data['mediaId'] = (l$mediaId as num?)?.toDouble();
    }
    if (data.containsKey('gender')) {
      final l$gender = data['gender'];
      result$data['gender'] =
          l$gender == null ? null : fromJson$Enum$Gender((l$gender as String));
    }
    if (data.containsKey('accountNumber')) {
      final l$accountNumber = data['accountNumber'];
      result$data['accountNumber'] = (l$accountNumber as String?);
    }
    if (data.containsKey('bankName')) {
      final l$bankName = data['bankName'];
      result$data['bankName'] = (l$bankName as String?);
    }
    if (data.containsKey('bankRoutingNumber')) {
      final l$bankRoutingNumber = data['bankRoutingNumber'];
      result$data['bankRoutingNumber'] = (l$bankRoutingNumber as String?);
    }
    if (data.containsKey('bankSwift')) {
      final l$bankSwift = data['bankSwift'];
      result$data['bankSwift'] = (l$bankSwift as String?);
    }
    if (data.containsKey('address')) {
      final l$address = data['address'];
      result$data['address'] = (l$address as String?);
    }
    if (data.containsKey('notificationPlayerId')) {
      final l$notificationPlayerId = data['notificationPlayerId'];
      result$data['notificationPlayerId'] = (l$notificationPlayerId as String?);
    }
    return Input$UpdateDriverInput._(result$data);
  }

  Map<String, dynamic> _$data;

  int? get carProductionYear => (_$data['carProductionYear'] as int?);
  String? get carModelId => (_$data['carModelId'] as String?);
  String? get carId => (_$data['carId'] as String?);
  String? get carColorId => (_$data['carColorId'] as String?);
  int? get searchDistance => (_$data['searchDistance'] as int?);
  String? get firstName => (_$data['firstName'] as String?);
  String? get lastName => (_$data['lastName'] as String?);
  Enum$DriverStatus? get status => (_$data['status'] as Enum$DriverStatus?);
  String? get certificateNumber => (_$data['certificateNumber'] as String?);
  String? get email => (_$data['email'] as String?);
  String? get carPlate => (_$data['carPlate'] as String?);
  double? get mediaId => (_$data['mediaId'] as double?);
  Enum$Gender? get gender => (_$data['gender'] as Enum$Gender?);
  String? get accountNumber => (_$data['accountNumber'] as String?);
  String? get bankName => (_$data['bankName'] as String?);
  String? get bankRoutingNumber => (_$data['bankRoutingNumber'] as String?);
  String? get bankSwift => (_$data['bankSwift'] as String?);
  String? get address => (_$data['address'] as String?);
  String? get notificationPlayerId =>
      (_$data['notificationPlayerId'] as String?);
  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('carProductionYear')) {
      final l$carProductionYear = carProductionYear;
      result$data['carProductionYear'] = l$carProductionYear;
    }
    if (_$data.containsKey('carModelId')) {
      final l$carModelId = carModelId;
      result$data['carModelId'] = l$carModelId;
    }
    if (_$data.containsKey('carId')) {
      final l$carId = carId;
      result$data['carId'] = l$carId;
    }
    if (_$data.containsKey('carColorId')) {
      final l$carColorId = carColorId;
      result$data['carColorId'] = l$carColorId;
    }
    if (_$data.containsKey('searchDistance')) {
      final l$searchDistance = searchDistance;
      result$data['searchDistance'] = l$searchDistance;
    }
    if (_$data.containsKey('firstName')) {
      final l$firstName = firstName;
      result$data['firstName'] = l$firstName;
    }
    if (_$data.containsKey('lastName')) {
      final l$lastName = lastName;
      result$data['lastName'] = l$lastName;
    }
    if (_$data.containsKey('status')) {
      final l$status = status;
      result$data['status'] =
          l$status == null ? null : toJson$Enum$DriverStatus(l$status);
    }
    if (_$data.containsKey('certificateNumber')) {
      final l$certificateNumber = certificateNumber;
      result$data['certificateNumber'] = l$certificateNumber;
    }
    if (_$data.containsKey('email')) {
      final l$email = email;
      result$data['email'] = l$email;
    }
    if (_$data.containsKey('carPlate')) {
      final l$carPlate = carPlate;
      result$data['carPlate'] = l$carPlate;
    }
    if (_$data.containsKey('mediaId')) {
      final l$mediaId = mediaId;
      result$data['mediaId'] = l$mediaId;
    }
    if (_$data.containsKey('gender')) {
      final l$gender = gender;
      result$data['gender'] =
          l$gender == null ? null : toJson$Enum$Gender(l$gender);
    }
    if (_$data.containsKey('accountNumber')) {
      final l$accountNumber = accountNumber;
      result$data['accountNumber'] = l$accountNumber;
    }
    if (_$data.containsKey('bankName')) {
      final l$bankName = bankName;
      result$data['bankName'] = l$bankName;
    }
    if (_$data.containsKey('bankRoutingNumber')) {
      final l$bankRoutingNumber = bankRoutingNumber;
      result$data['bankRoutingNumber'] = l$bankRoutingNumber;
    }
    if (_$data.containsKey('bankSwift')) {
      final l$bankSwift = bankSwift;
      result$data['bankSwift'] = l$bankSwift;
    }
    if (_$data.containsKey('address')) {
      final l$address = address;
      result$data['address'] = l$address;
    }
    if (_$data.containsKey('notificationPlayerId')) {
      final l$notificationPlayerId = notificationPlayerId;
      result$data['notificationPlayerId'] = l$notificationPlayerId;
    }
    return result$data;
  }

  CopyWith$Input$UpdateDriverInput<Input$UpdateDriverInput> get copyWith =>
      CopyWith$Input$UpdateDriverInput(
        this,
        (i) => i,
      );
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Input$UpdateDriverInput) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$carProductionYear = carProductionYear;
    final lOther$carProductionYear = other.carProductionYear;
    if (_$data.containsKey('carProductionYear') !=
        other._$data.containsKey('carProductionYear')) {
      return false;
    }
    if (l$carProductionYear != lOther$carProductionYear) {
      return false;
    }
    final l$carModelId = carModelId;
    final lOther$carModelId = other.carModelId;
    if (_$data.containsKey('carModelId') !=
        other._$data.containsKey('carModelId')) {
      return false;
    }
    if (l$carModelId != lOther$carModelId) {
      return false;
    }
    final l$carId = carId;
    final lOther$carId = other.carId;
    if (_$data.containsKey('carId') != other._$data.containsKey('carId')) {
      return false;
    }
    if (l$carId != lOther$carId) {
      return false;
    }
    final l$carColorId = carColorId;
    final lOther$carColorId = other.carColorId;
    if (_$data.containsKey('carColorId') !=
        other._$data.containsKey('carColorId')) {
      return false;
    }
    if (l$carColorId != lOther$carColorId) {
      return false;
    }
    final l$searchDistance = searchDistance;
    final lOther$searchDistance = other.searchDistance;
    if (_$data.containsKey('searchDistance') !=
        other._$data.containsKey('searchDistance')) {
      return false;
    }
    if (l$searchDistance != lOther$searchDistance) {
      return false;
    }
    final l$firstName = firstName;
    final lOther$firstName = other.firstName;
    if (_$data.containsKey('firstName') !=
        other._$data.containsKey('firstName')) {
      return false;
    }
    if (l$firstName != lOther$firstName) {
      return false;
    }
    final l$lastName = lastName;
    final lOther$lastName = other.lastName;
    if (_$data.containsKey('lastName') !=
        other._$data.containsKey('lastName')) {
      return false;
    }
    if (l$lastName != lOther$lastName) {
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
    final l$certificateNumber = certificateNumber;
    final lOther$certificateNumber = other.certificateNumber;
    if (_$data.containsKey('certificateNumber') !=
        other._$data.containsKey('certificateNumber')) {
      return false;
    }
    if (l$certificateNumber != lOther$certificateNumber) {
      return false;
    }
    final l$email = email;
    final lOther$email = other.email;
    if (_$data.containsKey('email') != other._$data.containsKey('email')) {
      return false;
    }
    if (l$email != lOther$email) {
      return false;
    }
    final l$carPlate = carPlate;
    final lOther$carPlate = other.carPlate;
    if (_$data.containsKey('carPlate') !=
        other._$data.containsKey('carPlate')) {
      return false;
    }
    if (l$carPlate != lOther$carPlate) {
      return false;
    }
    final l$mediaId = mediaId;
    final lOther$mediaId = other.mediaId;
    if (_$data.containsKey('mediaId') != other._$data.containsKey('mediaId')) {
      return false;
    }
    if (l$mediaId != lOther$mediaId) {
      return false;
    }
    final l$gender = gender;
    final lOther$gender = other.gender;
    if (_$data.containsKey('gender') != other._$data.containsKey('gender')) {
      return false;
    }
    if (l$gender != lOther$gender) {
      return false;
    }
    final l$accountNumber = accountNumber;
    final lOther$accountNumber = other.accountNumber;
    if (_$data.containsKey('accountNumber') !=
        other._$data.containsKey('accountNumber')) {
      return false;
    }
    if (l$accountNumber != lOther$accountNumber) {
      return false;
    }
    final l$bankName = bankName;
    final lOther$bankName = other.bankName;
    if (_$data.containsKey('bankName') !=
        other._$data.containsKey('bankName')) {
      return false;
    }
    if (l$bankName != lOther$bankName) {
      return false;
    }
    final l$bankRoutingNumber = bankRoutingNumber;
    final lOther$bankRoutingNumber = other.bankRoutingNumber;
    if (_$data.containsKey('bankRoutingNumber') !=
        other._$data.containsKey('bankRoutingNumber')) {
      return false;
    }
    if (l$bankRoutingNumber != lOther$bankRoutingNumber) {
      return false;
    }
    final l$bankSwift = bankSwift;
    final lOther$bankSwift = other.bankSwift;
    if (_$data.containsKey('bankSwift') !=
        other._$data.containsKey('bankSwift')) {
      return false;
    }
    if (l$bankSwift != lOther$bankSwift) {
      return false;
    }
    final l$address = address;
    final lOther$address = other.address;
    if (_$data.containsKey('address') != other._$data.containsKey('address')) {
      return false;
    }
    if (l$address != lOther$address) {
      return false;
    }
    final l$notificationPlayerId = notificationPlayerId;
    final lOther$notificationPlayerId = other.notificationPlayerId;
    if (_$data.containsKey('notificationPlayerId') !=
        other._$data.containsKey('notificationPlayerId')) {
      return false;
    }
    if (l$notificationPlayerId != lOther$notificationPlayerId) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$carProductionYear = carProductionYear;
    final l$carModelId = carModelId;
    final l$carId = carId;
    final l$carColorId = carColorId;
    final l$searchDistance = searchDistance;
    final l$firstName = firstName;
    final l$lastName = lastName;
    final l$status = status;
    final l$certificateNumber = certificateNumber;
    final l$email = email;
    final l$carPlate = carPlate;
    final l$mediaId = mediaId;
    final l$gender = gender;
    final l$accountNumber = accountNumber;
    final l$bankName = bankName;
    final l$bankRoutingNumber = bankRoutingNumber;
    final l$bankSwift = bankSwift;
    final l$address = address;
    final l$notificationPlayerId = notificationPlayerId;
    return Object.hashAll([
      _$data.containsKey('carProductionYear') ? l$carProductionYear : const {},
      _$data.containsKey('carModelId') ? l$carModelId : const {},
      _$data.containsKey('carId') ? l$carId : const {},
      _$data.containsKey('carColorId') ? l$carColorId : const {},
      _$data.containsKey('searchDistance') ? l$searchDistance : const {},
      _$data.containsKey('firstName') ? l$firstName : const {},
      _$data.containsKey('lastName') ? l$lastName : const {},
      _$data.containsKey('status') ? l$status : const {},
      _$data.containsKey('certificateNumber') ? l$certificateNumber : const {},
      _$data.containsKey('email') ? l$email : const {},
      _$data.containsKey('carPlate') ? l$carPlate : const {},
      _$data.containsKey('mediaId') ? l$mediaId : const {},
      _$data.containsKey('gender') ? l$gender : const {},
      _$data.containsKey('accountNumber') ? l$accountNumber : const {},
      _$data.containsKey('bankName') ? l$bankName : const {},
      _$data.containsKey('bankRoutingNumber') ? l$bankRoutingNumber : const {},
      _$data.containsKey('bankSwift') ? l$bankSwift : const {},
      _$data.containsKey('address') ? l$address : const {},
      _$data.containsKey('notificationPlayerId')
          ? l$notificationPlayerId
          : const {},
    ]);
  }
}

abstract class CopyWith$Input$UpdateDriverInput<TRes> {
  factory CopyWith$Input$UpdateDriverInput(
    Input$UpdateDriverInput instance,
    TRes Function(Input$UpdateDriverInput) then,
  ) = _CopyWithImpl$Input$UpdateDriverInput;

  factory CopyWith$Input$UpdateDriverInput.stub(TRes res) =
      _CopyWithStubImpl$Input$UpdateDriverInput;

  TRes call({
    int? carProductionYear,
    String? carModelId,
    String? carId,
    String? carColorId,
    int? searchDistance,
    String? firstName,
    String? lastName,
    Enum$DriverStatus? status,
    String? certificateNumber,
    String? email,
    String? carPlate,
    double? mediaId,
    Enum$Gender? gender,
    String? accountNumber,
    String? bankName,
    String? bankRoutingNumber,
    String? bankSwift,
    String? address,
    String? notificationPlayerId,
  });
}

class _CopyWithImpl$Input$UpdateDriverInput<TRes>
    implements CopyWith$Input$UpdateDriverInput<TRes> {
  _CopyWithImpl$Input$UpdateDriverInput(
    this._instance,
    this._then,
  );

  final Input$UpdateDriverInput _instance;

  final TRes Function(Input$UpdateDriverInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? carProductionYear = _undefined,
    Object? carModelId = _undefined,
    Object? carId = _undefined,
    Object? carColorId = _undefined,
    Object? searchDistance = _undefined,
    Object? firstName = _undefined,
    Object? lastName = _undefined,
    Object? status = _undefined,
    Object? certificateNumber = _undefined,
    Object? email = _undefined,
    Object? carPlate = _undefined,
    Object? mediaId = _undefined,
    Object? gender = _undefined,
    Object? accountNumber = _undefined,
    Object? bankName = _undefined,
    Object? bankRoutingNumber = _undefined,
    Object? bankSwift = _undefined,
    Object? address = _undefined,
    Object? notificationPlayerId = _undefined,
  }) =>
      _then(Input$UpdateDriverInput._({
        ..._instance._$data,
        if (carProductionYear != _undefined)
          'carProductionYear': (carProductionYear as int?),
        if (carModelId != _undefined) 'carModelId': (carModelId as String?),
        if (carId != _undefined) 'carId': (carId as String?),
        if (carColorId != _undefined) 'carColorId': (carColorId as String?),
        if (searchDistance != _undefined)
          'searchDistance': (searchDistance as int?),
        if (firstName != _undefined) 'firstName': (firstName as String?),
        if (lastName != _undefined) 'lastName': (lastName as String?),
        if (status != _undefined) 'status': (status as Enum$DriverStatus?),
        if (certificateNumber != _undefined)
          'certificateNumber': (certificateNumber as String?),
        if (email != _undefined) 'email': (email as String?),
        if (carPlate != _undefined) 'carPlate': (carPlate as String?),
        if (mediaId != _undefined) 'mediaId': (mediaId as double?),
        if (gender != _undefined) 'gender': (gender as Enum$Gender?),
        if (accountNumber != _undefined)
          'accountNumber': (accountNumber as String?),
        if (bankName != _undefined) 'bankName': (bankName as String?),
        if (bankRoutingNumber != _undefined)
          'bankRoutingNumber': (bankRoutingNumber as String?),
        if (bankSwift != _undefined) 'bankSwift': (bankSwift as String?),
        if (address != _undefined) 'address': (address as String?),
        if (notificationPlayerId != _undefined)
          'notificationPlayerId': (notificationPlayerId as String?),
      }));
}

class _CopyWithStubImpl$Input$UpdateDriverInput<TRes>
    implements CopyWith$Input$UpdateDriverInput<TRes> {
  _CopyWithStubImpl$Input$UpdateDriverInput(this._res);

  TRes _res;

  call({
    int? carProductionYear,
    String? carModelId,
    String? carId,
    String? carColorId,
    int? searchDistance,
    String? firstName,
    String? lastName,
    Enum$DriverStatus? status,
    String? certificateNumber,
    String? email,
    String? carPlate,
    double? mediaId,
    Enum$Gender? gender,
    String? accountNumber,
    String? bankName,
    String? bankRoutingNumber,
    String? bankSwift,
    String? address,
    String? notificationPlayerId,
  }) =>
      _res;
}

class Input$CreateOneOrderMessageInput {
  factory Input$CreateOneOrderMessageInput(
          {required Input$OrderMessageInput orderMessage}) =>
      Input$CreateOneOrderMessageInput._({
        r'orderMessage': orderMessage,
      });

  Input$CreateOneOrderMessageInput._(this._$data);

  factory Input$CreateOneOrderMessageInput.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$orderMessage = data['orderMessage'];
    result$data['orderMessage'] = Input$OrderMessageInput.fromJson(
        (l$orderMessage as Map<String, dynamic>));
    return Input$CreateOneOrderMessageInput._(result$data);
  }

  Map<String, dynamic> _$data;

  Input$OrderMessageInput get orderMessage =>
      (_$data['orderMessage'] as Input$OrderMessageInput);
  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$orderMessage = orderMessage;
    result$data['orderMessage'] = l$orderMessage.toJson();
    return result$data;
  }

  CopyWith$Input$CreateOneOrderMessageInput<Input$CreateOneOrderMessageInput>
      get copyWith => CopyWith$Input$CreateOneOrderMessageInput(
            this,
            (i) => i,
          );
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Input$CreateOneOrderMessageInput) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$orderMessage = orderMessage;
    final lOther$orderMessage = other.orderMessage;
    if (l$orderMessage != lOther$orderMessage) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$orderMessage = orderMessage;
    return Object.hashAll([l$orderMessage]);
  }
}

abstract class CopyWith$Input$CreateOneOrderMessageInput<TRes> {
  factory CopyWith$Input$CreateOneOrderMessageInput(
    Input$CreateOneOrderMessageInput instance,
    TRes Function(Input$CreateOneOrderMessageInput) then,
  ) = _CopyWithImpl$Input$CreateOneOrderMessageInput;

  factory CopyWith$Input$CreateOneOrderMessageInput.stub(TRes res) =
      _CopyWithStubImpl$Input$CreateOneOrderMessageInput;

  TRes call({Input$OrderMessageInput? orderMessage});
  CopyWith$Input$OrderMessageInput<TRes> get orderMessage;
}

class _CopyWithImpl$Input$CreateOneOrderMessageInput<TRes>
    implements CopyWith$Input$CreateOneOrderMessageInput<TRes> {
  _CopyWithImpl$Input$CreateOneOrderMessageInput(
    this._instance,
    this._then,
  );

  final Input$CreateOneOrderMessageInput _instance;

  final TRes Function(Input$CreateOneOrderMessageInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? orderMessage = _undefined}) =>
      _then(Input$CreateOneOrderMessageInput._({
        ..._instance._$data,
        if (orderMessage != _undefined && orderMessage != null)
          'orderMessage': (orderMessage as Input$OrderMessageInput),
      }));
  CopyWith$Input$OrderMessageInput<TRes> get orderMessage {
    final local$orderMessage = _instance.orderMessage;
    return CopyWith$Input$OrderMessageInput(
        local$orderMessage, (e) => call(orderMessage: e));
  }
}

class _CopyWithStubImpl$Input$CreateOneOrderMessageInput<TRes>
    implements CopyWith$Input$CreateOneOrderMessageInput<TRes> {
  _CopyWithStubImpl$Input$CreateOneOrderMessageInput(this._res);

  TRes _res;

  call({Input$OrderMessageInput? orderMessage}) => _res;
  CopyWith$Input$OrderMessageInput<TRes> get orderMessage =>
      CopyWith$Input$OrderMessageInput.stub(_res);
}

class Input$OrderMessageInput {
  factory Input$OrderMessageInput({
    required String requestId,
    required String content,
  }) =>
      Input$OrderMessageInput._({
        r'requestId': requestId,
        r'content': content,
      });

  Input$OrderMessageInput._(this._$data);

  factory Input$OrderMessageInput.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$requestId = data['requestId'];
    result$data['requestId'] = (l$requestId as String);
    final l$content = data['content'];
    result$data['content'] = (l$content as String);
    return Input$OrderMessageInput._(result$data);
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

  CopyWith$Input$OrderMessageInput<Input$OrderMessageInput> get copyWith =>
      CopyWith$Input$OrderMessageInput(
        this,
        (i) => i,
      );
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Input$OrderMessageInput) ||
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

abstract class CopyWith$Input$OrderMessageInput<TRes> {
  factory CopyWith$Input$OrderMessageInput(
    Input$OrderMessageInput instance,
    TRes Function(Input$OrderMessageInput) then,
  ) = _CopyWithImpl$Input$OrderMessageInput;

  factory CopyWith$Input$OrderMessageInput.stub(TRes res) =
      _CopyWithStubImpl$Input$OrderMessageInput;

  TRes call({
    String? requestId,
    String? content,
  });
}

class _CopyWithImpl$Input$OrderMessageInput<TRes>
    implements CopyWith$Input$OrderMessageInput<TRes> {
  _CopyWithImpl$Input$OrderMessageInput(
    this._instance,
    this._then,
  );

  final Input$OrderMessageInput _instance;

  final TRes Function(Input$OrderMessageInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? requestId = _undefined,
    Object? content = _undefined,
  }) =>
      _then(Input$OrderMessageInput._({
        ..._instance._$data,
        if (requestId != _undefined && requestId != null)
          'requestId': (requestId as String),
        if (content != _undefined && content != null)
          'content': (content as String),
      }));
}

class _CopyWithStubImpl$Input$OrderMessageInput<TRes>
    implements CopyWith$Input$OrderMessageInput<TRes> {
  _CopyWithStubImpl$Input$OrderMessageInput(this._res);

  TRes _res;

  call({
    String? requestId,
    String? content,
  }) =>
      _res;
}

class Input$TopUpWalletInput {
  factory Input$TopUpWalletInput({
    required String gatewayId,
    required double amount,
    required String currency,
    String? token,
    double? pin,
    double? otp,
    String? transactionId,
  }) =>
      Input$TopUpWalletInput._({
        r'gatewayId': gatewayId,
        r'amount': amount,
        r'currency': currency,
        if (token != null) r'token': token,
        if (pin != null) r'pin': pin,
        if (otp != null) r'otp': otp,
        if (transactionId != null) r'transactionId': transactionId,
      });

  Input$TopUpWalletInput._(this._$data);

  factory Input$TopUpWalletInput.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$gatewayId = data['gatewayId'];
    result$data['gatewayId'] = (l$gatewayId as String);
    final l$amount = data['amount'];
    result$data['amount'] = (l$amount as num).toDouble();
    final l$currency = data['currency'];
    result$data['currency'] = (l$currency as String);
    if (data.containsKey('token')) {
      final l$token = data['token'];
      result$data['token'] = (l$token as String?);
    }
    if (data.containsKey('pin')) {
      final l$pin = data['pin'];
      result$data['pin'] = (l$pin as num?)?.toDouble();
    }
    if (data.containsKey('otp')) {
      final l$otp = data['otp'];
      result$data['otp'] = (l$otp as num?)?.toDouble();
    }
    if (data.containsKey('transactionId')) {
      final l$transactionId = data['transactionId'];
      result$data['transactionId'] = (l$transactionId as String?);
    }
    return Input$TopUpWalletInput._(result$data);
  }

  Map<String, dynamic> _$data;

  String get gatewayId => (_$data['gatewayId'] as String);
  double get amount => (_$data['amount'] as double);
  String get currency => (_$data['currency'] as String);
  String? get token => (_$data['token'] as String?);
  double? get pin => (_$data['pin'] as double?);
  double? get otp => (_$data['otp'] as double?);
  String? get transactionId => (_$data['transactionId'] as String?);
  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$gatewayId = gatewayId;
    result$data['gatewayId'] = l$gatewayId;
    final l$amount = amount;
    result$data['amount'] = l$amount;
    final l$currency = currency;
    result$data['currency'] = l$currency;
    if (_$data.containsKey('token')) {
      final l$token = token;
      result$data['token'] = l$token;
    }
    if (_$data.containsKey('pin')) {
      final l$pin = pin;
      result$data['pin'] = l$pin;
    }
    if (_$data.containsKey('otp')) {
      final l$otp = otp;
      result$data['otp'] = l$otp;
    }
    if (_$data.containsKey('transactionId')) {
      final l$transactionId = transactionId;
      result$data['transactionId'] = l$transactionId;
    }
    return result$data;
  }

  CopyWith$Input$TopUpWalletInput<Input$TopUpWalletInput> get copyWith =>
      CopyWith$Input$TopUpWalletInput(
        this,
        (i) => i,
      );
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Input$TopUpWalletInput) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$gatewayId = gatewayId;
    final lOther$gatewayId = other.gatewayId;
    if (l$gatewayId != lOther$gatewayId) {
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
    final l$token = token;
    final lOther$token = other.token;
    if (_$data.containsKey('token') != other._$data.containsKey('token')) {
      return false;
    }
    if (l$token != lOther$token) {
      return false;
    }
    final l$pin = pin;
    final lOther$pin = other.pin;
    if (_$data.containsKey('pin') != other._$data.containsKey('pin')) {
      return false;
    }
    if (l$pin != lOther$pin) {
      return false;
    }
    final l$otp = otp;
    final lOther$otp = other.otp;
    if (_$data.containsKey('otp') != other._$data.containsKey('otp')) {
      return false;
    }
    if (l$otp != lOther$otp) {
      return false;
    }
    final l$transactionId = transactionId;
    final lOther$transactionId = other.transactionId;
    if (_$data.containsKey('transactionId') !=
        other._$data.containsKey('transactionId')) {
      return false;
    }
    if (l$transactionId != lOther$transactionId) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$gatewayId = gatewayId;
    final l$amount = amount;
    final l$currency = currency;
    final l$token = token;
    final l$pin = pin;
    final l$otp = otp;
    final l$transactionId = transactionId;
    return Object.hashAll([
      l$gatewayId,
      l$amount,
      l$currency,
      _$data.containsKey('token') ? l$token : const {},
      _$data.containsKey('pin') ? l$pin : const {},
      _$data.containsKey('otp') ? l$otp : const {},
      _$data.containsKey('transactionId') ? l$transactionId : const {},
    ]);
  }
}

abstract class CopyWith$Input$TopUpWalletInput<TRes> {
  factory CopyWith$Input$TopUpWalletInput(
    Input$TopUpWalletInput instance,
    TRes Function(Input$TopUpWalletInput) then,
  ) = _CopyWithImpl$Input$TopUpWalletInput;

  factory CopyWith$Input$TopUpWalletInput.stub(TRes res) =
      _CopyWithStubImpl$Input$TopUpWalletInput;

  TRes call({
    String? gatewayId,
    double? amount,
    String? currency,
    String? token,
    double? pin,
    double? otp,
    String? transactionId,
  });
}

class _CopyWithImpl$Input$TopUpWalletInput<TRes>
    implements CopyWith$Input$TopUpWalletInput<TRes> {
  _CopyWithImpl$Input$TopUpWalletInput(
    this._instance,
    this._then,
  );

  final Input$TopUpWalletInput _instance;

  final TRes Function(Input$TopUpWalletInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? gatewayId = _undefined,
    Object? amount = _undefined,
    Object? currency = _undefined,
    Object? token = _undefined,
    Object? pin = _undefined,
    Object? otp = _undefined,
    Object? transactionId = _undefined,
  }) =>
      _then(Input$TopUpWalletInput._({
        ..._instance._$data,
        if (gatewayId != _undefined && gatewayId != null)
          'gatewayId': (gatewayId as String),
        if (amount != _undefined && amount != null)
          'amount': (amount as double),
        if (currency != _undefined && currency != null)
          'currency': (currency as String),
        if (token != _undefined) 'token': (token as String?),
        if (pin != _undefined) 'pin': (pin as double?),
        if (otp != _undefined) 'otp': (otp as double?),
        if (transactionId != _undefined)
          'transactionId': (transactionId as String?),
      }));
}

class _CopyWithStubImpl$Input$TopUpWalletInput<TRes>
    implements CopyWith$Input$TopUpWalletInput<TRes> {
  _CopyWithStubImpl$Input$TopUpWalletInput(this._res);

  TRes _res;

  call({
    String? gatewayId,
    double? amount,
    String? currency,
    String? token,
    double? pin,
    double? otp,
    String? transactionId,
  }) =>
      _res;
}

class Input$CreateOneComplaintInput {
  factory Input$CreateOneComplaintInput(
          {required Input$ComplaintInput complaint}) =>
      Input$CreateOneComplaintInput._({
        r'complaint': complaint,
      });

  Input$CreateOneComplaintInput._(this._$data);

  factory Input$CreateOneComplaintInput.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$complaint = data['complaint'];
    result$data['complaint'] =
        Input$ComplaintInput.fromJson((l$complaint as Map<String, dynamic>));
    return Input$CreateOneComplaintInput._(result$data);
  }

  Map<String, dynamic> _$data;

  Input$ComplaintInput get complaint =>
      (_$data['complaint'] as Input$ComplaintInput);
  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$complaint = complaint;
    result$data['complaint'] = l$complaint.toJson();
    return result$data;
  }

  CopyWith$Input$CreateOneComplaintInput<Input$CreateOneComplaintInput>
      get copyWith => CopyWith$Input$CreateOneComplaintInput(
            this,
            (i) => i,
          );
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Input$CreateOneComplaintInput) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$complaint = complaint;
    final lOther$complaint = other.complaint;
    if (l$complaint != lOther$complaint) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$complaint = complaint;
    return Object.hashAll([l$complaint]);
  }
}

abstract class CopyWith$Input$CreateOneComplaintInput<TRes> {
  factory CopyWith$Input$CreateOneComplaintInput(
    Input$CreateOneComplaintInput instance,
    TRes Function(Input$CreateOneComplaintInput) then,
  ) = _CopyWithImpl$Input$CreateOneComplaintInput;

  factory CopyWith$Input$CreateOneComplaintInput.stub(TRes res) =
      _CopyWithStubImpl$Input$CreateOneComplaintInput;

  TRes call({Input$ComplaintInput? complaint});
  CopyWith$Input$ComplaintInput<TRes> get complaint;
}

class _CopyWithImpl$Input$CreateOneComplaintInput<TRes>
    implements CopyWith$Input$CreateOneComplaintInput<TRes> {
  _CopyWithImpl$Input$CreateOneComplaintInput(
    this._instance,
    this._then,
  );

  final Input$CreateOneComplaintInput _instance;

  final TRes Function(Input$CreateOneComplaintInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? complaint = _undefined}) =>
      _then(Input$CreateOneComplaintInput._({
        ..._instance._$data,
        if (complaint != _undefined && complaint != null)
          'complaint': (complaint as Input$ComplaintInput),
      }));
  CopyWith$Input$ComplaintInput<TRes> get complaint {
    final local$complaint = _instance.complaint;
    return CopyWith$Input$ComplaintInput(
        local$complaint, (e) => call(complaint: e));
  }
}

class _CopyWithStubImpl$Input$CreateOneComplaintInput<TRes>
    implements CopyWith$Input$CreateOneComplaintInput<TRes> {
  _CopyWithStubImpl$Input$CreateOneComplaintInput(this._res);

  TRes _res;

  call({Input$ComplaintInput? complaint}) => _res;
  CopyWith$Input$ComplaintInput<TRes> get complaint =>
      CopyWith$Input$ComplaintInput.stub(_res);
}

class Input$ComplaintInput {
  factory Input$ComplaintInput({
    required String requestId,
    required String subject,
    String? content,
    bool? requestedByDriver,
  }) =>
      Input$ComplaintInput._({
        r'requestId': requestId,
        r'subject': subject,
        if (content != null) r'content': content,
        if (requestedByDriver != null) r'requestedByDriver': requestedByDriver,
      });

  Input$ComplaintInput._(this._$data);

  factory Input$ComplaintInput.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$requestId = data['requestId'];
    result$data['requestId'] = (l$requestId as String);
    final l$subject = data['subject'];
    result$data['subject'] = (l$subject as String);
    if (data.containsKey('content')) {
      final l$content = data['content'];
      result$data['content'] = (l$content as String?);
    }
    if (data.containsKey('requestedByDriver')) {
      final l$requestedByDriver = data['requestedByDriver'];
      result$data['requestedByDriver'] = (l$requestedByDriver as bool?);
    }
    return Input$ComplaintInput._(result$data);
  }

  Map<String, dynamic> _$data;

  String get requestId => (_$data['requestId'] as String);
  String get subject => (_$data['subject'] as String);
  String? get content => (_$data['content'] as String?);
  bool? get requestedByDriver => (_$data['requestedByDriver'] as bool?);
  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$requestId = requestId;
    result$data['requestId'] = l$requestId;
    final l$subject = subject;
    result$data['subject'] = l$subject;
    if (_$data.containsKey('content')) {
      final l$content = content;
      result$data['content'] = l$content;
    }
    if (_$data.containsKey('requestedByDriver')) {
      final l$requestedByDriver = requestedByDriver;
      result$data['requestedByDriver'] = l$requestedByDriver;
    }
    return result$data;
  }

  CopyWith$Input$ComplaintInput<Input$ComplaintInput> get copyWith =>
      CopyWith$Input$ComplaintInput(
        this,
        (i) => i,
      );
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Input$ComplaintInput) || runtimeType != other.runtimeType) {
      return false;
    }
    final l$requestId = requestId;
    final lOther$requestId = other.requestId;
    if (l$requestId != lOther$requestId) {
      return false;
    }
    final l$subject = subject;
    final lOther$subject = other.subject;
    if (l$subject != lOther$subject) {
      return false;
    }
    final l$content = content;
    final lOther$content = other.content;
    if (_$data.containsKey('content') != other._$data.containsKey('content')) {
      return false;
    }
    if (l$content != lOther$content) {
      return false;
    }
    final l$requestedByDriver = requestedByDriver;
    final lOther$requestedByDriver = other.requestedByDriver;
    if (_$data.containsKey('requestedByDriver') !=
        other._$data.containsKey('requestedByDriver')) {
      return false;
    }
    if (l$requestedByDriver != lOther$requestedByDriver) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$requestId = requestId;
    final l$subject = subject;
    final l$content = content;
    final l$requestedByDriver = requestedByDriver;
    return Object.hashAll([
      l$requestId,
      l$subject,
      _$data.containsKey('content') ? l$content : const {},
      _$data.containsKey('requestedByDriver') ? l$requestedByDriver : const {},
    ]);
  }
}

abstract class CopyWith$Input$ComplaintInput<TRes> {
  factory CopyWith$Input$ComplaintInput(
    Input$ComplaintInput instance,
    TRes Function(Input$ComplaintInput) then,
  ) = _CopyWithImpl$Input$ComplaintInput;

  factory CopyWith$Input$ComplaintInput.stub(TRes res) =
      _CopyWithStubImpl$Input$ComplaintInput;

  TRes call({
    String? requestId,
    String? subject,
    String? content,
    bool? requestedByDriver,
  });
}

class _CopyWithImpl$Input$ComplaintInput<TRes>
    implements CopyWith$Input$ComplaintInput<TRes> {
  _CopyWithImpl$Input$ComplaintInput(
    this._instance,
    this._then,
  );

  final Input$ComplaintInput _instance;

  final TRes Function(Input$ComplaintInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? requestId = _undefined,
    Object? subject = _undefined,
    Object? content = _undefined,
    Object? requestedByDriver = _undefined,
  }) =>
      _then(Input$ComplaintInput._({
        ..._instance._$data,
        if (requestId != _undefined && requestId != null)
          'requestId': (requestId as String),
        if (subject != _undefined && subject != null)
          'subject': (subject as String),
        if (content != _undefined) 'content': (content as String?),
        if (requestedByDriver != _undefined)
          'requestedByDriver': (requestedByDriver as bool?),
      }));
}

class _CopyWithStubImpl$Input$ComplaintInput<TRes>
    implements CopyWith$Input$ComplaintInput<TRes> {
  _CopyWithStubImpl$Input$ComplaintInput(this._res);

  TRes _res;

  call({
    String? requestId,
    String? subject,
    String? content,
    bool? requestedByDriver,
  }) =>
      _res;
}

enum Enum$RiderWalletSortFields { id, riderId, $unknown }

String toJson$Enum$RiderWalletSortFields(Enum$RiderWalletSortFields e) {
  switch (e) {
    case Enum$RiderWalletSortFields.id:
      return r'id';
    case Enum$RiderWalletSortFields.riderId:
      return r'riderId';
    case Enum$RiderWalletSortFields.$unknown:
      return r'$unknown';
  }
}

Enum$RiderWalletSortFields fromJson$Enum$RiderWalletSortFields(String value) {
  switch (value) {
    case r'id':
      return Enum$RiderWalletSortFields.id;
    case r'riderId':
      return Enum$RiderWalletSortFields.riderId;
    default:
      return Enum$RiderWalletSortFields.$unknown;
  }
}

enum Enum$SortDirection { ASC, DESC, $unknown }

String toJson$Enum$SortDirection(Enum$SortDirection e) {
  switch (e) {
    case Enum$SortDirection.ASC:
      return r'ASC';
    case Enum$SortDirection.DESC:
      return r'DESC';
    case Enum$SortDirection.$unknown:
      return r'$unknown';
  }
}

Enum$SortDirection fromJson$Enum$SortDirection(String value) {
  switch (value) {
    case r'ASC':
      return Enum$SortDirection.ASC;
    case r'DESC':
      return Enum$SortDirection.DESC;
    default:
      return Enum$SortDirection.$unknown;
  }
}

enum Enum$SortNulls { NULLS_FIRST, NULLS_LAST, $unknown }

String toJson$Enum$SortNulls(Enum$SortNulls e) {
  switch (e) {
    case Enum$SortNulls.NULLS_FIRST:
      return r'NULLS_FIRST';
    case Enum$SortNulls.NULLS_LAST:
      return r'NULLS_LAST';
    case Enum$SortNulls.$unknown:
      return r'$unknown';
  }
}

Enum$SortNulls fromJson$Enum$SortNulls(String value) {
  switch (value) {
    case r'NULLS_FIRST':
      return Enum$SortNulls.NULLS_FIRST;
    case r'NULLS_LAST':
      return Enum$SortNulls.NULLS_LAST;
    default:
      return Enum$SortNulls.$unknown;
  }
}

enum Enum$ServicePaymentMethod { CashCredit, OnlyCredit, OnlyCash, $unknown }

String toJson$Enum$ServicePaymentMethod(Enum$ServicePaymentMethod e) {
  switch (e) {
    case Enum$ServicePaymentMethod.CashCredit:
      return r'CashCredit';
    case Enum$ServicePaymentMethod.OnlyCredit:
      return r'OnlyCredit';
    case Enum$ServicePaymentMethod.OnlyCash:
      return r'OnlyCash';
    case Enum$ServicePaymentMethod.$unknown:
      return r'$unknown';
  }
}

Enum$ServicePaymentMethod fromJson$Enum$ServicePaymentMethod(String value) {
  switch (value) {
    case r'CashCredit':
      return Enum$ServicePaymentMethod.CashCredit;
    case r'OnlyCredit':
      return Enum$ServicePaymentMethod.OnlyCredit;
    case r'OnlyCash':
      return Enum$ServicePaymentMethod.OnlyCash;
    default:
      return Enum$ServicePaymentMethod.$unknown;
  }
}

enum Enum$MessageStatus { Sent, Delivered, Seen, $unknown }

String toJson$Enum$MessageStatus(Enum$MessageStatus e) {
  switch (e) {
    case Enum$MessageStatus.Sent:
      return r'Sent';
    case Enum$MessageStatus.Delivered:
      return r'Delivered';
    case Enum$MessageStatus.Seen:
      return r'Seen';
    case Enum$MessageStatus.$unknown:
      return r'$unknown';
  }
}

Enum$MessageStatus fromJson$Enum$MessageStatus(String value) {
  switch (value) {
    case r'Sent':
      return Enum$MessageStatus.Sent;
    case r'Delivered':
      return Enum$MessageStatus.Delivered;
    case r'Seen':
      return Enum$MessageStatus.Seen;
    default:
      return Enum$MessageStatus.$unknown;
  }
}

enum Enum$ServiceOptionType { Free, Paid, TwoWay, $unknown }

String toJson$Enum$ServiceOptionType(Enum$ServiceOptionType e) {
  switch (e) {
    case Enum$ServiceOptionType.Free:
      return r'Free';
    case Enum$ServiceOptionType.Paid:
      return r'Paid';
    case Enum$ServiceOptionType.TwoWay:
      return r'TwoWay';
    case Enum$ServiceOptionType.$unknown:
      return r'$unknown';
  }
}

Enum$ServiceOptionType fromJson$Enum$ServiceOptionType(String value) {
  switch (value) {
    case r'Free':
      return Enum$ServiceOptionType.Free;
    case r'Paid':
      return Enum$ServiceOptionType.Paid;
    case r'TwoWay':
      return Enum$ServiceOptionType.TwoWay;
    default:
      return Enum$ServiceOptionType.$unknown;
  }
}

enum Enum$ServiceOptionIcon {
  Pet,
  TwoWay,
  Luggage,
  PackageDelivery,
  Shopping,
  Custom1,
  Custom2,
  Custom3,
  Custom4,
  Custom5,
  $unknown
}

String toJson$Enum$ServiceOptionIcon(Enum$ServiceOptionIcon e) {
  switch (e) {
    case Enum$ServiceOptionIcon.Pet:
      return r'Pet';
    case Enum$ServiceOptionIcon.TwoWay:
      return r'TwoWay';
    case Enum$ServiceOptionIcon.Luggage:
      return r'Luggage';
    case Enum$ServiceOptionIcon.PackageDelivery:
      return r'PackageDelivery';
    case Enum$ServiceOptionIcon.Shopping:
      return r'Shopping';
    case Enum$ServiceOptionIcon.Custom1:
      return r'Custom1';
    case Enum$ServiceOptionIcon.Custom2:
      return r'Custom2';
    case Enum$ServiceOptionIcon.Custom3:
      return r'Custom3';
    case Enum$ServiceOptionIcon.Custom4:
      return r'Custom4';
    case Enum$ServiceOptionIcon.Custom5:
      return r'Custom5';
    case Enum$ServiceOptionIcon.$unknown:
      return r'$unknown';
  }
}

Enum$ServiceOptionIcon fromJson$Enum$ServiceOptionIcon(String value) {
  switch (value) {
    case r'Pet':
      return Enum$ServiceOptionIcon.Pet;
    case r'TwoWay':
      return Enum$ServiceOptionIcon.TwoWay;
    case r'Luggage':
      return Enum$ServiceOptionIcon.Luggage;
    case r'PackageDelivery':
      return Enum$ServiceOptionIcon.PackageDelivery;
    case r'Shopping':
      return Enum$ServiceOptionIcon.Shopping;
    case r'Custom1':
      return Enum$ServiceOptionIcon.Custom1;
    case r'Custom2':
      return Enum$ServiceOptionIcon.Custom2;
    case r'Custom3':
      return Enum$ServiceOptionIcon.Custom3;
    case r'Custom4':
      return Enum$ServiceOptionIcon.Custom4;
    case r'Custom5':
      return Enum$ServiceOptionIcon.Custom5;
    default:
      return Enum$ServiceOptionIcon.$unknown;
  }
}

enum Enum$OrderStatus {
  Requested,
  NotFound,
  NoCloseFound,
  Found,
  DriverAccepted,
  Arrived,
  WaitingForPrePay,
  DriverCanceled,
  RiderCanceled,
  Started,
  WaitingForPostPay,
  WaitingForReview,
  Finished,
  Booked,
  Expired,
  $unknown
}

String toJson$Enum$OrderStatus(Enum$OrderStatus e) {
  switch (e) {
    case Enum$OrderStatus.Requested:
      return r'Requested';
    case Enum$OrderStatus.NotFound:
      return r'NotFound';
    case Enum$OrderStatus.NoCloseFound:
      return r'NoCloseFound';
    case Enum$OrderStatus.Found:
      return r'Found';
    case Enum$OrderStatus.DriverAccepted:
      return r'DriverAccepted';
    case Enum$OrderStatus.Arrived:
      return r'Arrived';
    case Enum$OrderStatus.WaitingForPrePay:
      return r'WaitingForPrePay';
    case Enum$OrderStatus.DriverCanceled:
      return r'DriverCanceled';
    case Enum$OrderStatus.RiderCanceled:
      return r'RiderCanceled';
    case Enum$OrderStatus.Started:
      return r'Started';
    case Enum$OrderStatus.WaitingForPostPay:
      return r'WaitingForPostPay';
    case Enum$OrderStatus.WaitingForReview:
      return r'WaitingForReview';
    case Enum$OrderStatus.Finished:
      return r'Finished';
    case Enum$OrderStatus.Booked:
      return r'Booked';
    case Enum$OrderStatus.Expired:
      return r'Expired';
    case Enum$OrderStatus.$unknown:
      return r'$unknown';
  }
}

Enum$OrderStatus fromJson$Enum$OrderStatus(String value) {
  switch (value) {
    case r'Requested':
      return Enum$OrderStatus.Requested;
    case r'NotFound':
      return Enum$OrderStatus.NotFound;
    case r'NoCloseFound':
      return Enum$OrderStatus.NoCloseFound;
    case r'Found':
      return Enum$OrderStatus.Found;
    case r'DriverAccepted':
      return Enum$OrderStatus.DriverAccepted;
    case r'Arrived':
      return Enum$OrderStatus.Arrived;
    case r'WaitingForPrePay':
      return Enum$OrderStatus.WaitingForPrePay;
    case r'DriverCanceled':
      return Enum$OrderStatus.DriverCanceled;
    case r'RiderCanceled':
      return Enum$OrderStatus.RiderCanceled;
    case r'Started':
      return Enum$OrderStatus.Started;
    case r'WaitingForPostPay':
      return Enum$OrderStatus.WaitingForPostPay;
    case r'WaitingForReview':
      return Enum$OrderStatus.WaitingForReview;
    case r'Finished':
      return Enum$OrderStatus.Finished;
    case r'Booked':
      return Enum$OrderStatus.Booked;
    case r'Expired':
      return Enum$OrderStatus.Expired;
    default:
      return Enum$OrderStatus.$unknown;
  }
}

enum Enum$ServiceOptionSortFields { id, $unknown }

String toJson$Enum$ServiceOptionSortFields(Enum$ServiceOptionSortFields e) {
  switch (e) {
    case Enum$ServiceOptionSortFields.id:
      return r'id';
    case Enum$ServiceOptionSortFields.$unknown:
      return r'$unknown';
  }
}

Enum$ServiceOptionSortFields fromJson$Enum$ServiceOptionSortFields(
    String value) {
  switch (value) {
    case r'id':
      return Enum$ServiceOptionSortFields.id;
    default:
      return Enum$ServiceOptionSortFields.$unknown;
  }
}

enum Enum$OrderMessageSortFields { id, requestId, $unknown }

String toJson$Enum$OrderMessageSortFields(Enum$OrderMessageSortFields e) {
  switch (e) {
    case Enum$OrderMessageSortFields.id:
      return r'id';
    case Enum$OrderMessageSortFields.requestId:
      return r'requestId';
    case Enum$OrderMessageSortFields.$unknown:
      return r'$unknown';
  }
}

Enum$OrderMessageSortFields fromJson$Enum$OrderMessageSortFields(String value) {
  switch (value) {
    case r'id':
      return Enum$OrderMessageSortFields.id;
    case r'requestId':
      return Enum$OrderMessageSortFields.requestId;
    default:
      return Enum$OrderMessageSortFields.$unknown;
  }
}

enum Enum$DriverStatus {
  Online,
  Offline,
  Blocked,
  InService,
  WaitingDocuments,
  PendingApproval,
  SoftReject,
  HardReject,
  $unknown
}

String toJson$Enum$DriverStatus(Enum$DriverStatus e) {
  switch (e) {
    case Enum$DriverStatus.Online:
      return r'Online';
    case Enum$DriverStatus.Offline:
      return r'Offline';
    case Enum$DriverStatus.Blocked:
      return r'Blocked';
    case Enum$DriverStatus.InService:
      return r'InService';
    case Enum$DriverStatus.WaitingDocuments:
      return r'WaitingDocuments';
    case Enum$DriverStatus.PendingApproval:
      return r'PendingApproval';
    case Enum$DriverStatus.SoftReject:
      return r'SoftReject';
    case Enum$DriverStatus.HardReject:
      return r'HardReject';
    case Enum$DriverStatus.$unknown:
      return r'$unknown';
  }
}

Enum$DriverStatus fromJson$Enum$DriverStatus(String value) {
  switch (value) {
    case r'Online':
      return Enum$DriverStatus.Online;
    case r'Offline':
      return Enum$DriverStatus.Offline;
    case r'Blocked':
      return Enum$DriverStatus.Blocked;
    case r'InService':
      return Enum$DriverStatus.InService;
    case r'WaitingDocuments':
      return Enum$DriverStatus.WaitingDocuments;
    case r'PendingApproval':
      return Enum$DriverStatus.PendingApproval;
    case r'SoftReject':
      return Enum$DriverStatus.SoftReject;
    case r'HardReject':
      return Enum$DriverStatus.HardReject;
    default:
      return Enum$DriverStatus.$unknown;
  }
}

enum Enum$Gender { Male, Female, Unknown, $unknown }

String toJson$Enum$Gender(Enum$Gender e) {
  switch (e) {
    case Enum$Gender.Male:
      return r'Male';
    case Enum$Gender.Female:
      return r'Female';
    case Enum$Gender.Unknown:
      return r'Unknown';
    case Enum$Gender.$unknown:
      return r'$unknown';
  }
}

Enum$Gender fromJson$Enum$Gender(String value) {
  switch (value) {
    case r'Male':
      return Enum$Gender.Male;
    case r'Female':
      return Enum$Gender.Female;
    case r'Unknown':
      return Enum$Gender.Unknown;
    default:
      return Enum$Gender.$unknown;
  }
}

enum Enum$MediaSortFields { id, $unknown }

String toJson$Enum$MediaSortFields(Enum$MediaSortFields e) {
  switch (e) {
    case Enum$MediaSortFields.id:
      return r'id';
    case Enum$MediaSortFields.$unknown:
      return r'$unknown';
  }
}

Enum$MediaSortFields fromJson$Enum$MediaSortFields(String value) {
  switch (value) {
    case r'id':
      return Enum$MediaSortFields.id;
    default:
      return Enum$MediaSortFields.$unknown;
  }
}

enum Enum$OrderSortFields {
  id,
  status,
  createdOn,
  distanceBest,
  costBest,
  driverId,
  $unknown
}

String toJson$Enum$OrderSortFields(Enum$OrderSortFields e) {
  switch (e) {
    case Enum$OrderSortFields.id:
      return r'id';
    case Enum$OrderSortFields.status:
      return r'status';
    case Enum$OrderSortFields.createdOn:
      return r'createdOn';
    case Enum$OrderSortFields.distanceBest:
      return r'distanceBest';
    case Enum$OrderSortFields.costBest:
      return r'costBest';
    case Enum$OrderSortFields.driverId:
      return r'driverId';
    case Enum$OrderSortFields.$unknown:
      return r'$unknown';
  }
}

Enum$OrderSortFields fromJson$Enum$OrderSortFields(String value) {
  switch (value) {
    case r'id':
      return Enum$OrderSortFields.id;
    case r'status':
      return Enum$OrderSortFields.status;
    case r'createdOn':
      return Enum$OrderSortFields.createdOn;
    case r'distanceBest':
      return Enum$OrderSortFields.distanceBest;
    case r'costBest':
      return Enum$OrderSortFields.costBest;
    case r'driverId':
      return Enum$OrderSortFields.driverId;
    default:
      return Enum$OrderSortFields.$unknown;
  }
}

enum Enum$ServiceSortFields { id, $unknown }

String toJson$Enum$ServiceSortFields(Enum$ServiceSortFields e) {
  switch (e) {
    case Enum$ServiceSortFields.id:
      return r'id';
    case Enum$ServiceSortFields.$unknown:
      return r'$unknown';
  }
}

Enum$ServiceSortFields fromJson$Enum$ServiceSortFields(String value) {
  switch (value) {
    case r'id':
      return Enum$ServiceSortFields.id;
    default:
      return Enum$ServiceSortFields.$unknown;
  }
}

enum Enum$DriverWalletSortFields { id, driverId, $unknown }

String toJson$Enum$DriverWalletSortFields(Enum$DriverWalletSortFields e) {
  switch (e) {
    case Enum$DriverWalletSortFields.id:
      return r'id';
    case Enum$DriverWalletSortFields.driverId:
      return r'driverId';
    case Enum$DriverWalletSortFields.$unknown:
      return r'$unknown';
  }
}

Enum$DriverWalletSortFields fromJson$Enum$DriverWalletSortFields(String value) {
  switch (value) {
    case r'id':
      return Enum$DriverWalletSortFields.id;
    case r'driverId':
      return Enum$DriverWalletSortFields.driverId;
    default:
      return Enum$DriverWalletSortFields.$unknown;
  }
}

enum Enum$AnnouncementUserType { Driver, Rider, Operator, $unknown }

String toJson$Enum$AnnouncementUserType(Enum$AnnouncementUserType e) {
  switch (e) {
    case Enum$AnnouncementUserType.Driver:
      return r'Driver';
    case Enum$AnnouncementUserType.Rider:
      return r'Rider';
    case Enum$AnnouncementUserType.Operator:
      return r'Operator';
    case Enum$AnnouncementUserType.$unknown:
      return r'$unknown';
  }
}

Enum$AnnouncementUserType fromJson$Enum$AnnouncementUserType(String value) {
  switch (value) {
    case r'Driver':
      return Enum$AnnouncementUserType.Driver;
    case r'Rider':
      return Enum$AnnouncementUserType.Rider;
    case r'Operator':
      return Enum$AnnouncementUserType.Operator;
    default:
      return Enum$AnnouncementUserType.$unknown;
  }
}

enum Enum$TransactionAction { Recharge, Deduct, $unknown }

String toJson$Enum$TransactionAction(Enum$TransactionAction e) {
  switch (e) {
    case Enum$TransactionAction.Recharge:
      return r'Recharge';
    case Enum$TransactionAction.Deduct:
      return r'Deduct';
    case Enum$TransactionAction.$unknown:
      return r'$unknown';
  }
}

Enum$TransactionAction fromJson$Enum$TransactionAction(String value) {
  switch (value) {
    case r'Recharge':
      return Enum$TransactionAction.Recharge;
    case r'Deduct':
      return Enum$TransactionAction.Deduct;
    default:
      return Enum$TransactionAction.$unknown;
  }
}

enum Enum$DriverDeductTransactionType {
  Withdraw,
  Commission,
  Correction,
  $unknown
}

String toJson$Enum$DriverDeductTransactionType(
    Enum$DriverDeductTransactionType e) {
  switch (e) {
    case Enum$DriverDeductTransactionType.Withdraw:
      return r'Withdraw';
    case Enum$DriverDeductTransactionType.Commission:
      return r'Commission';
    case Enum$DriverDeductTransactionType.Correction:
      return r'Correction';
    case Enum$DriverDeductTransactionType.$unknown:
      return r'$unknown';
  }
}

Enum$DriverDeductTransactionType fromJson$Enum$DriverDeductTransactionType(
    String value) {
  switch (value) {
    case r'Withdraw':
      return Enum$DriverDeductTransactionType.Withdraw;
    case r'Commission':
      return Enum$DriverDeductTransactionType.Commission;
    case r'Correction':
      return Enum$DriverDeductTransactionType.Correction;
    default:
      return Enum$DriverDeductTransactionType.$unknown;
  }
}

enum Enum$DriverRechargeTransactionType {
  OrderFee,
  BankTransfer,
  InAppPayment,
  Gift,
  $unknown
}

String toJson$Enum$DriverRechargeTransactionType(
    Enum$DriverRechargeTransactionType e) {
  switch (e) {
    case Enum$DriverRechargeTransactionType.OrderFee:
      return r'OrderFee';
    case Enum$DriverRechargeTransactionType.BankTransfer:
      return r'BankTransfer';
    case Enum$DriverRechargeTransactionType.InAppPayment:
      return r'InAppPayment';
    case Enum$DriverRechargeTransactionType.Gift:
      return r'Gift';
    case Enum$DriverRechargeTransactionType.$unknown:
      return r'$unknown';
  }
}

Enum$DriverRechargeTransactionType fromJson$Enum$DriverRechargeTransactionType(
    String value) {
  switch (value) {
    case r'OrderFee':
      return Enum$DriverRechargeTransactionType.OrderFee;
    case r'BankTransfer':
      return Enum$DriverRechargeTransactionType.BankTransfer;
    case r'InAppPayment':
      return Enum$DriverRechargeTransactionType.InAppPayment;
    case r'Gift':
      return Enum$DriverRechargeTransactionType.Gift;
    default:
      return Enum$DriverRechargeTransactionType.$unknown;
  }
}

enum Enum$PaymentGatewayType {
  Stripe,
  BrainTree,
  PayPal,
  Paytm,
  Razorpay,
  Paystack,
  PayU,
  Instamojo,
  Flutterwave,
  PayGate,
  MIPS,
  MercadoPago,
  AmazonPaymentServices,
  MyTMoney,
  WayForPay,
  MyFatoorah,
  SberBank,
  CustomLink,
  $unknown
}

String toJson$Enum$PaymentGatewayType(Enum$PaymentGatewayType e) {
  switch (e) {
    case Enum$PaymentGatewayType.Stripe:
      return r'Stripe';
    case Enum$PaymentGatewayType.BrainTree:
      return r'BrainTree';
    case Enum$PaymentGatewayType.PayPal:
      return r'PayPal';
    case Enum$PaymentGatewayType.Paytm:
      return r'Paytm';
    case Enum$PaymentGatewayType.Razorpay:
      return r'Razorpay';
    case Enum$PaymentGatewayType.Paystack:
      return r'Paystack';
    case Enum$PaymentGatewayType.PayU:
      return r'PayU';
    case Enum$PaymentGatewayType.Instamojo:
      return r'Instamojo';
    case Enum$PaymentGatewayType.Flutterwave:
      return r'Flutterwave';
    case Enum$PaymentGatewayType.PayGate:
      return r'PayGate';
    case Enum$PaymentGatewayType.MIPS:
      return r'MIPS';
    case Enum$PaymentGatewayType.MercadoPago:
      return r'MercadoPago';
    case Enum$PaymentGatewayType.AmazonPaymentServices:
      return r'AmazonPaymentServices';
    case Enum$PaymentGatewayType.MyTMoney:
      return r'MyTMoney';
    case Enum$PaymentGatewayType.WayForPay:
      return r'WayForPay';
    case Enum$PaymentGatewayType.MyFatoorah:
      return r'MyFatoorah';
    case Enum$PaymentGatewayType.SberBank:
      return r'SberBank';
    case Enum$PaymentGatewayType.CustomLink:
      return r'CustomLink';
    case Enum$PaymentGatewayType.$unknown:
      return r'$unknown';
  }
}

Enum$PaymentGatewayType fromJson$Enum$PaymentGatewayType(String value) {
  switch (value) {
    case r'Stripe':
      return Enum$PaymentGatewayType.Stripe;
    case r'BrainTree':
      return Enum$PaymentGatewayType.BrainTree;
    case r'PayPal':
      return Enum$PaymentGatewayType.PayPal;
    case r'Paytm':
      return Enum$PaymentGatewayType.Paytm;
    case r'Razorpay':
      return Enum$PaymentGatewayType.Razorpay;
    case r'Paystack':
      return Enum$PaymentGatewayType.Paystack;
    case r'PayU':
      return Enum$PaymentGatewayType.PayU;
    case r'Instamojo':
      return Enum$PaymentGatewayType.Instamojo;
    case r'Flutterwave':
      return Enum$PaymentGatewayType.Flutterwave;
    case r'PayGate':
      return Enum$PaymentGatewayType.PayGate;
    case r'MIPS':
      return Enum$PaymentGatewayType.MIPS;
    case r'MercadoPago':
      return Enum$PaymentGatewayType.MercadoPago;
    case r'AmazonPaymentServices':
      return Enum$PaymentGatewayType.AmazonPaymentServices;
    case r'MyTMoney':
      return Enum$PaymentGatewayType.MyTMoney;
    case r'WayForPay':
      return Enum$PaymentGatewayType.WayForPay;
    case r'MyFatoorah':
      return Enum$PaymentGatewayType.MyFatoorah;
    case r'SberBank':
      return Enum$PaymentGatewayType.SberBank;
    case r'CustomLink':
      return Enum$PaymentGatewayType.CustomLink;
    default:
      return Enum$PaymentGatewayType.$unknown;
  }
}

enum Enum$TopUpWalletStatus { OK, Redirect, $unknown }

String toJson$Enum$TopUpWalletStatus(Enum$TopUpWalletStatus e) {
  switch (e) {
    case Enum$TopUpWalletStatus.OK:
      return r'OK';
    case Enum$TopUpWalletStatus.Redirect:
      return r'Redirect';
    case Enum$TopUpWalletStatus.$unknown:
      return r'$unknown';
  }
}

Enum$TopUpWalletStatus fromJson$Enum$TopUpWalletStatus(String value) {
  switch (value) {
    case r'OK':
      return Enum$TopUpWalletStatus.OK;
    case r'Redirect':
      return Enum$TopUpWalletStatus.Redirect;
    default:
      return Enum$TopUpWalletStatus.$unknown;
  }
}

enum Enum$ComplaintStatus { Submitted, UnderInvestigation, Resolved, $unknown }

String toJson$Enum$ComplaintStatus(Enum$ComplaintStatus e) {
  switch (e) {
    case Enum$ComplaintStatus.Submitted:
      return r'Submitted';
    case Enum$ComplaintStatus.UnderInvestigation:
      return r'UnderInvestigation';
    case Enum$ComplaintStatus.Resolved:
      return r'Resolved';
    case Enum$ComplaintStatus.$unknown:
      return r'$unknown';
  }
}

Enum$ComplaintStatus fromJson$Enum$ComplaintStatus(String value) {
  switch (value) {
    case r'Submitted':
      return Enum$ComplaintStatus.Submitted;
    case r'UnderInvestigation':
      return Enum$ComplaintStatus.UnderInvestigation;
    case r'Resolved':
      return Enum$ComplaintStatus.Resolved;
    default:
      return Enum$ComplaintStatus.$unknown;
  }
}

enum Enum$VersionStatus { Latest, MandatoryUpdate, OptionalUpdate, $unknown }

String toJson$Enum$VersionStatus(Enum$VersionStatus e) {
  switch (e) {
    case Enum$VersionStatus.Latest:
      return r'Latest';
    case Enum$VersionStatus.MandatoryUpdate:
      return r'MandatoryUpdate';
    case Enum$VersionStatus.OptionalUpdate:
      return r'OptionalUpdate';
    case Enum$VersionStatus.$unknown:
      return r'$unknown';
  }
}

Enum$VersionStatus fromJson$Enum$VersionStatus(String value) {
  switch (value) {
    case r'Latest':
      return Enum$VersionStatus.Latest;
    case r'MandatoryUpdate':
      return Enum$VersionStatus.MandatoryUpdate;
    case r'OptionalUpdate':
      return Enum$VersionStatus.OptionalUpdate;
    default:
      return Enum$VersionStatus.$unknown;
  }
}

enum Enum$CarModelSortFields { id, $unknown }

String toJson$Enum$CarModelSortFields(Enum$CarModelSortFields e) {
  switch (e) {
    case Enum$CarModelSortFields.id:
      return r'id';
    case Enum$CarModelSortFields.$unknown:
      return r'$unknown';
  }
}

Enum$CarModelSortFields fromJson$Enum$CarModelSortFields(String value) {
  switch (value) {
    case r'id':
      return Enum$CarModelSortFields.id;
    default:
      return Enum$CarModelSortFields.$unknown;
  }
}

enum Enum$CarColorSortFields { id, $unknown }

String toJson$Enum$CarColorSortFields(Enum$CarColorSortFields e) {
  switch (e) {
    case Enum$CarColorSortFields.id:
      return r'id';
    case Enum$CarColorSortFields.$unknown:
      return r'$unknown';
  }
}

Enum$CarColorSortFields fromJson$Enum$CarColorSortFields(String value) {
  switch (value) {
    case r'id':
      return Enum$CarColorSortFields.id;
    default:
      return Enum$CarColorSortFields.$unknown;
  }
}

enum Enum$TimeQuery { Daily, Weekly, Monthly, $unknown }

String toJson$Enum$TimeQuery(Enum$TimeQuery e) {
  switch (e) {
    case Enum$TimeQuery.Daily:
      return r'Daily';
    case Enum$TimeQuery.Weekly:
      return r'Weekly';
    case Enum$TimeQuery.Monthly:
      return r'Monthly';
    case Enum$TimeQuery.$unknown:
      return r'$unknown';
  }
}

Enum$TimeQuery fromJson$Enum$TimeQuery(String value) {
  switch (value) {
    case r'Daily':
      return Enum$TimeQuery.Daily;
    case r'Weekly':
      return Enum$TimeQuery.Weekly;
    case r'Monthly':
      return Enum$TimeQuery.Monthly;
    default:
      return Enum$TimeQuery.$unknown;
  }
}

enum Enum$DriverTransacionSortFields { id, driverId, $unknown }

String toJson$Enum$DriverTransacionSortFields(
    Enum$DriverTransacionSortFields e) {
  switch (e) {
    case Enum$DriverTransacionSortFields.id:
      return r'id';
    case Enum$DriverTransacionSortFields.driverId:
      return r'driverId';
    case Enum$DriverTransacionSortFields.$unknown:
      return r'$unknown';
  }
}

Enum$DriverTransacionSortFields fromJson$Enum$DriverTransacionSortFields(
    String value) {
  switch (value) {
    case r'id':
      return Enum$DriverTransacionSortFields.id;
    case r'driverId':
      return Enum$DriverTransacionSortFields.driverId;
    default:
      return Enum$DriverTransacionSortFields.$unknown;
  }
}

enum Enum$PaymentGatewaySortFields { id, enabled, $unknown }

String toJson$Enum$PaymentGatewaySortFields(Enum$PaymentGatewaySortFields e) {
  switch (e) {
    case Enum$PaymentGatewaySortFields.id:
      return r'id';
    case Enum$PaymentGatewaySortFields.enabled:
      return r'enabled';
    case Enum$PaymentGatewaySortFields.$unknown:
      return r'$unknown';
  }
}

Enum$PaymentGatewaySortFields fromJson$Enum$PaymentGatewaySortFields(
    String value) {
  switch (value) {
    case r'id':
      return Enum$PaymentGatewaySortFields.id;
    case r'enabled':
      return Enum$PaymentGatewaySortFields.enabled;
    default:
      return Enum$PaymentGatewaySortFields.$unknown;
  }
}

enum Enum$AnnouncementSortFields { id, userType, $unknown }

String toJson$Enum$AnnouncementSortFields(Enum$AnnouncementSortFields e) {
  switch (e) {
    case Enum$AnnouncementSortFields.id:
      return r'id';
    case Enum$AnnouncementSortFields.userType:
      return r'userType';
    case Enum$AnnouncementSortFields.$unknown:
      return r'$unknown';
  }
}

Enum$AnnouncementSortFields fromJson$Enum$AnnouncementSortFields(String value) {
  switch (value) {
    case r'id':
      return Enum$AnnouncementSortFields.id;
    case r'userType':
      return Enum$AnnouncementSortFields.userType;
    default:
      return Enum$AnnouncementSortFields.$unknown;
  }
}

enum Enum$__TypeKind {
  SCALAR,
  OBJECT,
  INTERFACE,
  UNION,
  ENUM,
  INPUT_OBJECT,
  LIST,
  NON_NULL,
  $unknown
}

String toJson$Enum$__TypeKind(Enum$__TypeKind e) {
  switch (e) {
    case Enum$__TypeKind.SCALAR:
      return r'SCALAR';
    case Enum$__TypeKind.OBJECT:
      return r'OBJECT';
    case Enum$__TypeKind.INTERFACE:
      return r'INTERFACE';
    case Enum$__TypeKind.UNION:
      return r'UNION';
    case Enum$__TypeKind.ENUM:
      return r'ENUM';
    case Enum$__TypeKind.INPUT_OBJECT:
      return r'INPUT_OBJECT';
    case Enum$__TypeKind.LIST:
      return r'LIST';
    case Enum$__TypeKind.NON_NULL:
      return r'NON_NULL';
    case Enum$__TypeKind.$unknown:
      return r'$unknown';
  }
}

Enum$__TypeKind fromJson$Enum$__TypeKind(String value) {
  switch (value) {
    case r'SCALAR':
      return Enum$__TypeKind.SCALAR;
    case r'OBJECT':
      return Enum$__TypeKind.OBJECT;
    case r'INTERFACE':
      return Enum$__TypeKind.INTERFACE;
    case r'UNION':
      return Enum$__TypeKind.UNION;
    case r'ENUM':
      return Enum$__TypeKind.ENUM;
    case r'INPUT_OBJECT':
      return Enum$__TypeKind.INPUT_OBJECT;
    case r'LIST':
      return Enum$__TypeKind.LIST;
    case r'NON_NULL':
      return Enum$__TypeKind.NON_NULL;
    default:
      return Enum$__TypeKind.$unknown;
  }
}

enum Enum$__DirectiveLocation {
  QUERY,
  MUTATION,
  SUBSCRIPTION,
  FIELD,
  FRAGMENT_DEFINITION,
  FRAGMENT_SPREAD,
  INLINE_FRAGMENT,
  VARIABLE_DEFINITION,
  SCHEMA,
  SCALAR,
  OBJECT,
  FIELD_DEFINITION,
  ARGUMENT_DEFINITION,
  INTERFACE,
  UNION,
  ENUM,
  ENUM_VALUE,
  INPUT_OBJECT,
  INPUT_FIELD_DEFINITION,
  $unknown
}

String toJson$Enum$__DirectiveLocation(Enum$__DirectiveLocation e) {
  switch (e) {
    case Enum$__DirectiveLocation.QUERY:
      return r'QUERY';
    case Enum$__DirectiveLocation.MUTATION:
      return r'MUTATION';
    case Enum$__DirectiveLocation.SUBSCRIPTION:
      return r'SUBSCRIPTION';
    case Enum$__DirectiveLocation.FIELD:
      return r'FIELD';
    case Enum$__DirectiveLocation.FRAGMENT_DEFINITION:
      return r'FRAGMENT_DEFINITION';
    case Enum$__DirectiveLocation.FRAGMENT_SPREAD:
      return r'FRAGMENT_SPREAD';
    case Enum$__DirectiveLocation.INLINE_FRAGMENT:
      return r'INLINE_FRAGMENT';
    case Enum$__DirectiveLocation.VARIABLE_DEFINITION:
      return r'VARIABLE_DEFINITION';
    case Enum$__DirectiveLocation.SCHEMA:
      return r'SCHEMA';
    case Enum$__DirectiveLocation.SCALAR:
      return r'SCALAR';
    case Enum$__DirectiveLocation.OBJECT:
      return r'OBJECT';
    case Enum$__DirectiveLocation.FIELD_DEFINITION:
      return r'FIELD_DEFINITION';
    case Enum$__DirectiveLocation.ARGUMENT_DEFINITION:
      return r'ARGUMENT_DEFINITION';
    case Enum$__DirectiveLocation.INTERFACE:
      return r'INTERFACE';
    case Enum$__DirectiveLocation.UNION:
      return r'UNION';
    case Enum$__DirectiveLocation.ENUM:
      return r'ENUM';
    case Enum$__DirectiveLocation.ENUM_VALUE:
      return r'ENUM_VALUE';
    case Enum$__DirectiveLocation.INPUT_OBJECT:
      return r'INPUT_OBJECT';
    case Enum$__DirectiveLocation.INPUT_FIELD_DEFINITION:
      return r'INPUT_FIELD_DEFINITION';
    case Enum$__DirectiveLocation.$unknown:
      return r'$unknown';
  }
}

Enum$__DirectiveLocation fromJson$Enum$__DirectiveLocation(String value) {
  switch (value) {
    case r'QUERY':
      return Enum$__DirectiveLocation.QUERY;
    case r'MUTATION':
      return Enum$__DirectiveLocation.MUTATION;
    case r'SUBSCRIPTION':
      return Enum$__DirectiveLocation.SUBSCRIPTION;
    case r'FIELD':
      return Enum$__DirectiveLocation.FIELD;
    case r'FRAGMENT_DEFINITION':
      return Enum$__DirectiveLocation.FRAGMENT_DEFINITION;
    case r'FRAGMENT_SPREAD':
      return Enum$__DirectiveLocation.FRAGMENT_SPREAD;
    case r'INLINE_FRAGMENT':
      return Enum$__DirectiveLocation.INLINE_FRAGMENT;
    case r'VARIABLE_DEFINITION':
      return Enum$__DirectiveLocation.VARIABLE_DEFINITION;
    case r'SCHEMA':
      return Enum$__DirectiveLocation.SCHEMA;
    case r'SCALAR':
      return Enum$__DirectiveLocation.SCALAR;
    case r'OBJECT':
      return Enum$__DirectiveLocation.OBJECT;
    case r'FIELD_DEFINITION':
      return Enum$__DirectiveLocation.FIELD_DEFINITION;
    case r'ARGUMENT_DEFINITION':
      return Enum$__DirectiveLocation.ARGUMENT_DEFINITION;
    case r'INTERFACE':
      return Enum$__DirectiveLocation.INTERFACE;
    case r'UNION':
      return Enum$__DirectiveLocation.UNION;
    case r'ENUM':
      return Enum$__DirectiveLocation.ENUM;
    case r'ENUM_VALUE':
      return Enum$__DirectiveLocation.ENUM_VALUE;
    case r'INPUT_OBJECT':
      return Enum$__DirectiveLocation.INPUT_OBJECT;
    case r'INPUT_FIELD_DEFINITION':
      return Enum$__DirectiveLocation.INPUT_FIELD_DEFINITION;
    default:
      return Enum$__DirectiveLocation.$unknown;
  }
}

const possibleTypesMap = <String, Set<String>>{};
