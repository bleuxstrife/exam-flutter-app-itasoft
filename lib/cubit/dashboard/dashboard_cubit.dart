import 'package:exam_app_itasoft/cubit/base/base_cubit.dart';
import 'package:exam_app_itasoft/state/general_state/general_state.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class DashboardCubit extends BaseCubit {
  DashboardCubit() : super(const Idle());

  int selectedIndex(BuildContext context) {
    final String location = GoRouterState.of(context).uri.path;
    if (location.startsWith('/home')) {
      return 0;
    }
    if (location.startsWith('/adjustment')) {
      return 1;
    }
    return 0;
  }

  void onTap(BuildContext context, int index) {
    switch (index) {
      case 0:
        GoRouter.of(context).go('/home');
      case 1:
        GoRouter.of(context).go('/adjustment');
    }
  }
}
