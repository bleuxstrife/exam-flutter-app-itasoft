import 'package:exam_app_itasoft/state/general_state/general_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';

class BaseCubit extends Cubit<GeneralState> {
  BaseCubit(super.initialState);
  bool canPop = true;

  showELoading() {
    EasyLoading.show();
    canPop = false;
  }

  hideELoading() {
    EasyLoading.dismiss();
    canPop = true;
  }

  hideELoadingWithMsg({bool isSuccess = false, String message = ""}) {
    canPop = true;
    EasyLoading.dismiss();
    if (isSuccess) {
      EasyLoading.showSuccess(message);
      return;
    }
    EasyLoading.showError(message);
  }

  refresh(){
    emit(const Loading());
    emit(const Loaded());
  }
}
