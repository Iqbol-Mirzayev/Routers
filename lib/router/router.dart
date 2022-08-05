import 'package:flutter/material.dart';
import 'package:work_with_api/view/home_page.dart';

import '../view/info_page.dart';
import '../view/settings.dart';

class RouteGenerator {
  static final RouteGenerator _generator = RouteGenerator._init();
  static RouteGenerator get router => _generator;
  RouteGenerator._init();

  Route? ongenerateRoute(RouteSettings settings) {
    final args = settings.arguments;
    switch (settings.name) {
      case '/':
        return MaterialPageRoute(builder: (conte) => HomePage());
      case '/info':
        return MaterialPageRoute(builder: (conte) => InfoPage());
      case '/settings':
        return MaterialPageRoute(builder: (conte) => Settings());
    }
    return null;
  }

  navigate(Widget widget) {
    return MaterialPageRoute(builder: (context) => widget);
  }
}
