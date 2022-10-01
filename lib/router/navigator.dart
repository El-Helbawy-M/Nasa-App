import 'package:flutter/material.dart';
import 'package:nasa_wind_app/modules/searching_maping/pages/seaching_maping_page.dart';
import 'package:nasa_wind_app/modules/solar_details/pages/solar_details.dart';
import 'package:nasa_wind_app/modules/turbine_details/pages/turbineDetails.dart';
import 'package:nasa_wind_app/router/routes.dart';

import '../modules/land_turbines/pages/land_turbines_page.dart';
import '../modules/main/pages/main_page.dart';

const begin = Offset(0.0, 1.0);
const end = Offset.zero;
const curve = Curves.easeInOut;
var tween = Tween(begin: begin, end: end).chain(
  CurveTween(curve: curve),
);

class CustomNavigator {
  static final GlobalKey<NavigatorState> navigatorState =
      GlobalKey<NavigatorState>();
  static final RouteObserver<PageRoute> routeObserver =
      RouteObserver<PageRoute>();
  static final GlobalKey<ScaffoldMessengerState> scaffoldState =
      GlobalKey<ScaffoldMessengerState>();

  static Route<dynamic> onCreateRoute(RouteSettings settings) {
    switch (settings.name) {
      case Routes.main:
        return PageRouteBuilder(
          pageBuilder: (context, animation, secondaryAnimation) =>
              const MainPage(),
          transitionsBuilder: (context, animation, secondaryAnimation, child) {
            return SlideTransition(
              position: animation.drive(tween),
              child: child,
            );
          },
        );
      case Routes.landTurbine:
        return PageRouteBuilder(
          pageBuilder: (context, animation, secondaryAnimation) =>
              const LandTurbinesPage(),
          transitionsBuilder: (context, animation, secondaryAnimation, child) {
            return SlideTransition(
              position: animation.drive(tween),
              child: child,
            );
          },
        );
        case Routes.turbineDetails:
        return PageRouteBuilder(
          pageBuilder: (context, animation, secondaryAnimation) =>
              const TurbineDetailsPage(),
          transitionsBuilder: (context, animation, secondaryAnimation, child) {
            return SlideTransition(
              position: animation.drive(tween),
              child: child,
            );
          },
        );
        case Routes.searchMap:
        return PageRouteBuilder(
          pageBuilder: (context, animation, secondaryAnimation) =>
              const SearchingMapPage(),
          transitionsBuilder: (context, animation, secondaryAnimation, child) {
            return SlideTransition(
              position: animation.drive(tween),
              child: child,
            );
          },
        );
        case Routes.solarDetails:
        return PageRouteBuilder(
          pageBuilder: (context, animation, secondaryAnimation) =>
               const SolarDetailsPage(),
          transitionsBuilder: (context, animation, secondaryAnimation, child) {
            return SlideTransition(
              position: animation.drive(tween),
              child: child,
            );
          },
        );
    //
    //     case Routes.login:
    //     return PageRouteBuilder(
    //       pageBuilder: (context, animation, secondaryAnimation) =>
    //           const LoginScreen(),
    //       transitionsBuilder: (context, animation, secondaryAnimation, child) {
    //         return SlideTransition(
    //           position: animation.drive(tween),
    //           child: child,
    //         );
    //       },
    //     );
    //     case Routes.register:
    //     return PageRouteBuilder(
    //       pageBuilder: (context, animation, secondaryAnimation) =>
    //           const RegisterScreen(),
    //       transitionsBuilder: (context, animation, secondaryAnimation, child) {
    //         return SlideTransition(
    //           position: animation.drive(tween),
    //           child: child,
    //         );
    //       },
    //     );
    //     case Routes.splash:
    //     return PageRouteBuilder(
    //       pageBuilder: (context, animation, secondaryAnimation) =>
    //           const SplashScreen(),
    //       transitionsBuilder: (context, animation, secondaryAnimation, child) {
    //         return SlideTransition(
    //           position: animation.drive(tween),
    //           child: child,
    //         );
    //       },
    //     );
    //     case Routes.profile:
    //     return PageRouteBuilder(
    //       pageBuilder: (context, animation, secondaryAnimation) =>
    //           const CustomerProfile(),
    //       transitionsBuilder: (context, animation, secondaryAnimation, child) {
    //         return SlideTransition(
    //           position: animation.drive(tween),
    //           child: child,
    //         );
    //       },
    //     );
        
    }
    return MaterialPageRoute(builder: (_) => Container());
  }

  static pop({dynamic result}) {
    if (navigatorState.currentState!.canPop()) {
      navigatorState.currentState!.pop(result);
    }
  }

  static push(String routeName,
      {arguments, bool replace = false, bool clean = false}) {
    if (clean) {
      return navigatorState.currentState!.pushNamedAndRemoveUntil(
          routeName, (_) => false,
          arguments: arguments);
    } else if (replace) {
      return navigatorState.currentState!
          .pushReplacementNamed(routeName, arguments: arguments);
    } else {
      return navigatorState.currentState!
          .pushNamed(routeName, arguments: arguments);
    }
  }
}
