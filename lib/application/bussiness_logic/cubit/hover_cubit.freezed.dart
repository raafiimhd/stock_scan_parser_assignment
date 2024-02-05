// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'hover_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$HoverState {
  bool get isHover => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $HoverStateCopyWith<HoverState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HoverStateCopyWith<$Res> {
  factory $HoverStateCopyWith(
          HoverState value, $Res Function(HoverState) then) =
      _$HoverStateCopyWithImpl<$Res, HoverState>;
  @useResult
  $Res call({bool isHover});
}

/// @nodoc
class _$HoverStateCopyWithImpl<$Res, $Val extends HoverState>
    implements $HoverStateCopyWith<$Res> {
  _$HoverStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isHover = null,
  }) {
    return _then(_value.copyWith(
      isHover: null == isHover
          ? _value.isHover
          : isHover // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$InitialImplCopyWith<$Res>
    implements $HoverStateCopyWith<$Res> {
  factory _$$InitialImplCopyWith(
          _$InitialImpl value, $Res Function(_$InitialImpl) then) =
      __$$InitialImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool isHover});
}

/// @nodoc
class __$$InitialImplCopyWithImpl<$Res>
    extends _$HoverStateCopyWithImpl<$Res, _$InitialImpl>
    implements _$$InitialImplCopyWith<$Res> {
  __$$InitialImplCopyWithImpl(
      _$InitialImpl _value, $Res Function(_$InitialImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isHover = null,
  }) {
    return _then(_$InitialImpl(
      isHover: null == isHover
          ? _value.isHover
          : isHover // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$InitialImpl implements _Initial {
  const _$InitialImpl({required this.isHover});

  @override
  final bool isHover;

  @override
  String toString() {
    return 'HoverState(isHover: $isHover)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InitialImpl &&
            (identical(other.isHover, isHover) || other.isHover == isHover));
  }

  @override
  int get hashCode => Object.hash(runtimeType, isHover);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$InitialImplCopyWith<_$InitialImpl> get copyWith =>
      __$$InitialImplCopyWithImpl<_$InitialImpl>(this, _$identity);
}

abstract class _Initial implements HoverState {
  const factory _Initial({required final bool isHover}) = _$InitialImpl;

  @override
  bool get isHover;
  @override
  @JsonKey(ignore: true)
  _$$InitialImplCopyWith<_$InitialImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
