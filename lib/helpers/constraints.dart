import 'package:flutter/material.dart';

import '../router/navigator.dart';

class MediaQueryHelper {
  static double width = MediaQuery.of(CustomNavigator.navigatorState.currentContext!).size.width;
  static double height = MediaQuery.of(CustomNavigator.navigatorState.currentContext!).size.height;
}