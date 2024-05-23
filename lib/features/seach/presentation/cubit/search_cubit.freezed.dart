// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'search_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$SearchState {
  Status get status => throw _privateConstructorUsedError;
  List<TicketOfferEntity> get offersList => throw _privateConstructorUsedError;
  List<TicketEntity> get tickets => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SearchStateCopyWith<SearchState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SearchStateCopyWith<$Res> {
  factory $SearchStateCopyWith(
          SearchState value, $Res Function(SearchState) then) =
      _$SearchStateCopyWithImpl<$Res, SearchState>;
  @useResult
  $Res call(
      {Status status,
      List<TicketOfferEntity> offersList,
      List<TicketEntity> tickets});
}

/// @nodoc
class _$SearchStateCopyWithImpl<$Res, $Val extends SearchState>
    implements $SearchStateCopyWith<$Res> {
  _$SearchStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? offersList = null,
    Object? tickets = null,
  }) {
    return _then(_value.copyWith(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as Status,
      offersList: null == offersList
          ? _value.offersList
          : offersList // ignore: cast_nullable_to_non_nullable
              as List<TicketOfferEntity>,
      tickets: null == tickets
          ? _value.tickets
          : tickets // ignore: cast_nullable_to_non_nullable
              as List<TicketEntity>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SearchStateImplCopyWith<$Res>
    implements $SearchStateCopyWith<$Res> {
  factory _$$SearchStateImplCopyWith(
          _$SearchStateImpl value, $Res Function(_$SearchStateImpl) then) =
      __$$SearchStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {Status status,
      List<TicketOfferEntity> offersList,
      List<TicketEntity> tickets});
}

/// @nodoc
class __$$SearchStateImplCopyWithImpl<$Res>
    extends _$SearchStateCopyWithImpl<$Res, _$SearchStateImpl>
    implements _$$SearchStateImplCopyWith<$Res> {
  __$$SearchStateImplCopyWithImpl(
      _$SearchStateImpl _value, $Res Function(_$SearchStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? offersList = null,
    Object? tickets = null,
  }) {
    return _then(_$SearchStateImpl(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as Status,
      offersList: null == offersList
          ? _value._offersList
          : offersList // ignore: cast_nullable_to_non_nullable
              as List<TicketOfferEntity>,
      tickets: null == tickets
          ? _value._tickets
          : tickets // ignore: cast_nullable_to_non_nullable
              as List<TicketEntity>,
    ));
  }
}

/// @nodoc

class _$SearchStateImpl extends _SearchState {
  const _$SearchStateImpl(
      {this.status = Status.initial,
      final List<TicketOfferEntity> offersList = const <TicketOfferEntity>[],
      final List<TicketEntity> tickets = const <TicketEntity>[]})
      : _offersList = offersList,
        _tickets = tickets,
        super._();

  @override
  @JsonKey()
  final Status status;
  final List<TicketOfferEntity> _offersList;
  @override
  @JsonKey()
  List<TicketOfferEntity> get offersList {
    if (_offersList is EqualUnmodifiableListView) return _offersList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_offersList);
  }

  final List<TicketEntity> _tickets;
  @override
  @JsonKey()
  List<TicketEntity> get tickets {
    if (_tickets is EqualUnmodifiableListView) return _tickets;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_tickets);
  }

  @override
  String toString() {
    return 'SearchState(status: $status, offersList: $offersList, tickets: $tickets)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SearchStateImpl &&
            (identical(other.status, status) || other.status == status) &&
            const DeepCollectionEquality()
                .equals(other._offersList, _offersList) &&
            const DeepCollectionEquality().equals(other._tickets, _tickets));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      status,
      const DeepCollectionEquality().hash(_offersList),
      const DeepCollectionEquality().hash(_tickets));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SearchStateImplCopyWith<_$SearchStateImpl> get copyWith =>
      __$$SearchStateImplCopyWithImpl<_$SearchStateImpl>(this, _$identity);
}

abstract class _SearchState extends SearchState {
  const factory _SearchState(
      {final Status status,
      final List<TicketOfferEntity> offersList,
      final List<TicketEntity> tickets}) = _$SearchStateImpl;
  const _SearchState._() : super._();

  @override
  Status get status;
  @override
  List<TicketOfferEntity> get offersList;
  @override
  List<TicketEntity> get tickets;
  @override
  @JsonKey(ignore: true)
  _$$SearchStateImplCopyWith<_$SearchStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
