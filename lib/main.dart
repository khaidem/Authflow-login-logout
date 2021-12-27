import 'package:day20/loginLogout/router/app_router.gr.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'app/app.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  final _appRouter = AppRouter();
  runApp(
    MyApp(
      appRouter: _appRouter,
    ),
  );
}
