import 'package:flutter/material.dart';
import 'package:truecrime/auth/signup/signup_name.dart';

class SignUpPassword extends StatefulWidget {
  const SignUpPassword({super.key});

  @override
  State<SignUpPassword> createState() => _SignUpPasswordState();
}

class _SignUpPasswordState extends State<SignUpPassword> {
  TextEditingController emailController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(
            Icons.arrow_back_ios,
            color: Colors.white,
          ),
        ),
        iconTheme: IconThemeData(color: Colors.white),
        backgroundColor: Color(0xff222831),
      ),
      backgroundColor: Color(0xff222831),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(
            height: 50,
          ),
          Center(
            child: Text(
              "SignUp",
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 25,
                  fontWeight: FontWeight.bold),
              textAlign: TextAlign.center,
            ),
          ),
          Container(
            margin: EdgeInsets.only(left: 15, right: 15, top: 80),
            child: TextFormField(
              style: TextStyle(color: Colors.white),
              decoration: InputDecoration(
                  hintText: "Password",
                  hintStyle: TextStyle(
                    color: Colors.white,
                  ),
                  suffixIcon: IconButton(
                      onPressed: () {
                        emailController.clear();
                      },
                      icon: Icon(Icons.cancel))),
            ),
          ),
          SizedBox(
            height: 80,
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (builder) => SignUpName()));
            },
            child: Text(
              "Next",
              style: TextStyle(color: Colors.white),
            ),
            style: ElevatedButton.styleFrom(
                backgroundColor: Color(0xff00ADB5), fixedSize: Size(300, 50)),
          ),
          Spacer(),
        ],
      ),
    );
  }
}
