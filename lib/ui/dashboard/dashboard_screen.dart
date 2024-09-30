import 'package:exam_app_itasoft/cubit/dashboard/dashboard_cubit.dart';
import 'package:exam_app_itasoft/utils/storage_helper.dart';
import 'package:exam_app_itasoft/widgets/app_style.dart';
import 'package:exam_app_itasoft/widgets/space.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:exam_app_itasoft/cubit/auth/auth_cubit.dart';
import 'package:exam_app_itasoft/widgets/app_color.dart';

class DashboardScreen extends StatelessWidget {
  final String title;
  final Widget child;
  final bool isShowProfile;
  const DashboardScreen(
      {super.key,
      required this.title,
      required this.child,
      this.isShowProfile = true});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => DashboardCubit(),
      child: Builder(builder: (context) {
        return Scaffold(
          bottomNavigationBar: _bottomNavBar(context),
          appBar: AppBar(
            backgroundColor: AppColor.systemWhiteColor,
            shape: const Border(
                bottom: BorderSide(color: AppColor.greyf5, width: 4)),
            elevation: 1,
            title: Text(title),
            centerTitle: false,
            actions: [_logOutButton(context)],
          ),
          body: _mainBody(context, child),
        );
      }),
    );
  }

  Widget _mainBody(BuildContext context, Widget child) {
    return Column(
      children: [_buildProfileCard(), Expanded(child: child)],
    );
  }

  Widget _buildProfileCard() {
    return Visibility(
      visible: isShowProfile,
      child: Padding(
        padding: const EdgeInsets.only(left: 16, top: 16, right: 16),
        child: Card(
          color: AppColor.systemWhiteColor,
          elevation: 5,
          child: Padding(
            padding: const EdgeInsets.all(16),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const CircleAvatar(
                  maxRadius: 25,
                  backgroundColor: AppColor.greyc4,
                  child: Icon(
                    Icons.person,
                    color: AppColor.grey71,
                  ),
                ),
                Space.hMedium,
                Expanded(
                    child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      "Welcome, ${StorageHelper.getUsername}",
                      style: AppStyle.labelBoldStyle,
                    ),
                    Text(
                      "Admin Warehouse",
                      style: AppStyle.subLabelStyle,
                    )
                  ],
                ))
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _logOutButton(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 4, vertical: 2),
      child: InkWell(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 4, vertical: 2),
          child: Text(
            "Logout",
            style: AppStyle.logoutStyle,
          ),
        ),
        onTap: () => BlocProvider.of<AuthCubit>(context).logout(),
      ),
    );
  }

  Widget _bottomNavBar(BuildContext context) {
    return BottomNavigationBar(
      onTap: (index) => context.read<DashboardCubit>().onTap(context, index),
      currentIndex: context.watch<DashboardCubit>().selectedIndex(context),
      selectedLabelStyle: const TextStyle(
        color: AppColor.systemPurpleColor,
      ),
      items: const [
        BottomNavigationBarItem(
            icon: Icon(Icons.home),
            activeIcon: Icon(
              Icons.home,
              color: AppColor.systemPurpleColor,
            ),
            label: "Home"),
        BottomNavigationBarItem(
            icon: Icon(Icons.adjust),
            activeIcon: Icon(
              Icons.adjust,
              color: AppColor.systemPurpleColor,
            ),
            label: "Adjustment")
      ],
    );
  }
}

typedef LogOutCallback = void Function();
