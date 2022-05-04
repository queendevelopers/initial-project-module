import 'package:auto_route/annotations.dart';
import 'package:initialproject/features/auth/login/presentation/pages/login_page.dart';

import 'auth_guard.dart';

@AdaptiveAutoRouter(preferRelativeImports: true, routes: [
  AdaptiveRoute(page: LoginPage, guards: [AuthGuard], initial: true),
])
class $AppRouter {}
