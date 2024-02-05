// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'stock_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$StockEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getAllStockEvent,
    required TResult Function() toggleClick,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getAllStockEvent,
    TResult? Function()? toggleClick,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getAllStockEvent,
    TResult Function()? toggleClick,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetAllStockEvent value) getAllStockEvent,
    required TResult Function(ToggleClickEvent value) toggleClick,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetAllStockEvent value)? getAllStockEvent,
    TResult? Function(ToggleClickEvent value)? toggleClick,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetAllStockEvent value)? getAllStockEvent,
    TResult Function(ToggleClickEvent value)? toggleClick,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StockEventCopyWith<$Res> {
  factory $StockEventCopyWith(
          StockEvent value, $Res Function(StockEvent) then) =
      _$StockEventCopyWithImpl<$Res, StockEvent>;
}

/// @nodoc
class _$StockEventCopyWithImpl<$Res, $Val extends StockEvent>
    implements $StockEventCopyWith<$Res> {
  _$StockEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$GetAllStockEventImplCopyWith<$Res> {
  factory _$$GetAllStockEventImplCopyWith(_$GetAllStockEventImpl value,
          $Res Function(_$GetAllStockEventImpl) then) =
      __$$GetAllStockEventImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$GetAllStockEventImplCopyWithImpl<$Res>
    extends _$StockEventCopyWithImpl<$Res, _$GetAllStockEventImpl>
    implements _$$GetAllStockEventImplCopyWith<$Res> {
  __$$GetAllStockEventImplCopyWithImpl(_$GetAllStockEventImpl _value,
      $Res Function(_$GetAllStockEventImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$GetAllStockEventImpl implements GetAllStockEvent {
  const _$GetAllStockEventImpl();

  @override
  String toString() {
    return 'StockEvent.getAllStockEvent()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$GetAllStockEventImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getAllStockEvent,
    required TResult Function() toggleClick,
  }) {
    return getAllStockEvent();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getAllStockEvent,
    TResult? Function()? toggleClick,
  }) {
    return getAllStockEvent?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getAllStockEvent,
    TResult Function()? toggleClick,
    required TResult orElse(),
  }) {
    if (getAllStockEvent != null) {
      return getAllStockEvent();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetAllStockEvent value) getAllStockEvent,
    required TResult Function(ToggleClickEvent value) toggleClick,
  }) {
    return getAllStockEvent(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetAllStockEvent value)? getAllStockEvent,
    TResult? Function(ToggleClickEvent value)? toggleClick,
  }) {
    return getAllStockEvent?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetAllStockEvent value)? getAllStockEvent,
    TResult Function(ToggleClickEvent value)? toggleClick,
    required TResult orElse(),
  }) {
    if (getAllStockEvent != null) {
      return getAllStockEvent(this);
    }
    return orElse();
  }
}

abstract class GetAllStockEvent implements StockEvent {
  const factory GetAllStockEvent() = _$GetAllStockEventImpl;
}

/// @nodoc
abstract class _$$ToggleClickEventImplCopyWith<$Res> {
  factory _$$ToggleClickEventImplCopyWith(_$ToggleClickEventImpl value,
          $Res Function(_$ToggleClickEventImpl) then) =
      __$$ToggleClickEventImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ToggleClickEventImplCopyWithImpl<$Res>
    extends _$StockEventCopyWithImpl<$Res, _$ToggleClickEventImpl>
    implements _$$ToggleClickEventImplCopyWith<$Res> {
  __$$ToggleClickEventImplCopyWithImpl(_$ToggleClickEventImpl _value,
      $Res Function(_$ToggleClickEventImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$ToggleClickEventImpl implements ToggleClickEvent {
  const _$ToggleClickEventImpl();

  @override
  String toString() {
    return 'StockEvent.toggleClick()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$ToggleClickEventImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getAllStockEvent,
    required TResult Function() toggleClick,
  }) {
    return toggleClick();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getAllStockEvent,
    TResult? Function()? toggleClick,
  }) {
    return toggleClick?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getAllStockEvent,
    TResult Function()? toggleClick,
    required TResult orElse(),
  }) {
    if (toggleClick != null) {
      return toggleClick();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetAllStockEvent value) getAllStockEvent,
    required TResult Function(ToggleClickEvent value) toggleClick,
  }) {
    return toggleClick(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetAllStockEvent value)? getAllStockEvent,
    TResult? Function(ToggleClickEvent value)? toggleClick,
  }) {
    return toggleClick?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetAllStockEvent value)? getAllStockEvent,
    TResult Function(ToggleClickEvent value)? toggleClick,
    required TResult orElse(),
  }) {
    if (toggleClick != null) {
      return toggleClick(this);
    }
    return orElse();
  }
}

abstract class ToggleClickEvent implements StockEvent {
  const factory ToggleClickEvent() = _$ToggleClickEventImpl;
}

/// @nodoc
mixin _$StockState {
  List<TestModel> get stock => throw _privateConstructorUsedError;
  bool get isClick => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $StockStateCopyWith<StockState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StockStateCopyWith<$Res> {
  factory $StockStateCopyWith(
          StockState value, $Res Function(StockState) then) =
      _$StockStateCopyWithImpl<$Res, StockState>;
  @useResult
  $Res call({List<TestModel> stock, bool isClick});
}

/// @nodoc
class _$StockStateCopyWithImpl<$Res, $Val extends StockState>
    implements $StockStateCopyWith<$Res> {
  _$StockStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? stock = null,
    Object? isClick = null,
  }) {
    return _then(_value.copyWith(
      stock: null == stock
          ? _value.stock
          : stock // ignore: cast_nullable_to_non_nullable
              as List<TestModel>,
      isClick: null == isClick
          ? _value.isClick
          : isClick // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$InitialImplCopyWith<$Res>
    implements $StockStateCopyWith<$Res> {
  factory _$$InitialImplCopyWith(
          _$InitialImpl value, $Res Function(_$InitialImpl) then) =
      __$$InitialImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<TestModel> stock, bool isClick});
}

/// @nodoc
class __$$InitialImplCopyWithImpl<$Res>
    extends _$StockStateCopyWithImpl<$Res, _$InitialImpl>
    implements _$$InitialImplCopyWith<$Res> {
  __$$InitialImplCopyWithImpl(
      _$InitialImpl _value, $Res Function(_$InitialImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? stock = null,
    Object? isClick = null,
  }) {
    return _then(_$InitialImpl(
      stock: null == stock
          ? _value._stock
          : stock // ignore: cast_nullable_to_non_nullable
              as List<TestModel>,
      isClick: null == isClick
          ? _value.isClick
          : isClick // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$InitialImpl implements _Initial {
  const _$InitialImpl(
      {required final List<TestModel> stock, required this.isClick})
      : _stock = stock;

  final List<TestModel> _stock;
  @override
  List<TestModel> get stock {
    if (_stock is EqualUnmodifiableListView) return _stock;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_stock);
  }

  @override
  final bool isClick;

  @override
  String toString() {
    return 'StockState(stock: $stock, isClick: $isClick)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InitialImpl &&
            const DeepCollectionEquality().equals(other._stock, _stock) &&
            (identical(other.isClick, isClick) || other.isClick == isClick));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_stock), isClick);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$InitialImplCopyWith<_$InitialImpl> get copyWith =>
      __$$InitialImplCopyWithImpl<_$InitialImpl>(this, _$identity);
}

abstract class _Initial implements StockState {
  const factory _Initial(
      {required final List<TestModel> stock,
      required final bool isClick}) = _$InitialImpl;

  @override
  List<TestModel> get stock;
  @override
  bool get isClick;
  @override
  @JsonKey(ignore: true)
  _$$InitialImplCopyWith<_$InitialImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
