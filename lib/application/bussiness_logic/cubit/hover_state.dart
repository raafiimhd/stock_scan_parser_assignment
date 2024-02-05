part of 'hover_cubit.dart';

@freezed
class HoverState with _$HoverState {
  const factory HoverState({
    required bool isHover,
  }) = _Initial;

  factory HoverState.initial() => const HoverState(isHover: false);
}
