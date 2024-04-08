import 'package:flutter/material.dart';
import 'package:my_to_do/models/colors.dart';
import 'package:my_to_do/views/screens/forget_password.dart';
import 'package:my_to_do/views/screens/sign_in.dart';
import 'package:my_to_do/views/screens/sign_up.dart';

void main() {
  runApp( MyToDoApp());
}

class MyToDoApp extends StatelessWidget {
   MyToDoApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        ForgetPassword.forgetPage:(context) => ForgetPassword(),
        
      },
      debugShowCheckedModeBanner: false,
      home: DefaultTabController(
        length: 2,
        child: Scaffold(
          appBar: AppBar(
            bottom: const TabBar(tabs: [
              Tab(
                text: 'Sign IN',
              ),
              Tab(
                text: 'Sign Up',
              ),
            ]),
          ),
          body: const TabBarView(
            children: [
              Center(
                child: SignInPage(),
              ),
              Center(
                child: SignUPPage(),
              ),
            ],
          ),
          bottomNavigationBar: Container(
            height: 60,
            decoration: const BoxDecoration(
              color: mainColor,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(20),
                topRight: Radius.circular(20),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
