import 'package:day20/loginLogout/logic/cubit/authflow_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SigupPage extends StatelessWidget {
  const SigupPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Signup'),
      ),
      body: Center(
        child: ElevatedButton(
          child: const Text('Log out'),
          onPressed: () {
            context.read<AuthflowCubit>().logout();
          },
        ),
      ),
    );
  }
}
