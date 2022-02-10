import 'package:dream_world/GoogleSign/google_signup_button_widget.dart';
import 'package:dream_world/LoginScreen/welcome_page.dart';
import 'package:flutter/material.dart';
import 'package:dream_world/LoginScreen/background.dart';
import 'package:dream_world/RoundedButtonTP/rounded_button.dart';
import 'package:dream_world/RoundedButtonTP/rounded_password_field.dart';
import 'package:dream_world/RoundedButtonTP/rounded_input_field.dart';
import 'package:dream_world/LoginScreen/already_have_an_account_acheck.dart';
import 'package:dream_world/LoginScreen/signup_screen.dart';

class Body extends StatelessWidget {
  const Body({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: Container(
        constraints: BoxConstraints.expand(),
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage("assets/loginscr.png"), fit: BoxFit.cover)),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              // ignore: missing_required_param
              Background(),
              Text(
                "LOGIN",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              SizedBox(height: size.height * 0.03),
              RoundedInputField(
                hintText: "Your Email",
                onChanged: (value) {},
              ),
              RoundedPasswordField(
                onChanged: (value) {},
              ),
              RoundedButton(
                text: "LOGIN",
                press: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => WelcomePage()));
                },
              ),
              SizedBox(height: size.height * 0.03),
              AlreadyHaveAnAccountCheck(
                press: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) {
                        return SignUpScreen();
                      },
                    ),
                  );
                },
              ),

              GoogleSignupButtonWidget(),
            ],
          ),
        ),
      ),
    );
  }
}
