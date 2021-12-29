import 'package:day20/loginLogout/data/model/newsfeed.model.dart';
import 'package:day20/loginLogout/data/repo/newsfeed.repo.dart';
import 'package:day20/loginLogout/logic/cubit/authflow_cubit.dart';

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
      body: FutureBuilder<NewsfeedModle>(
        future: NewsfeedRepo().getData(),
        builder: (context, snapshot) {
          final d = snapshot.data;
          if (snapshot.hasData) {
            return ListView.builder(
              itemCount: d!.data.length,
              itemBuilder: (context, index) {
                return ListTile(
                  title: Text(d.data[index].author),
                );
              },
            );
          } else {
            return const Center(child: CircularProgressIndicator());
          }
        },
      ),
    );
  }
}
