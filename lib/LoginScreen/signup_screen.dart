import 'package:dream_world/LoginScreen/welcome_page.dart';
import 'package:flutter/material.dart';
import 'background.dart';
import '../RoundedButtonTP/rounded_input_field.dart';
import '../RoundedButtonTP/rounded_button.dart';
import '../RoundedButtonTP/rounded_password_field.dart';
import 'login_screen.dart';
import 'already_have_an_account_acheck.dart';
import 'package:dream_world/facebooklogin/loginWithFacebook.dart';

class SignUpScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: Container(
        constraints: BoxConstraints.expand(),
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage("assets/sign.png"), fit: BoxFit.cover)),
        child: SingleChildScrollView(
            child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Background(),
            Text(
              "SIGNUP",
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            SizedBox(height: size.height * 0.03),
            RoundedInputField(
              hintText: "Your Name",
              onChanged: (value) {},
            ),
            RoundedInputField(
              hintText: "Your Email",
              onChanged: (value) {},
            ),
            RoundedPasswordField(
              onChanged: (value) {},
            ),
            RoundedButton(
              text: "SIGNUP",
              press: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => WelcomePage()));
              },
            ),
            SizedBox(height: size.height * 0.03),
            AlreadyHaveAnAccountCheck(
              login: false,
              press: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return LoginScreen();
                    },
                  ),
                );
              },
            ),
          ],
        )),
      ),
    );
  }
}
