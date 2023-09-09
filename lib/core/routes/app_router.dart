import 'auth_guard.dart';
import 'package:auto_route/auto_route.dart';
import 'package:super_module/super_module.dart';
import 'package:initialproject/core/routes/app_router.gr.dart';

// @AdaptiveAutoRouter(preferRelativeImports: true, routes: [
// ])
// class $AppRouter {}

@AutoRouterConfig()
class AppRouter extends $AppRouter {
  final ISessionManager sessionManager;

  AppRouter(this.sessionManager);

  @override
  List<AutoRoute> get routes => [
        AutoRoute(
            page: LoginRoute.page,
            guards: [AuthGuard(sessionManager)],
            initial: true),
      ];
}
