// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'offers_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

OffersEntity _$OffersEntityFromJson(Map<String, dynamic> json) {
  return _OffersEntity.fromJson(json);
}

/// @nodoc
mixin _$OffersEntity {
  int get id => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  String get town => throw _privateConstructorUsedError;
  PriceEntity get price => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $OffersEntityCopyWith<OffersEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OffersEntityCopyWith<$Res> {
  factory $OffersEntityCopyWith(
          OffersEntity value, $Res Function(OffersEntity) then) =
      _$OffersEntityCopyWithImpl<$Res, OffersEntity>;
  @useResult
  $Res call({int id, String title, String town, PriceEntity price});

  $PriceEntityCopyWith<$Res> get price;
}

/// @nodoc
class _$OffersEntityCopyWithImpl<$Res, $Val extends OffersEntity>
    implements $OffersEntityCopyWith<$Res> {
  _$OffersEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
    Object? town = null,
    Object? price = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      town: null == town
          ? _value.town
          : town // ignore: cast_nullable_to_non_nullable
              as String,
      price: null == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as PriceEntity,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $PriceEntityCopyWith<$Res> get price {
    return $PriceEntityCopyWith<$Res>(_value.price, (value) {
      return _then(_value.copyWith(price: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$OffersEntityImplCopyWith<$Res>
    implements $OffersEntityCopyWith<$Res> {
  factory _$$OffersEntityImplCopyWith(
          _$OffersEntityImpl value, $Res Function(_$OffersEntityImpl) then) =
      __$$OffersEntityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int id, String title, String town, PriceEntity price});

  @override
  $PriceEntityCopyWith<$Res> get price;
}

/// @nodoc
class __$$OffersEntityImplCopyWithImpl<$Res>
    extends _$OffersEntityCopyWithImpl<$Res, _$OffersEntityImpl>
    implements _$$OffersEntityImplCopyWith<$Res> {
  __$$OffersEntityImplCopyWithImpl(
      _$OffersEntityImpl _value, $Res Function(_$OffersEntityImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
    Object? town = null,
    Object? price = null,
  }) {
    return _then(_$OffersEntityImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      town: null == town
          ? _value.town
          : town // ignore: cast_nullable_to_non_nullable
              as String,
      price: null == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as PriceEntity,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$OffersEntityImpl implements _OffersEntity {
  const _$OffersEntityImpl(
      {required this.id,
      required this.title,
      required this.town,
      required this.price});

  factory _$OffersEntityImpl.fromJson(Map<String, dynamic> json) =>
      _$$OffersEntityImplFromJson(json);

  @override
  final int id;
  @override
  final String title;
  @override
  final String town;
  @override
  final PriceEntity price;

  @override
  String toString() {
    return 'OffersEntity(id: $id, title: $title, town: $town, price: $price)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OffersEntityImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.town, town) || other.town == town) &&
            (identical(other.price, price) || other.price == price));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, title, town, price);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$OffersEntityImplCopyWith<_$OffersEntityImpl> get copyWith =>
      __$$OffersEntityImplCopyWithImpl<_$OffersEntityImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$OffersEntityImplToJson(
      this,
    );
  }
}

abstract class _OffersEntity implements OffersEntity {
  const factory _OffersEntity(
      {required final int id,
      required final String title,
      required final String town,
      required final PriceEntity price}) = _$OffersEntityImpl;

  factory _OffersEntity.fromJson(Map<String, dynamic> json) =
      _$OffersEntityImpl.fromJson;

  @override
  int get id;
  @override
  String get title;
  @override
  String get town;
  @override
  PriceEntity get price;
  @override
  @JsonKey(ignore: true)
  _$$OffersEntityImplCopyWith<_$OffersEntityImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

PriceEntity _$PriceEntityFromJson(Map<String, dynamic> json) {
  return _PriceEntity.fromJson(json);
}

/// @nodoc
mixin _$PriceEntity {
  int? get value => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PriceEntityCopyWith<PriceEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PriceEntityCopyWith<$Res> {
  factory $PriceEntityCopyWith(
          PriceEntity value, $Res Function(PriceEntity) then) =
      _$PriceEntityCopyWithImpl<$Res, PriceEntity>;
  @useResult
  $Res call({int? value});
}

/// @nodoc
class _$PriceEntityCopyWithImpl<$Res, $Val extends PriceEntity>
    implements $PriceEntityCopyWith<$Res> {
  _$PriceEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? value = freezed,
  }) {
    return _then(_value.copyWith(
      value: freezed == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PriceEntityImplCopyWith<$Res>
    implements $PriceEntityCopyWith<$Res> {
  factory _$$PriceEntityImplCopyWith(
          _$PriceEntityImpl value, $Res Function(_$PriceEntityImpl) then) =
      __$$PriceEntityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int? value});
}

/// @nodoc
class __$$PriceEntityImplCopyWithImpl<$Res>
    extends _$PriceEntityCopyWithImpl<$Res, _$PriceEntityImpl>
    implements _$$PriceEntityImplCopyWith<$Res> {
  __$$PriceEntityImplCopyWithImpl(
      _$PriceEntityImpl _value, $Res Function(_$PriceEntityImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? value = freezed,
  }) {
    return _then(_$PriceEntityImpl(
      value: freezed == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PriceEntityImpl implements _PriceEntity {
  const _$PriceEntityImpl({required this.value});

  factory _$PriceEntityImpl.fromJson(Map<String, dynamic> json) =>
      _$$PriceEntityImplFromJson(json);

  @override
  final int? value;

  @override
  String toString() {
    return 'PriceEntity(value: $value)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PriceEntityImpl &&
            (identical(other.value, value) || other.value == value));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, value);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PriceEntityImplCopyWith<_$PriceEntityImpl> get copyWith =>
      __$$PriceEntityImplCopyWithImpl<_$PriceEntityImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PriceEntityImplToJson(
      this,
    );
  }
}

abstract class _PriceEntity implements PriceEntity {
  const factory _PriceEntity({required final int? value}) = _$PriceEntityImpl;

  factory _PriceEntity.fromJson(Map<String, dynamic> json) =
      _$PriceEntityImpl.fromJson;

  @override
  int? get value;
  @override
  @JsonKey(ignore: true)
  _$$PriceEntityImplCopyWith<_$PriceEntityImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
