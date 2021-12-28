import 'package:day20/loginLogout/logic/cubit/authflow_cubit.dart';
import 'package:day20/loginLogout/logic/newsfeed/cubit/newsfeed_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    final state = context.watch<NewsfeedCubit>().state;
    final status = state.status;
    [
      IconButton(
        onPressed: () {
          context.read<AuthflowCubit>().logout();
        },
        icon: const Icon(Icons.exit_to_app),
      ),
    ];
    switch (status) {
      case Status.initial:
        return const Center(
          child: CircularProgressIndicator(),
        );
      case Status.loading:
        return const Center(
          child: CircularProgressIndicator(),
        );
      case Status.loaded:
        final news = state.newsfeedModle?.data ?? [];

        return ListView.builder(
          itemCount: news.length,
          itemBuilder: (context, index) {
            return ListTile(
              title: Text(news[index].title),
            );
          },
        );

      case Status.error:
        return const Center(
          child: Text('Error'),
        );
    }
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home Page'),
        actions: [
          IconButton(
            onPressed: () {
              context.read<AuthflowCubit>().logout();
            },
            icon: const Icon(Icons.exit_to_app),
          ),
        ],
      ),
    );
  }
}
