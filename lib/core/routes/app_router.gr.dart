// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i6;
import 'package:initialproject/features/about-us/about_us_page.dart' as _i1;
import 'package:initialproject/features/home/pages/home_page.dart' as _i2;
import 'package:initialproject/features/privacy_policy/privacy_policy_page.dart'
    as _i3;
import 'package:initialproject/features/services/services_page.dart' as _i4;
import 'package:initialproject/features/terms-n-condition/terms_n_condition_page.dart'
    as _i5;

abstract class $AppRouter extends _i6.RootStackRouter {
  $AppRouter({super.navigatorKey});

  @override
  final Map<String, _i6.PageFactory> pagesMap = {
    AboutUsRoute.name: (routeData) {
      return _i6.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i1.AboutUsPage(),
      );
    },
    HomeRoute.name: (routeData) {
      return _i6.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i2.HomePage(),
      );
    },
    PrivacyPolicyRoute.name: (routeData) {
      return _i6.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i3.PrivacyPolicyPage(),
      );
    },
    ServicesRoute.name: (routeData) {
      return _i6.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i4.ServicesPage(),
      );
    },
    TermsAndConditionRoute.name: (routeData) {
      return _i6.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i5.TermsAndConditionPage(),
      );
    },
  };
}

/// generated route for
/// [_i1.AboutUsPage]
class AboutUsRoute extends _i6.PageRouteInfo<void> {
  const AboutUsRoute({List<_i6.PageRouteInfo>? children})
      : super(
          AboutUsRoute.name,
          initialChildren: children,
        );

  static const String name = 'AboutUsRoute';

  static const _i6.PageInfo<void> page = _i6.PageInfo<void>(name);
}

/// generated route for
/// [_i2.HomePage]
class HomeRoute extends _i6.PageRouteInfo<void> {
  const HomeRoute({List<_i6.PageRouteInfo>? children})
      : super(
          HomeRoute.name,
          initialChildren: children,
        );

  static const String name = 'HomeRoute';

  static const _i6.PageInfo<void> page = _i6.PageInfo<void>(name);
}

/// generated route for
/// [_i3.PrivacyPolicyPage]
class PrivacyPolicyRoute extends _i6.PageRouteInfo<void> {
  const PrivacyPolicyRoute({List<_i6.PageRouteInfo>? children})
      : super(
          PrivacyPolicyRoute.name,
          initialChildren: children,
        );

  static const String name = 'PrivacyPolicyRoute';

  static const _i6.PageInfo<void> page = _i6.PageInfo<void>(name);
}

/// generated route for
/// [_i4.ServicesPage]
class ServicesRoute extends _i6.PageRouteInfo<void> {
  const ServicesRoute({List<_i6.PageRouteInfo>? children})
      : super(
          ServicesRoute.name,
          initialChildren: children,
        );

  static const String name = 'ServicesRoute';

  static const _i6.PageInfo<void> page = _i6.PageInfo<void>(name);
}

/// generated route for
/// [_i5.TermsAndConditionPage]
class TermsAndConditionRoute extends _i6.PageRouteInfo<void> {
  const TermsAndConditionRoute({List<_i6.PageRouteInfo>? children})
      : super(
          TermsAndConditionRoute.name,
          initialChildren: children,
        );

  static const String name = 'TermsAndConditionRoute';

  static const _i6.PageInfo<void> page = _i6.PageInfo<void>(name);
}
