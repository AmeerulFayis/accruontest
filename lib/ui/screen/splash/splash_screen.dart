import 'dart:async';

import 'package:accruontest/ui/screen/login/login_screen.dart';
import 'package:accruontest/ui/widgets/app_text_view.dart';
import 'package:accruontest/util/app_color.dart';
import 'package:accruontest/util/app_constants.dart';
import 'package:flutter/material.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({Key? key}) : super(key: key);

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {

  @override
  void initState() {
    Timer(const Duration(seconds:3), () {
      Navigator.pushNamed(context, "/login");

    });
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
Image.asset(icSplash),
          appTextView(name: "Accruon Test",color: AppColor.lightBlue,size:20,wordSpacing:5,fontWeight: FontWeight.bold)

        ],
      ),
    );
  }
}
