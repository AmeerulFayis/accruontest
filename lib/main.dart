import 'package:accruontest/ui/screen/splash/splash_screen.dart';
import 'package:accruontest/util/app_color.dart';
import 'package:accruontest/util/app_route.dart';
import 'package:flutter/material.dart';
import 'package:local_auth/local_auth.dart';

void main()async {
  WidgetsFlutterBinding.ensureInitialized();

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Machine Test',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        scaffoldBackgroundColor: AppColor.white
      ),
      home: SplashPage(),
      onGenerateRoute: onGenerateRoute,
    );
  }
}


