import 'package:exam_app_itasoft/cubit/auth/auth_cubit.dart';
import 'package:exam_app_itasoft/data_source/repo/auth/auth_repo.dart';
import 'package:exam_app_itasoft/data_source/repo/auth/auth_repo_impl.dart';
import 'package:exam_app_itasoft/data_source/repo/warehouse/warehouse_repo.dart';
import 'package:exam_app_itasoft/data_source/repo/warehouse/warehouse_repo_impl.dart';
import 'package:exam_app_itasoft/router/router_app.dart';
import 'package:exam_app_itasoft/widgets/app_color.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return _buildRepo(context);
  }

  Widget _buildRepo(BuildContext context) {
    return MultiRepositoryProvider(providers: [
      RepositoryProvider<AuthRepo>(
        create: (_) => AuthRepoImpl(),
      ),
      RepositoryProvider<WarehouseRepo>(
        create: (_) => WarehouseRepoImpl(),
      ),
    ], child: Builder(builder: (context) => _buildMaterial(context)));
  }

  Widget _buildMaterial(BuildContext context) {
    return BlocProvider(
      create: (_) => AuthCubit(RepositoryProvider.of<AuthRepo>(context),
          RepositoryProvider.of<WarehouseRepo>(context)),
      child: Builder(builder: (context) {
        return MaterialApp.router(
          theme: ThemeData(
            appBarTheme: const AppBarTheme(
              backgroundColor: AppColor.systemWhiteColor,
            ),
            scaffoldBackgroundColor: AppColor.systemWhiteColor,
            cardTheme:
                const CardTheme(color: AppColor.systemWhiteColor, elevation: 5),
          ),
          themeMode: ThemeMode.light,
          routerConfig: RouterApp.router(context),
          builder: EasyLoading.init(),
        );
      }),
    );
  }
}
