// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'ticket_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

TicketEntity _$TicketEntityFromJson(Map<String, dynamic> json) {
  return _Ticket.fromJson(json);
}

/// @nodoc
mixin _$TicketEntity {
  @JsonKey(name: "id")
  int get id => throw _privateConstructorUsedError;
  @JsonKey(name: "badge")
  String? get badge => throw _privateConstructorUsedError;
  @JsonKey(name: "price")
  PriceEntity? get price => throw _privateConstructorUsedError;
  @JsonKey(name: "provider_name")
  String get providerName => throw _privateConstructorUsedError;
  @JsonKey(name: "company")
  String get company => throw _privateConstructorUsedError;
  @JsonKey(name: "departure")
  Arrival get departure => throw _privateConstructorUsedError;
  @JsonKey(name: "arrival")
  Arrival get arrival => throw _privateConstructorUsedError;
  @JsonKey(name: "has_transfer")
  bool get hasTransfer => throw _privateConstructorUsedError;
  @JsonKey(name: "has_visa_transfer")
  bool get hasVisaTransfer => throw _privateConstructorUsedError;
  @JsonKey(name: "luggage")
  Luggage? get luggage => throw _privateConstructorUsedError;
  @JsonKey(name: "hand_luggage")
  HandLuggage? get handLuggage => throw _privateConstructorUsedError;
  @JsonKey(name: "is_returnable")
  bool get isReturnable => throw _privateConstructorUsedError;
  @JsonKey(name: "is_exchangable")
  bool get isExchangable => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TicketEntityCopyWith<TicketEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TicketEntityCopyWith<$Res> {
  factory $TicketEntityCopyWith(
          TicketEntity value, $Res Function(TicketEntity) then) =
      _$TicketEntityCopyWithImpl<$Res, TicketEntity>;
  @useResult
  $Res call(
      {@JsonKey(name: "id") int id,
      @JsonKey(name: "badge") String? badge,
      @JsonKey(name: "price") PriceEntity? price,
      @JsonKey(name: "provider_name") String providerName,
      @JsonKey(name: "company") String company,
      @JsonKey(name: "departure") Arrival departure,
      @JsonKey(name: "arrival") Arrival arrival,
      @JsonKey(name: "has_transfer") bool hasTransfer,
      @JsonKey(name: "has_visa_transfer") bool hasVisaTransfer,
      @JsonKey(name: "luggage") Luggage? luggage,
      @JsonKey(name: "hand_luggage") HandLuggage? handLuggage,
      @JsonKey(name: "is_returnable") bool isReturnable,
      @JsonKey(name: "is_exchangable") bool isExchangable});

  $PriceEntityCopyWith<$Res>? get price;
  $ArrivalCopyWith<$Res> get departure;
  $ArrivalCopyWith<$Res> get arrival;
  $LuggageCopyWith<$Res>? get luggage;
  $HandLuggageCopyWith<$Res>? get handLuggage;
}

/// @nodoc
class _$TicketEntityCopyWithImpl<$Res, $Val extends TicketEntity>
    implements $TicketEntityCopyWith<$Res> {
  _$TicketEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? badge = freezed,
    Object? price = freezed,
    Object? providerName = null,
    Object? company = null,
    Object? departure = null,
    Object? arrival = null,
    Object? hasTransfer = null,
    Object? hasVisaTransfer = null,
    Object? luggage = freezed,
    Object? handLuggage = freezed,
    Object? isReturnable = null,
    Object? isExchangable = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      badge: freezed == badge
          ? _value.badge
          : badge // ignore: cast_nullable_to_non_nullable
              as String?,
      price: freezed == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as PriceEntity?,
      providerName: null == providerName
          ? _value.providerName
          : providerName // ignore: cast_nullable_to_non_nullable
              as String,
      company: null == company
          ? _value.company
          : company // ignore: cast_nullable_to_non_nullable
              as String,
      departure: null == departure
          ? _value.departure
          : departure // ignore: cast_nullable_to_non_nullable
              as Arrival,
      arrival: null == arrival
          ? _value.arrival
          : arrival // ignore: cast_nullable_to_non_nullable
              as Arrival,
      hasTransfer: null == hasTransfer
          ? _value.hasTransfer
          : hasTransfer // ignore: cast_nullable_to_non_nullable
              as bool,
      hasVisaTransfer: null == hasVisaTransfer
          ? _value.hasVisaTransfer
          : hasVisaTransfer // ignore: cast_nullable_to_non_nullable
              as bool,
      luggage: freezed == luggage
          ? _value.luggage
          : luggage // ignore: cast_nullable_to_non_nullable
              as Luggage?,
      handLuggage: freezed == handLuggage
          ? _value.handLuggage
          : handLuggage // ignore: cast_nullable_to_non_nullable
              as HandLuggage?,
      isReturnable: null == isReturnable
          ? _value.isReturnable
          : isReturnable // ignore: cast_nullable_to_non_nullable
              as bool,
      isExchangable: null == isExchangable
          ? _value.isExchangable
          : isExchangable // ignore: cast_nullable_to_non_nullable
              as bool,
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

  @override
  @pragma('vm:prefer-inline')
  $ArrivalCopyWith<$Res> get departure {
    return $ArrivalCopyWith<$Res>(_value.departure, (value) {
      return _then(_value.copyWith(departure: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $ArrivalCopyWith<$Res> get arrival {
    return $ArrivalCopyWith<$Res>(_value.arrival, (value) {
      return _then(_value.copyWith(arrival: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $LuggageCopyWith<$Res>? get luggage {
    if (_value.luggage == null) {
      return null;
    }

    return $LuggageCopyWith<$Res>(_value.luggage!, (value) {
      return _then(_value.copyWith(luggage: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $HandLuggageCopyWith<$Res>? get handLuggage {
    if (_value.handLuggage == null) {
      return null;
    }

    return $HandLuggageCopyWith<$Res>(_value.handLuggage!, (value) {
      return _then(_value.copyWith(handLuggage: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$TicketImplCopyWith<$Res>
    implements $TicketEntityCopyWith<$Res> {
  factory _$$TicketImplCopyWith(
          _$TicketImpl value, $Res Function(_$TicketImpl) then) =
      __$$TicketImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "id") int id,
      @JsonKey(name: "badge") String? badge,
      @JsonKey(name: "price") PriceEntity? price,
      @JsonKey(name: "provider_name") String providerName,
      @JsonKey(name: "company") String company,
      @JsonKey(name: "departure") Arrival departure,
      @JsonKey(name: "arrival") Arrival arrival,
      @JsonKey(name: "has_transfer") bool hasTransfer,
      @JsonKey(name: "has_visa_transfer") bool hasVisaTransfer,
      @JsonKey(name: "luggage") Luggage? luggage,
      @JsonKey(name: "hand_luggage") HandLuggage? handLuggage,
      @JsonKey(name: "is_returnable") bool isReturnable,
      @JsonKey(name: "is_exchangable") bool isExchangable});

  @override
  $PriceEntityCopyWith<$Res>? get price;
  @override
  $ArrivalCopyWith<$Res> get departure;
  @override
  $ArrivalCopyWith<$Res> get arrival;
  @override
  $LuggageCopyWith<$Res>? get luggage;
  @override
  $HandLuggageCopyWith<$Res>? get handLuggage;
}

/// @nodoc
class __$$TicketImplCopyWithImpl<$Res>
    extends _$TicketEntityCopyWithImpl<$Res, _$TicketImpl>
    implements _$$TicketImplCopyWith<$Res> {
  __$$TicketImplCopyWithImpl(
      _$TicketImpl _value, $Res Function(_$TicketImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? badge = freezed,
    Object? price = freezed,
    Object? providerName = null,
    Object? company = null,
    Object? departure = null,
    Object? arrival = null,
    Object? hasTransfer = null,
    Object? hasVisaTransfer = null,
    Object? luggage = freezed,
    Object? handLuggage = freezed,
    Object? isReturnable = null,
    Object? isExchangable = null,
  }) {
    return _then(_$TicketImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      badge: freezed == badge
          ? _value.badge
          : badge // ignore: cast_nullable_to_non_nullable
              as String?,
      price: freezed == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as PriceEntity?,
      providerName: null == providerName
          ? _value.providerName
          : providerName // ignore: cast_nullable_to_non_nullable
              as String,
      company: null == company
          ? _value.company
          : company // ignore: cast_nullable_to_non_nullable
              as String,
      departure: null == departure
          ? _value.departure
          : departure // ignore: cast_nullable_to_non_nullable
              as Arrival,
      arrival: null == arrival
          ? _value.arrival
          : arrival // ignore: cast_nullable_to_non_nullable
              as Arrival,
      hasTransfer: null == hasTransfer
          ? _value.hasTransfer
          : hasTransfer // ignore: cast_nullable_to_non_nullable
              as bool,
      hasVisaTransfer: null == hasVisaTransfer
          ? _value.hasVisaTransfer
          : hasVisaTransfer // ignore: cast_nullable_to_non_nullable
              as bool,
      luggage: freezed == luggage
          ? _value.luggage
          : luggage // ignore: cast_nullable_to_non_nullable
              as Luggage?,
      handLuggage: freezed == handLuggage
          ? _value.handLuggage
          : handLuggage // ignore: cast_nullable_to_non_nullable
              as HandLuggage?,
      isReturnable: null == isReturnable
          ? _value.isReturnable
          : isReturnable // ignore: cast_nullable_to_non_nullable
              as bool,
      isExchangable: null == isExchangable
          ? _value.isExchangable
          : isExchangable // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$TicketImpl implements _Ticket {
  const _$TicketImpl(
      {@JsonKey(name: "id") required this.id,
      @JsonKey(name: "badge") required this.badge,
      @JsonKey(name: "price") required this.price,
      @JsonKey(name: "provider_name") required this.providerName,
      @JsonKey(name: "company") required this.company,
      @JsonKey(name: "departure") required this.departure,
      @JsonKey(name: "arrival") required this.arrival,
      @JsonKey(name: "has_transfer") required this.hasTransfer,
      @JsonKey(name: "has_visa_transfer") required this.hasVisaTransfer,
      @JsonKey(name: "luggage") required this.luggage,
      @JsonKey(name: "hand_luggage") required this.handLuggage,
      @JsonKey(name: "is_returnable") required this.isReturnable,
      @JsonKey(name: "is_exchangable") required this.isExchangable});

  factory _$TicketImpl.fromJson(Map<String, dynamic> json) =>
      _$$TicketImplFromJson(json);

  @override
  @JsonKey(name: "id")
  final int id;
  @override
  @JsonKey(name: "badge")
  final String? badge;
  @override
  @JsonKey(name: "price")
  final PriceEntity? price;
  @override
  @JsonKey(name: "provider_name")
  final String providerName;
  @override
  @JsonKey(name: "company")
  final String company;
  @override
  @JsonKey(name: "departure")
  final Arrival departure;
  @override
  @JsonKey(name: "arrival")
  final Arrival arrival;
  @override
  @JsonKey(name: "has_transfer")
  final bool hasTransfer;
  @override
  @JsonKey(name: "has_visa_transfer")
  final bool hasVisaTransfer;
  @override
  @JsonKey(name: "luggage")
  final Luggage? luggage;
  @override
  @JsonKey(name: "hand_luggage")
  final HandLuggage? handLuggage;
  @override
  @JsonKey(name: "is_returnable")
  final bool isReturnable;
  @override
  @JsonKey(name: "is_exchangable")
  final bool isExchangable;

  @override
  String toString() {
    return 'TicketEntity(id: $id, badge: $badge, price: $price, providerName: $providerName, company: $company, departure: $departure, arrival: $arrival, hasTransfer: $hasTransfer, hasVisaTransfer: $hasVisaTransfer, luggage: $luggage, handLuggage: $handLuggage, isReturnable: $isReturnable, isExchangable: $isExchangable)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TicketImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.badge, badge) || other.badge == badge) &&
            (identical(other.price, price) || other.price == price) &&
            (identical(other.providerName, providerName) ||
                other.providerName == providerName) &&
            (identical(other.company, company) || other.company == company) &&
            (identical(other.departure, departure) ||
                other.departure == departure) &&
            (identical(other.arrival, arrival) || other.arrival == arrival) &&
            (identical(other.hasTransfer, hasTransfer) ||
                other.hasTransfer == hasTransfer) &&
            (identical(other.hasVisaTransfer, hasVisaTransfer) ||
                other.hasVisaTransfer == hasVisaTransfer) &&
            (identical(other.luggage, luggage) || other.luggage == luggage) &&
            (identical(other.handLuggage, handLuggage) ||
                other.handLuggage == handLuggage) &&
            (identical(other.isReturnable, isReturnable) ||
                other.isReturnable == isReturnable) &&
            (identical(other.isExchangable, isExchangable) ||
                other.isExchangable == isExchangable));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      badge,
      price,
      providerName,
      company,
      departure,
      arrival,
      hasTransfer,
      hasVisaTransfer,
      luggage,
      handLuggage,
      isReturnable,
      isExchangable);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TicketImplCopyWith<_$TicketImpl> get copyWith =>
      __$$TicketImplCopyWithImpl<_$TicketImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TicketImplToJson(
      this,
    );
  }
}

abstract class _Ticket implements TicketEntity {
  const factory _Ticket(
      {@JsonKey(name: "id") required final int id,
      @JsonKey(name: "badge") required final String? badge,
      @JsonKey(name: "price") required final PriceEntity? price,
      @JsonKey(name: "provider_name") required final String providerName,
      @JsonKey(name: "company") required final String company,
      @JsonKey(name: "departure") required final Arrival departure,
      @JsonKey(name: "arrival") required final Arrival arrival,
      @JsonKey(name: "has_transfer") required final bool hasTransfer,
      @JsonKey(name: "has_visa_transfer") required final bool hasVisaTransfer,
      @JsonKey(name: "luggage") required final Luggage? luggage,
      @JsonKey(name: "hand_luggage") required final HandLuggage? handLuggage,
      @JsonKey(name: "is_returnable") required final bool isReturnable,
      @JsonKey(name: "is_exchangable")
      required final bool isExchangable}) = _$TicketImpl;

  factory _Ticket.fromJson(Map<String, dynamic> json) = _$TicketImpl.fromJson;

  @override
  @JsonKey(name: "id")
  int get id;
  @override
  @JsonKey(name: "badge")
  String? get badge;
  @override
  @JsonKey(name: "price")
  PriceEntity? get price;
  @override
  @JsonKey(name: "provider_name")
  String get providerName;
  @override
  @JsonKey(name: "company")
  String get company;
  @override
  @JsonKey(name: "departure")
  Arrival get departure;
  @override
  @JsonKey(name: "arrival")
  Arrival get arrival;
  @override
  @JsonKey(name: "has_transfer")
  bool get hasTransfer;
  @override
  @JsonKey(name: "has_visa_transfer")
  bool get hasVisaTransfer;
  @override
  @JsonKey(name: "luggage")
  Luggage? get luggage;
  @override
  @JsonKey(name: "hand_luggage")
  HandLuggage? get handLuggage;
  @override
  @JsonKey(name: "is_returnable")
  bool get isReturnable;
  @override
  @JsonKey(name: "is_exchangable")
  bool get isExchangable;
  @override
  @JsonKey(ignore: true)
  _$$TicketImplCopyWith<_$TicketImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Arrival _$ArrivalFromJson(Map<String, dynamic> json) {
  return _Arrival.fromJson(json);
}

/// @nodoc
mixin _$Arrival {
  @JsonKey(name: "town")
  String get town => throw _privateConstructorUsedError;
  @JsonKey(name: "date")
  DateTime get date => throw _privateConstructorUsedError;
  @JsonKey(name: "airport")
  String get airport => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ArrivalCopyWith<Arrival> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ArrivalCopyWith<$Res> {
  factory $ArrivalCopyWith(Arrival value, $Res Function(Arrival) then) =
      _$ArrivalCopyWithImpl<$Res, Arrival>;
  @useResult
  $Res call(
      {@JsonKey(name: "town") String town,
      @JsonKey(name: "date") DateTime date,
      @JsonKey(name: "airport") String airport});
}

/// @nodoc
class _$ArrivalCopyWithImpl<$Res, $Val extends Arrival>
    implements $ArrivalCopyWith<$Res> {
  _$ArrivalCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? town = null,
    Object? date = null,
    Object? airport = null,
  }) {
    return _then(_value.copyWith(
      town: null == town
          ? _value.town
          : town // ignore: cast_nullable_to_non_nullable
              as String,
      date: null == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as DateTime,
      airport: null == airport
          ? _value.airport
          : airport // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ArrivalImplCopyWith<$Res> implements $ArrivalCopyWith<$Res> {
  factory _$$ArrivalImplCopyWith(
          _$ArrivalImpl value, $Res Function(_$ArrivalImpl) then) =
      __$$ArrivalImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "town") String town,
      @JsonKey(name: "date") DateTime date,
      @JsonKey(name: "airport") String airport});
}

/// @nodoc
class __$$ArrivalImplCopyWithImpl<$Res>
    extends _$ArrivalCopyWithImpl<$Res, _$ArrivalImpl>
    implements _$$ArrivalImplCopyWith<$Res> {
  __$$ArrivalImplCopyWithImpl(
      _$ArrivalImpl _value, $Res Function(_$ArrivalImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? town = null,
    Object? date = null,
    Object? airport = null,
  }) {
    return _then(_$ArrivalImpl(
      town: null == town
          ? _value.town
          : town // ignore: cast_nullable_to_non_nullable
              as String,
      date: null == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as DateTime,
      airport: null == airport
          ? _value.airport
          : airport // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ArrivalImpl implements _Arrival {
  const _$ArrivalImpl(
      {@JsonKey(name: "town") required this.town,
      @JsonKey(name: "date") required this.date,
      @JsonKey(name: "airport") required this.airport});

  factory _$ArrivalImpl.fromJson(Map<String, dynamic> json) =>
      _$$ArrivalImplFromJson(json);

  @override
  @JsonKey(name: "town")
  final String town;
  @override
  @JsonKey(name: "date")
  final DateTime date;
  @override
  @JsonKey(name: "airport")
  final String airport;

  @override
  String toString() {
    return 'Arrival(town: $town, date: $date, airport: $airport)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ArrivalImpl &&
            (identical(other.town, town) || other.town == town) &&
            (identical(other.date, date) || other.date == date) &&
            (identical(other.airport, airport) || other.airport == airport));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, town, date, airport);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ArrivalImplCopyWith<_$ArrivalImpl> get copyWith =>
      __$$ArrivalImplCopyWithImpl<_$ArrivalImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ArrivalImplToJson(
      this,
    );
  }
}

abstract class _Arrival implements Arrival {
  const factory _Arrival(
      {@JsonKey(name: "town") required final String town,
      @JsonKey(name: "date") required final DateTime date,
      @JsonKey(name: "airport") required final String airport}) = _$ArrivalImpl;

  factory _Arrival.fromJson(Map<String, dynamic> json) = _$ArrivalImpl.fromJson;

  @override
  @JsonKey(name: "town")
  String get town;
  @override
  @JsonKey(name: "date")
  DateTime get date;
  @override
  @JsonKey(name: "airport")
  String get airport;
  @override
  @JsonKey(ignore: true)
  _$$ArrivalImplCopyWith<_$ArrivalImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

HandLuggage _$HandLuggageFromJson(Map<String, dynamic> json) {
  return _HandLuggage.fromJson(json);
}

/// @nodoc
mixin _$HandLuggage {
  @JsonKey(name: "has_hand_luggage")
  bool? get hasHandLuggage => throw _privateConstructorUsedError;
  @JsonKey(name: "size")
  String? get size => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $HandLuggageCopyWith<HandLuggage> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HandLuggageCopyWith<$Res> {
  factory $HandLuggageCopyWith(
          HandLuggage value, $Res Function(HandLuggage) then) =
      _$HandLuggageCopyWithImpl<$Res, HandLuggage>;
  @useResult
  $Res call(
      {@JsonKey(name: "has_hand_luggage") bool? hasHandLuggage,
      @JsonKey(name: "size") String? size});
}

/// @nodoc
class _$HandLuggageCopyWithImpl<$Res, $Val extends HandLuggage>
    implements $HandLuggageCopyWith<$Res> {
  _$HandLuggageCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? hasHandLuggage = freezed,
    Object? size = freezed,
  }) {
    return _then(_value.copyWith(
      hasHandLuggage: freezed == hasHandLuggage
          ? _value.hasHandLuggage
          : hasHandLuggage // ignore: cast_nullable_to_non_nullable
              as bool?,
      size: freezed == size
          ? _value.size
          : size // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$HandLuggageImplCopyWith<$Res>
    implements $HandLuggageCopyWith<$Res> {
  factory _$$HandLuggageImplCopyWith(
          _$HandLuggageImpl value, $Res Function(_$HandLuggageImpl) then) =
      __$$HandLuggageImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "has_hand_luggage") bool? hasHandLuggage,
      @JsonKey(name: "size") String? size});
}

/// @nodoc
class __$$HandLuggageImplCopyWithImpl<$Res>
    extends _$HandLuggageCopyWithImpl<$Res, _$HandLuggageImpl>
    implements _$$HandLuggageImplCopyWith<$Res> {
  __$$HandLuggageImplCopyWithImpl(
      _$HandLuggageImpl _value, $Res Function(_$HandLuggageImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? hasHandLuggage = freezed,
    Object? size = freezed,
  }) {
    return _then(_$HandLuggageImpl(
      hasHandLuggage: freezed == hasHandLuggage
          ? _value.hasHandLuggage
          : hasHandLuggage // ignore: cast_nullable_to_non_nullable
              as bool?,
      size: freezed == size
          ? _value.size
          : size // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$HandLuggageImpl implements _HandLuggage {
  const _$HandLuggageImpl(
      {@JsonKey(name: "has_hand_luggage") required this.hasHandLuggage,
      @JsonKey(name: "size") required this.size});

  factory _$HandLuggageImpl.fromJson(Map<String, dynamic> json) =>
      _$$HandLuggageImplFromJson(json);

  @override
  @JsonKey(name: "has_hand_luggage")
  final bool? hasHandLuggage;
  @override
  @JsonKey(name: "size")
  final String? size;

  @override
  String toString() {
    return 'HandLuggage(hasHandLuggage: $hasHandLuggage, size: $size)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$HandLuggageImpl &&
            (identical(other.hasHandLuggage, hasHandLuggage) ||
                other.hasHandLuggage == hasHandLuggage) &&
            (identical(other.size, size) || other.size == size));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, hasHandLuggage, size);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$HandLuggageImplCopyWith<_$HandLuggageImpl> get copyWith =>
      __$$HandLuggageImplCopyWithImpl<_$HandLuggageImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$HandLuggageImplToJson(
      this,
    );
  }
}

abstract class _HandLuggage implements HandLuggage {
  const factory _HandLuggage(
      {@JsonKey(name: "has_hand_luggage") required final bool? hasHandLuggage,
      @JsonKey(name: "size") required final String? size}) = _$HandLuggageImpl;

  factory _HandLuggage.fromJson(Map<String, dynamic> json) =
      _$HandLuggageImpl.fromJson;

  @override
  @JsonKey(name: "has_hand_luggage")
  bool? get hasHandLuggage;
  @override
  @JsonKey(name: "size")
  String? get size;
  @override
  @JsonKey(ignore: true)
  _$$HandLuggageImplCopyWith<_$HandLuggageImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Luggage _$LuggageFromJson(Map<String, dynamic> json) {
  return _Luggage.fromJson(json);
}

/// @nodoc
mixin _$Luggage {
  @JsonKey(name: "has_luggage")
  bool get hasLuggage => throw _privateConstructorUsedError;
  @JsonKey(name: "price")
  PriceEntity? get price => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $LuggageCopyWith<Luggage> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LuggageCopyWith<$Res> {
  factory $LuggageCopyWith(Luggage value, $Res Function(Luggage) then) =
      _$LuggageCopyWithImpl<$Res, Luggage>;
  @useResult
  $Res call(
      {@JsonKey(name: "has_luggage") bool hasLuggage,
      @JsonKey(name: "price") PriceEntity? price});

  $PriceEntityCopyWith<$Res>? get price;
}

/// @nodoc
class _$LuggageCopyWithImpl<$Res, $Val extends Luggage>
    implements $LuggageCopyWith<$Res> {
  _$LuggageCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? hasLuggage = null,
    Object? price = freezed,
  }) {
    return _then(_value.copyWith(
      hasLuggage: null == hasLuggage
          ? _value.hasLuggage
          : hasLuggage // ignore: cast_nullable_to_non_nullable
              as bool,
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
abstract class _$$LuggageImplCopyWith<$Res> implements $LuggageCopyWith<$Res> {
  factory _$$LuggageImplCopyWith(
          _$LuggageImpl value, $Res Function(_$LuggageImpl) then) =
      __$$LuggageImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "has_luggage") bool hasLuggage,
      @JsonKey(name: "price") PriceEntity? price});

  @override
  $PriceEntityCopyWith<$Res>? get price;
}

/// @nodoc
class __$$LuggageImplCopyWithImpl<$Res>
    extends _$LuggageCopyWithImpl<$Res, _$LuggageImpl>
    implements _$$LuggageImplCopyWith<$Res> {
  __$$LuggageImplCopyWithImpl(
      _$LuggageImpl _value, $Res Function(_$LuggageImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? hasLuggage = null,
    Object? price = freezed,
  }) {
    return _then(_$LuggageImpl(
      hasLuggage: null == hasLuggage
          ? _value.hasLuggage
          : hasLuggage // ignore: cast_nullable_to_non_nullable
              as bool,
      price: freezed == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as PriceEntity?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$LuggageImpl implements _Luggage {
  const _$LuggageImpl(
      {@JsonKey(name: "has_luggage") required this.hasLuggage,
      @JsonKey(name: "price") required this.price});

  factory _$LuggageImpl.fromJson(Map<String, dynamic> json) =>
      _$$LuggageImplFromJson(json);

  @override
  @JsonKey(name: "has_luggage")
  final bool hasLuggage;
  @override
  @JsonKey(name: "price")
  final PriceEntity? price;

  @override
  String toString() {
    return 'Luggage(hasLuggage: $hasLuggage, price: $price)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LuggageImpl &&
            (identical(other.hasLuggage, hasLuggage) ||
                other.hasLuggage == hasLuggage) &&
            (identical(other.price, price) || other.price == price));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, hasLuggage, price);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LuggageImplCopyWith<_$LuggageImpl> get copyWith =>
      __$$LuggageImplCopyWithImpl<_$LuggageImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$LuggageImplToJson(
      this,
    );
  }
}

abstract class _Luggage implements Luggage {
  const factory _Luggage(
          {@JsonKey(name: "has_luggage") required final bool hasLuggage,
          @JsonKey(name: "price") required final PriceEntity? price}) =
      _$LuggageImpl;

  factory _Luggage.fromJson(Map<String, dynamic> json) = _$LuggageImpl.fromJson;

  @override
  @JsonKey(name: "has_luggage")
  bool get hasLuggage;
  @override
  @JsonKey(name: "price")
  PriceEntity? get price;
  @override
  @JsonKey(ignore: true)
  _$$LuggageImplCopyWith<_$LuggageImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
