
import 'package:freezed_annotation/freezed_annotation.dart';

part 'general_state.freezed.dart';
@freezed
class GeneralState with _$GeneralState {
  const factory GeneralState.idle() = Idle;

  const factory GeneralState.loaded() = Loaded;

  const factory GeneralState.loading() = Loading;

  const factory GeneralState.error(
      {required String errorMsg}) = Error;
}
