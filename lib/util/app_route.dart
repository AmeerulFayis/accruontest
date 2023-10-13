


import 'package:accruontest/ui/screen/login/login_screen.dart';
import 'package:flutter/cupertino.dart';

import '../ui/screen/home/home_screen.dart';
import '../ui/screen/splash/splash_screen.dart';

Route onGenerateRoute(RouteSettings settings) {
  Route page = CupertinoPageRoute(
    builder: (context) => const SplashPage(),
  );
  switch (settings.name) {
    case "/splash":
      page = CupertinoPageRoute(
        builder: (context) => const SplashPage(),
      );
      break;
    case "/login":
      page = CupertinoPageRoute(
        builder: (context) =>  const LoginPage(),
      );
      break;
    case "/home":
      page = CupertinoPageRoute(
        builder: (context) =>  const HomePage(),
      );
      break;


  }
  return page;
}
