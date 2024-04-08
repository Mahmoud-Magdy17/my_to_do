import 'package:flutter/material.dart';
import 'package:my_to_do/models/colors.dart';
import 'package:my_to_do/views/screens/sign_in.dart';
import 'package:my_to_do/views/screens/sign_up.dart';

class ForgetPassword extends StatefulWidget {
  static const String forgetPage = "forgetPage";
  const ForgetPassword({super.key});

  @override
  State<ForgetPassword> createState() => _ForgetPasswordState();
}

class _ForgetPasswordState extends State<ForgetPassword> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 12),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 55,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Forget Password",
                  style: TextStyle(
                      fontWeight: FontWeight.w900,
                      fontSize: 30,
                      color: mainColor),
                ),
              ],
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("New Passord"),
                Container(
                  alignment: Alignment.center,
                  height: 40,
                  child: TextField(
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(40),
                        borderSide: BorderSide(color: mainColor),
                      ),
                    ),
                  ),
                ),
                Text("Confirm Password"),
                Container(
                  alignment: Alignment.center,
                  height: 40,
                  child: TextField(
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(40),
                        borderSide: BorderSide(color: mainColor),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            InkWell(
              onTap: () {
                setState(() {
                  Navigator.pushNamed(context, SignInPage.signIn);
                });
              },
              child: Container(
                alignment: Alignment.center,
                width: double.infinity,
                height: 48,
                decoration: BoxDecoration(
                  color: mainColor,
                  borderRadius: BorderRadius.circular(24),
                ),
                child: Text(
                  "Confirm",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                MaterialButton(
                  onPressed: () {
                    Navigator.pushNamed(context, SignInPage.signIn);
                  },
                  child: Text(
                    "Log In",
                    style: TextStyle(color: Colors.white),
                  ),
                  color: mainColor,
                  minWidth: double.infinity,
                ),
                SizedBox(
                  width: 16,
                ),
                MaterialButton(
                  onPressed: () {
                    setState(() {
                      Navigator.pushNamed(context, SignUPPage.signUp);
                    });
                  },
                  child: Text(
                    "Log In",
                    style: TextStyle(color: Colors.white),
                  ),
                  color: mainColor,
                ),
              ],
            ),
            SizedBox(
              height: 55,
            ),
          ],
        ),
      ),
    );
  }
}
