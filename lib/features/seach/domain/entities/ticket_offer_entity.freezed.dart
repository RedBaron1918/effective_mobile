// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'ticket_offer_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

TicketOfferEntity _$TicketOfferEntityFromJson(Map<String, dynamic> json) {
  return _TicketOfferEntity.fromJson(json);
}

/// @nodoc
mixin _$TicketOfferEntity {
  @JsonKey(name: "id")
  int get id => throw _privateConstructorUsedError;
  @JsonKey(name: "title")
  String get title => throw _privateConstructorUsedError;
  @JsonKey(name: "time_range")
  List<String>? get timeRange => throw _privateConstructorUsedError;
  PriceEntity? get price => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TicketOfferEntityCopyWith<TicketOfferEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TicketOfferEntityCopyWith<$Res> {
  factory $TicketOfferEntityCopyWith(
          TicketOfferEntity value, $Res Function(TicketOfferEntity) then) =
      _$TicketOfferEntityCopyWithImpl<$Res, TicketOfferEntity>;
  @useResult
  $Res call(
      {@JsonKey(name: "id") int id,
      @JsonKey(name: "title") String title,
      @JsonKey(name: "time_range") List<String>? timeRange,
      PriceEntity? price});

  $PriceEntityCopyWith<$Res>? get price;
}

/// @nodoc
class _$TicketOfferEntityCopyWithImpl<$Res, $Val extends TicketOfferEntity>
    implements $TicketOfferEntityCopyWith<$Res> {
  _$TicketOfferEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
    Object? timeRange = freezed,
    Object? price = freezed,
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
      timeRange: freezed == timeRange
          ? _value.timeRange
          : timeRange // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      price: freezed == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as PriceEntity?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $PriceEntityCopyWith<$Res>? get price {
    if (_value.price == null) {
      return null;
    }

    return $PriceEntityCopyWith<$Res>(_value.price!, (value) {
      return _then(_value.copyWith(price: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$TicketOfferEntityImplCopyWith<$Res>
    implements $TicketOfferEntityCopyWith<$Res> {
  factory _$$TicketOfferEntityImplCopyWith(_$TicketOfferEntityImpl value,
          $Res Function(_$TicketOfferEntityImpl) then) =
      __$$TicketOfferEntityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "id") int id,
      @JsonKey(name: "title") String title,
      @JsonKey(name: "time_range") List<String>? timeRange,
      PriceEntity? price});

  @override
  $PriceEntityCopyWith<$Res>? get price;
}

/// @nodoc
class __$$TicketOfferEntityImplCopyWithImpl<$Res>
    extends _$TicketOfferEntityCopyWithImpl<$Res, _$TicketOfferEntityImpl>
    implements _$$TicketOfferEntityImplCopyWith<$Res> {
  __$$TicketOfferEntityImplCopyWithImpl(_$TicketOfferEntityImpl _value,
      $Res Function(_$TicketOfferEntityImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
    Object? timeRange = freezed,
    Object? price = freezed,
  }) {
    return _then(_$TicketOfferEntityImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      timeRange: freezed == timeRange
          ? _value._timeRange
          : timeRange // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      price: freezed == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as PriceEntity?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$TicketOfferEntityImpl implements _TicketOfferEntity {
  const _$TicketOfferEntityImpl(
      {@JsonKey(name: "id") required this.id,
      @JsonKey(name: "title") required this.title,
      @JsonKey(name: "time_range") required final List<String>? timeRange,
      required this.price})
      : _timeRange = timeRange;

  factory _$TicketOfferEntityImpl.fromJson(Map<String, dynamic> json) =>
      _$$TicketOfferEntityImplFromJson(json);

  @override
  @JsonKey(name: "id")
  final int id;
  @override
  @JsonKey(name: "title")
  final String title;
  final List<String>? _timeRange;
  @override
  @JsonKey(name: "time_range")
  List<String>? get timeRange {
    final value = _timeRange;
    if (value == null) return null;
    if (_timeRange is EqualUnmodifiableListView) return _timeRange;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final PriceEntity? price;

  @override
  String toString() {
    return 'TicketOfferEntity(id: $id, title: $title, timeRange: $timeRange, price: $price)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TicketOfferEntityImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.title, title) || other.title == title) &&
            const DeepCollectionEquality()
                .equals(other._timeRange, _timeRange) &&
            (identical(other.price, price) || other.price == price));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, title,
      const DeepCollectionEquality().hash(_timeRange), price);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TicketOfferEntityImplCopyWith<_$TicketOfferEntityImpl> get copyWith =>
      __$$TicketOfferEntityImplCopyWithImpl<_$TicketOfferEntityImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TicketOfferEntityImplToJson(
      this,
    );
  }
}

abstract class _TicketOfferEntity implements TicketOfferEntity {
  const factory _TicketOfferEntity(
      {@JsonKey(name: "id") required final int id,
      @JsonKey(name: "title") required final String title,
      @JsonKey(name: "time_range") required final List<String>? timeRange,
      required final PriceEntity? price}) = _$TicketOfferEntityImpl;

  factory _TicketOfferEntity.fromJson(Map<String, dynamic> json) =
      _$TicketOfferEntityImpl.fromJson;

  @override
  @JsonKey(name: "id")
  int get id;
  @override
  @JsonKey(name: "title")
  String get title;
  @override
  @JsonKey(name: "time_range")
  List<String>? get timeRange;
  @override
  PriceEntity? get price;
  @override
  @JsonKey(ignore: true)
  _$$TicketOfferEntityImplCopyWith<_$TicketOfferEntityImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
