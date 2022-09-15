import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:lockfin/home/home.dart';
import 'package:lockfin/home/user_screen.dart';
import 'package:lockfin/login_page.dart';

import '../models/user_model.dart';

class RouteGenerator {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case '/':
        return MaterialPageRoute(builder: (context) => LoginPage());
      case '/homepage':
        return MaterialPageRoute(builder: (context) => Home());
      case UserScreen.routeName:
        return MaterialPageRoute(
          builder: (context) => UserScreen(user: settings.arguments as User),
          settings: settings,
        );
      default:
        return _errorRoute();
    }
  }
}

Route<dynamic> _errorRoute() {
  return MaterialPageRoute(builder: (context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('ERROR'),
        centerTitle: true,
      ),
      body: Center(child: Text('Page not found')),
    );
  });
}

