import 'package:auto_route/auto_route.dart';
import 'package:flutter/cupertino.dart';
import 'package:injectable/injectable.dart';
import 'package:super_module/super_module.dart';

@injectable
class AuthGuard extends AutoRouteGuard {
  final ISessionManager _sessionManager;

  AuthGuard(this._sessionManager);

  @override
  void onNavigation(NavigationResolver resolver, StackRouter router) async {
    debugPrint('${await _sessionManager.isAuthenticated}');
    // if (await _sessionManager.getToken() != null) {
    resolver.next(true);
    // return;
    // }
  }
}
