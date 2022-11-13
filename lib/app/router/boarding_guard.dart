import 'package:auto_route/auto_route.dart';
import 'package:shared_preferences/shared_preferences.dart';

class BoardingGuard extends AutoRouteGuard {
  @override
  Future<void> onNavigation(
    NavigationResolver resolver,
    StackRouter router,
  ) async {
    final pref = await SharedPreferences.getInstance();
    final isBoardingFinished = pref.getBool('boardingFinished') ?? false;

    if (isBoardingFinished) {
      await router.pushNamed('/login-view');
    } else {
      resolver.next();
    }
  }
}
