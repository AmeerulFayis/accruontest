import 'dart:developer';

import 'package:accruontest/services/local_auth_service.dart';
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

  bool authenticated=false;

  final LocalAuthentication auth = LocalAuthentication();




  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: SafeArea(child: Center(
        child: ElevatedButton(onPressed: ()async{
          final authenticate = await LocalAuth.authenticate();
          setState(() {
            authenticated=authenticate;
          });
          if(authenticated){
            Navigator.pushNamed(context,'/home');
          }else{
            log("error");
          }


    }, child:appTextView(name: "Login",color: AppColor.white)),
      ),

    ));
  }
}
