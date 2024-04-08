import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:my_to_do/models/colors.dart';
import 'package:my_to_do/views/screens/forget_password.dart';

class SignInPage extends StatefulWidget {
  static const  String signIn = "SignIn";
  const SignInPage({super.key});

  @override
  State<SignInPage> createState() => _SignInPageState();
}

class _SignInPageState extends State<SignInPage> {
  bool val = false;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 8.0, bottom: 16),
            child: const Text(
              'Welcome Back!',
              style: TextStyle(
                color: mainColor,
                fontSize: 32,
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.only(bottom: 16),
            width: double.infinity,
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(20),
                boxShadow: const [
                  BoxShadow(
                    color: Color.fromRGBO(201, 201, 201, 1),
                    blurRadius: 3,
                    spreadRadius: 2,
                    offset: Offset(2, 2),
                  ),
                ]),
            child: const TextField(
              decoration: InputDecoration(
                  prefixIcon: Icon(
                    Icons.email,
                    color: mainColor,
                  ),
                  border: UnderlineInputBorder(borderSide: BorderSide.none)),
            ),
          ),
          Container(
            width: double.infinity,
            margin: EdgeInsets.only(bottom: 16),
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(20),
                boxShadow: const [
                  BoxShadow(
                    color: Color.fromRGBO(201, 201, 201, 1),
                    blurRadius: 3,
                    spreadRadius: 2,
                    offset: Offset(2, 2),
                  ),
                ]),
            child: const TextField(
              decoration: InputDecoration(
                  prefixIcon: Icon(
                    Icons.lock,
                    color: mainColor,
                  ),
                  suffixIcon: Icon(
                    Icons.remove_red_eye,
                    color: Color.fromRGBO(201, 201, 201, 1),
                  ),
                  border: UnderlineInputBorder(borderSide: BorderSide.none)),
            ),
          ),
          
          Padding(
            padding: const EdgeInsets.only(bottom: 16),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Checkbox(
                      value: val,
                      onChanged: (val) {
                        setState(() {
                          this.val = val!;
                        });
                      },
                    ),
                    const Text(
                      'Remember Password ',
                      style: TextStyle(
                        color: mainColor,
                        // fontSize: 12
                      ),
                    ),
                  ],
                ),
                GestureDetector(
                  onTap: () {
                    setState(() {
                      Navigator.popAndPushNamed(context, ForgetPassword.forgetPage);
                    });

                  },
                  child: const Text(
                    'Forget Password?',
                    style: TextStyle(
                      color: Colors.red,
                      // fontSize: 12
                    ),
                  ),
                ),
              
              ],
            ),
          ),
          Container(
            decoration: BoxDecoration(
              color: mainColor,
              borderRadius: BorderRadius.all(
                Radius.circular(20),
              ),
            ),
            alignment: Alignment.center,
            width: double.infinity,
            margin: EdgeInsets.only(left: 68, right: 68, bottom: 16),
            height: 40,
            child: InkWell(
              onTap: () {
                setState(() {});
              },
              child: const Text(
                'Sign in',
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                height: 1,
                width: 80,
                color: mainColor,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16.0),
                child: const Text('Or Sign in With'),
              ),
              Container(
                height: 1,
                width: 80,
                color: mainColor,
              ),
            ],
          ),
          SizedBox(
            height: 16,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(16),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey,
                      spreadRadius: 3,
                      blurRadius: 5,
                      offset: Offset(3, 3),
                    ),
                  ],
                  color: Colors.white,
                ),
                alignment: Alignment.center,
                width: 130,
                height: 40,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Icon(Icons.mobile_friendly, color: mainColor),
                    Text(
                      'Google',
                      style: TextStyle(color: mainColor),
                    )
                  ],
                ),
              ),
              Container(
                padding: EdgeInsets.all(10),
                alignment: Alignment.center,
                width: 130,
                height: 40,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(16), color: mainColor),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Icon(Icons.facebook, color: Colors.white),
                    Text(
                      'Facebook',
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    )
                  ],
                ),
              
              ),
            
            ],
          )
        ],
      ),
    );
  }
}
