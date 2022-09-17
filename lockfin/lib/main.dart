import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter/material.dart';
import 'package:lockfin/blocs/swipe_bloc.dart';
import 'package:lockfin/config/app_router.dart';
import 'package:lockfin/config/theme.dart';
import 'package:lockfin/home/user_screen.dart';
import 'package:lockfin/login_page.dart';

import 'screen/onboarding_screens.dart';
import 'models/model.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
            create: (_) => SwipeBloc()..add(LoadUsers(users: User.users)))
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: theme(),
        onGenerateRoute: RouteGenerator.generateRoute,
        initialRoute: OnBoardingScreen.routeName,
      ),
    );
  }
}
