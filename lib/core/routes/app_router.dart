import 'auth_guard.dart';
import 'package:auto_route/auto_route.dart';
import 'package:super_module/super_module.dart';
import 'package:initialproject/core/routes/app_router.gr.dart';
import 'package:initialproject/features/terms-n-condition/terms_n_condition_page.dart';


@AutoRouterConfig()
class AppRouter extends $AppRouter {
  final ISessionManager sessionManager;

  AppRouter(this.sessionManager);

  @override
  List<AutoRoute> get routes => [
        AutoRoute(
            page: HomeRoute.page,
            initial: true),
            AutoRoute(page: ServicesRoute.page),
        AutoRoute(page: AboutUsRoute.page),
        AutoRoute(page: TermsAndConditionRoute.page),
        AutoRoute(page: PrivacyPolicyRoute.page),
      ];
}
