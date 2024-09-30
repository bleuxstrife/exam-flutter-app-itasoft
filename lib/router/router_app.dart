import 'package:exam_app_itasoft/constant/constant.dart';
import 'package:exam_app_itasoft/cubit/auth/auth_cubit.dart';
import 'package:exam_app_itasoft/model/stock_item/stock_item_detail.dart';
import 'package:exam_app_itasoft/ui/adjustment/adjustment_view.dart';
import 'package:exam_app_itasoft/ui/dashboard/dashboard_screen.dart';
import 'package:exam_app_itasoft/ui/home/home_view.dart';
import 'package:exam_app_itasoft/ui/item_detail/item_detail_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

import '../ui/login/login_screen.dart';

class RouterApp {
  static final _rootNavigatorKey = GlobalKey<NavigatorState>();
  static final _shellNavigatorKey = GlobalKey<NavigatorState>();
  static GoRouter router(BuildContext context) => GoRouter(
      navigatorKey: _rootNavigatorKey,
      initialLocation: "/home",
      routes: [
        ShellRoute(
            navigatorKey: _shellNavigatorKey,
            builder: (context, state, child) => DashboardScreen(
                title: _getTitle(state),
                isShowProfile: _isShowProfile(state),
                child: child),
            routes: [
              GoRoute(
                  parentNavigatorKey: _shellNavigatorKey,
                  path: '/home',
                  pageBuilder: (context, state) =>
                      const NoTransitionPage(child: HomeView()),
                  routes: [
                    GoRoute(
                      parentNavigatorKey: _shellNavigatorKey,
                      path: 'item-detail',
                      pageBuilder: (context, state) => NoTransitionPage(
                          child: ItemDetailView(
                              item: state.extra as StockItemDetail)),
                    ),
                    GoRoute(
                        parentNavigatorKey: _shellNavigatorKey,
                        path: 'adjustment-stock',
                        pageBuilder: (context, state) => NoTransitionPage(
                              child: ItemDetailView(
                                item: state.extra as StockItemDetail,
                                needToAdjust: true,
                              ),
                            ))
                  ]),
              GoRoute(
                parentNavigatorKey: _shellNavigatorKey,
                path: '/adjustment',
                pageBuilder: (context, state) =>
                    const NoTransitionPage(child: AdjustmentView()),
              )
            ]),
        GoRoute(
            parentNavigatorKey: _rootNavigatorKey,
            path: '/login',
            pageBuilder: (context, state) =>
                NoTransitionPage(child: LoginScreen())),
      ],
      redirect: (context, state) => _redirect(context, state),
      refreshListenable: context.watch<AuthCubit>());

  static _redirect(BuildContext context, GoRouterState state) {
    LoggedState loggedState = BlocProvider.of<AuthCubit>(context).loggedInState;
    String location = state.matchedLocation;
    if (loggedState == LoggedState.loggedOut && location != "/login") {
      return "/login";
    } else if (loggedState == LoggedState.loggedIn && location == "/login") {
      return "/home";
    }
    return location;
  }

  static String _getTitle(GoRouterState state) => switch (state.fullPath) {
        "/home" => "Dashborad",
        "/home/item-detail" => "Detail",
        "/home/adjustment-stock" => "Adjustment Stock",
        "/adjustment" => "Adjustment",
        _ => "Dashborad"
      };
  static bool _isShowProfile(GoRouterState state) =>
      switch (state.fullPath) { "/home/adjustment-stock" => false, _ => true };
}
