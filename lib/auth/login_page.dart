import 'package:flutter/material.dart';
import 'package:social_login_buttons/social_login_buttons.dart';
import 'package:truecrime/auth/signin_email.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(
            "assets/logo.png",
            width: 100,
            height: 100,
            fit: BoxFit.cover,
          ),
          SizedBox(
            height: 14,
          ),
          Text(
            "Sign up for True Crime\nPods",
            style: TextStyle(
                color: Colors.white, fontSize: 25, fontWeight: FontWeight.bold),
            textAlign: TextAlign.center,
          ),
          SizedBox(
            height: 20,
          ),
          Container(
            decoration: BoxDecoration(
                color: Colors.black,
                borderRadius: BorderRadius.circular(20),
                border: Border.all(color: Colors.white)),
            margin: EdgeInsets.only(left: 12, right: 12),
            child: SocialLoginButton(
              borderRadius: 20,
              textColor: Colors.white,
              backgroundColor: Colors.black,
              buttonType: SocialLoginButtonType.google,
              onPressed: () {},
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Container(
            decoration: BoxDecoration(
                color: Colors.black,
                borderRadius: BorderRadius.circular(20),
                border: Border.all(color: Colors.white)),
            margin: EdgeInsets.only(left: 12, right: 12),
            child: SocialLoginButton(
              borderRadius: 20,
              textColor: Colors.white,
              backgroundColor: Colors.black,
              buttonType: SocialLoginButtonType.appleBlack,
              onPressed: () {},
            ),
          ),
          SizedBox(
            height: 20,
          ),
          InkWell(
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (builder) => SignInEmail()));
            },
            child: Container(
                margin: EdgeInsets.only(left: 12, right: 12),
                child: Image.asset("assets/btn.png")),
          )
        ],
      ),
    );
  }
}
