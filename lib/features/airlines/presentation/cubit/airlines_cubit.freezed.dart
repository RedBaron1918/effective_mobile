// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'airlines_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$AirlinesState {
  Status get status => throw _privateConstructorUsedError;
  List<OffersEntity> get offersList => throw _privateConstructorUsedError;
  String get startPoint => throw _privateConstructorUsedError;
  String get endPoint => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $AirlinesStateCopyWith<AirlinesState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AirlinesStateCopyWith<$Res> {
  factory $AirlinesStateCopyWith(
          AirlinesState value, $Res Function(AirlinesState) then) =
      _$AirlinesStateCopyWithImpl<$Res, AirlinesState>;
  @useResult
  $Res call(
      {Status status,
      List<OffersEntity> offersList,
      String startPoint,
      String endPoint});
}

/// @nodoc
class _$AirlinesStateCopyWithImpl<$Res, $Val extends AirlinesState>
    implements $AirlinesStateCopyWith<$Res> {
  _$AirlinesStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? offersList = null,
    Object? startPoint = null,
    Object? endPoint = null,
  }) {
    return _then(_value.copyWith(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as Status,
      offersList: null == offersList
          ? _value.offersList
          : offersList // ignore: cast_nullable_to_non_nullable
              as List<OffersEntity>,
      startPoint: null == startPoint
          ? _value.startPoint
          : startPoint // ignore: cast_nullable_to_non_nullable
              as String,
      endPoint: null == endPoint
          ? _value.endPoint
          : endPoint // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AirlinesStateImplCopyWith<$Res>
    implements $AirlinesStateCopyWith<$Res> {
  factory _$$AirlinesStateImplCopyWith(
          _$AirlinesStateImpl value, $Res Function(_$AirlinesStateImpl) then) =
      __$$AirlinesStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {Status status,
      List<OffersEntity> offersList,
      String startPoint,
      String endPoint});
}

/// @nodoc
class __$$AirlinesStateImplCopyWithImpl<$Res>
    extends _$AirlinesStateCopyWithImpl<$Res, _$AirlinesStateImpl>
    implements _$$AirlinesStateImplCopyWith<$Res> {
  __$$AirlinesStateImplCopyWithImpl(
      _$AirlinesStateImpl _value, $Res Function(_$AirlinesStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? offersList = null,
    Object? startPoint = null,
    Object? endPoint = null,
  }) {
    return _then(_$AirlinesStateImpl(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as Status,
      offersList: null == offersList
          ? _value._offersList
          : offersList // ignore: cast_nullable_to_non_nullable
              as List<OffersEntity>,
      startPoint: null == startPoint
          ? _value.startPoint
          : startPoint // ignore: cast_nullable_to_non_nullable
              as String,
      endPoint: null == endPoint
          ? _value.endPoint
          : endPoint // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$AirlinesStateImpl extends _AirlinesState {
  const _$AirlinesStateImpl(
      {this.status = Status.initial,
      final List<OffersEntity> offersList = const <OffersEntity>[],
      this.startPoint = '',
      this.endPoint = ''})
      : _offersList = offersList,
        super._();

  @override
  @JsonKey()
  final Status status;
  final List<OffersEntity> _offersList;
  @override
  @JsonKey()
  List<OffersEntity> get offersList {
    if (_offersList is EqualUnmodifiableListView) return _offersList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_offersList);
  }

  @override
  @JsonKey()
  final String startPoint;
  @override
  @JsonKey()
  final String endPoint;

  @override
  String toString() {
    return 'AirlinesState(status: $status, offersList: $offersList, startPoint: $startPoint, endPoint: $endPoint)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AirlinesStateImpl &&
            (identical(other.status, status) || other.status == status) &&
            const DeepCollectionEquality()
                .equals(other._offersList, _offersList) &&
            (identical(other.startPoint, startPoint) ||
                other.startPoint == startPoint) &&
            (identical(other.endPoint, endPoint) ||
                other.endPoint == endPoint));
  }

  @override
  int get hashCode => Object.hash(runtimeType, status,
      const DeepCollectionEquality().hash(_offersList), startPoint, endPoint);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AirlinesStateImplCopyWith<_$AirlinesStateImpl> get copyWith =>
      __$$AirlinesStateImplCopyWithImpl<_$AirlinesStateImpl>(this, _$identity);
}

abstract class _AirlinesState extends AirlinesState {
  const factory _AirlinesState(
      {final Status status,
      final List<OffersEntity> offersList,
      final String startPoint,
      final String endPoint}) = _$AirlinesStateImpl;
  const _AirlinesState._() : super._();

  @override
  Status get status;
  @override
  List<OffersEntity> get offersList;
  @override
  String get startPoint;
  @override
  String get endPoint;
  @override
  @JsonKey(ignore: true)
  _$$AirlinesStateImplCopyWith<_$AirlinesStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
