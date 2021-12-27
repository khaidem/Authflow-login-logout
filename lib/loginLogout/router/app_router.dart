import 'package:auto_route/auto_route.dart';
import 'package:day20/loginLogout/authflow/auth_flow.dart';
import '../pages/pages.dart';

@MaterialAutoRouter(
  replaceInRouteName: 'Page,Route',
  routes: <AutoRoute>[
    AutoRoute(
      path: '/login',
      page: AuthFlow,
      initial: true,
      children: [
        AutoRoute(page: LoginPage),
        AutoRoute(page: SigupPage),
      ],
    ),
  ],
)
class $AppRouter {}
