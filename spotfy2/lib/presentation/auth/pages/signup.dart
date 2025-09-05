import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:spotfy2/common/widgets/appbar/app_bar.dart';
import 'package:spotfy2/common/widgets/button/basic_app_button.dart';
import 'package:spotfy2/core/configs/assets/app_vectors.dart';
import 'package:spotfy2/presentation/auth/pages/signin.dart';

class SignUpPage extends StatelessWidget {
  const SignUpPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: _signInText(context),
      appBar: BasicAppBar(
        title: SvgPicture.asset(AppVectors.logo, height: 40, width: 40),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 50, horizontal: 30),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            _registerText(),
            SizedBox(height: 50),
            _fullNameField(context),
            SizedBox(height: 20),
            _emailField(context),
            SizedBox(height: 20),
            _passwordField(context),
            SizedBox(height: 40),
            BasicAppButton(onPressed: () {}, title: "Create Account"),
          ],
        ),
      ),
    );
  }
}

Widget _registerText() {
  return Text(
    "Register",
    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
    textAlign: TextAlign.center,
  );
}

Widget _fullNameField(BuildContext context) {
  return TextField(
    decoration: InputDecoration(
      hintText: "Full Name",
    ).applyDefaults(Theme.of(context).inputDecorationTheme),
  );
}

Widget _emailField(BuildContext context) {
  return TextField(
    decoration: InputDecoration(
      hintText: "Enter Email",
    ).applyDefaults(Theme.of(context).inputDecorationTheme),
  );
}

Widget _passwordField(BuildContext context) {
  return TextField(
    decoration: InputDecoration(
      hintText: "Password",
    ).applyDefaults(Theme.of(context).inputDecorationTheme),
  );
}

Widget _signInText(BuildContext context) {
  return Padding(
    padding: const EdgeInsets.only(bottom: 30),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          "Do you have an account?",
          style: TextStyle(fontWeight: FontWeight.w500, fontSize: 14),
        ),
        TextButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => SignInPage()),
            );
          },
          child: Text("Sign In", style: TextStyle(color: Color(0xff288CE9))),
        ),
      ],
    ),
  );
}
