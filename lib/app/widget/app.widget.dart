import 'package:day20/loginLogout/data/repo/newsfeed.repo.dart';
import 'package:day20/loginLogout/logic/cubit/authflow_cubit.dart';
import 'package:day20/loginLogout/logic/newsfeed/cubit/newsfeed_cubit.dart';
import 'package:day20/loginLogout/router/router.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class MyApp extends StatelessWidget {
  MyApp({
    Key? key,
    required this.appRouter,
  }) : super(key: key);

  final AppRouter appRouter;
  final NewsfeedRepo newsfeedRepo = NewsfeedRepo();

  @override
  Widget build(BuildContext context) {
    return MultiRepoWrapper(
      child: MultiBlocProvider(
        providers: [
          BlocProvider(
            create: (context) => AuthflowCubit(),
          ),
          BlocProvider(create: (context) => NewsfeedCubit(repo: newsfeedRepo)),
        ],
        child: MaterialApp.router(
          routerDelegate: appRouter.delegate(),
          routeInformationParser: appRouter.defaultRouteParser(),
          title: 'Flutter Demo',
          theme: ThemeData(
            primarySwatch: Colors.blue,
          ),
          debugShowCheckedModeBanner: false,
        ),
      ),
    );
  }
}
