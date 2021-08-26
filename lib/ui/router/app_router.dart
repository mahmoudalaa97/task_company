import 'package:app/ui/screen/Home/cubit/navigation_bar_cubit.dart';
import 'package:flutter/material.dart';
import 'package:app/ui/screen/Home/home_screen.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AppRouter {
  const AppRouter._();

  /// add here your route
  /// ```example
  ///   static const String login = '/HereYourRoute';
  /// ````

  static Route<dynamic> onGenerateRoute(RouteSettings settings) {
    switch (settings.name) {
      case '/':
      default:
        throw ('Route not found!');
    }
  }
}
