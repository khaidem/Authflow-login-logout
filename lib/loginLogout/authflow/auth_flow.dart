import 'package:auto_route/auto_route.dart';
import 'package:day20/loginLogout/logic/cubit/authflow_cubit.dart';
import 'package:day20/loginLogout/router/app_router.gr.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AuthFlow extends StatelessWidget {
  const AuthFlow({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final state = context.watch<AuthflowCubit>().state;
    return AutoRouter.declarative(
      routes: (context) {
        switch (state.status) {
          case AuthStatus.islogin:
            return [const HomeRoute()];
          case AuthStatus.isLogout:
            return [const LoginRoute()];
        }
      },
    );
  }
}
