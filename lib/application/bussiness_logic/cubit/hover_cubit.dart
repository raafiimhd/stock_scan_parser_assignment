import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'hover_cubit.freezed.dart';
part 'hover_state.dart';
@injectable
class HoverCubit extends Cubit<HoverState> {
  HoverCubit() : super(HoverState.initial());

  void handleHoverEnter() {
    emit( const HoverState(isHover: true));
  }

  void handleHoverExit() {
    emit(const HoverState(isHover: false));
  }
}
