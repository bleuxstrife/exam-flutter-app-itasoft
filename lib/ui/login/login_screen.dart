import 'package:exam_app_itasoft/cubit/auth/auth_cubit.dart';
import 'package:exam_app_itasoft/widgets/base_button.dart';
import 'package:exam_app_itasoft/widgets/base_text_field.dart';
import 'package:exam_app_itasoft/widgets/space.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class LoginScreen extends StatelessWidget {
  LoginScreen({super.key});
  final _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return PopScope(
        canPop: context.watch<AuthCubit>().canPop,
        child: Scaffold(
          body: _buildContent(context),
        ));
  }

  _buildContent(BuildContext context) {
    final size = MediaQuery.of(context).size.height / 7;
    final paddWidth = MediaQuery.of(context).size.width / 7;
    final cubitWatch = context.watch<AuthCubit>();
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 16, horizontal: paddWidth),
      child: Form(
        key: _formKey,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          mainAxisSize: MainAxisSize.max,
          children: [
            Icon(
              Icons.apple,
              size: size,
            ),
            Space.vMedium,
            BaseTextField.loginTextField(controller: cubitWatch.usernameCtrl),
            Space.vMedium,
            BaseTextField.passwordTextField(controller: cubitWatch.passCtrl),
            Space.vMedium,
            BaseButton.standardButton(
                text: "Login",
                onPressed: () {
                  if (_formKey.currentState!.validate()) {
                    context.read<AuthCubit>().login();
                  }
                })
          ],
        ),
      ),
    );
  }
}
