import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:lockfin/home/home.dart';
import 'package:lockfin/matches/chat_screen.dart';
import 'package:lockfin/matches/matches_screen.dart';
import 'package:lockfin/models/model.dart';
import 'package:lockfin/screen/api_screen.dart';
import 'package:lockfin/screen/onboarding_screens.dart';
import 'package:lockfin/home/user_screen.dart';
import 'package:lockfin/login_page.dart';
import 'package:lockfin/screen/profile_screen.dart';

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
      case OnBoardingScreen.routeName:
        return MaterialPageRoute(builder: (context) => OnBoardingScreen());
      case ProfileScreen.routeName:
        return MaterialPageRoute(builder: (context) => ProfileScreen());
      case ApiScreen.routeName:
        return MaterialPageRoute(builder: (context) => ApiScreen());
      case MatchesScreen.routeName:
        return MaterialPageRoute(builder: (context) => MatchesScreen());
      case ChatScreen.routeName:
        return MaterialPageRoute(
          builder: (context) =>
              ChatScreen(userMatch: settings.arguments as UserMatch),
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
