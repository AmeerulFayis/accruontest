import 'dart:developer';

import 'package:accruontest/ui/screen/home/home_screen.dart';
import 'package:accruontest/ui/widgets/app_text_view.dart';
import 'package:accruontest/util/app_color.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:local_auth/local_auth.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final LocalAuthentication auth = LocalAuthentication();


  Future authenticate() async {
    final bool isBiometricsAvailable = await auth.isDeviceSupported();

    if (!isBiometricsAvailable) return false;

    try {
      return await auth.authenticate(
        localizedReason: 'Scan Fingerprint To Enter Vault',
        options: const AuthenticationOptions(
          useErrorDialogs: true,
          stickyAuth: true,
        ),
      );
    } on PlatformException {
      log("------>>>>> its platfofrm exception");
      return;
    }
  }

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: SafeArea(child: Center(
        child: ElevatedButton(onPressed: ()async{
          bool isAuthenticated = await authenticate();

          if (isAuthenticated) {
            Navigator.pushNamed(context, "/home");
          } else {

            Container();
          }


    }, child:appTextView(name: "Authenticate",color: AppColor.white)),
      ),

    ));
  }
}
