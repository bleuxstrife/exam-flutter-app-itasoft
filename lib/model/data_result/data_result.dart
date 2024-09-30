
import 'package:freezed_annotation/freezed_annotation.dart';

part 'data_result.freezed.dart';

@freezed
class DataResult<T> with _$DataResult<T> {
  
  const factory DataResult.success({required T data}) = Success<T>;

  const factory DataResult.failure(
      {required String? errorMsg}) = Failure<T>;

}
