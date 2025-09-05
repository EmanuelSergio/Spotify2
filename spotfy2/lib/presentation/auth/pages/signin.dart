import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:spotfy2/common/widgets/appbar/app_bar.dart';
import 'package:spotfy2/common/widgets/button/basic_app_button.dart';
import 'package:spotfy2/core/configs/assets/app_vectors.dart';

class SignInPage extends StatelessWidget {
  const SignInPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: _signUpText(),
      appBar: BasicAppBar(
        title: SvgPicture.asset(AppVectors.logo, height: 40, width: 40),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 50, horizontal: 30),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            _loginText(),
            SizedBox(height: 50),
            _emailField(context),
            SizedBox(height: 20),
            _passwordField(context),
            SizedBox(height: 40),
            BasicAppButton(onPressed: () {}, title: "Sign In"),
          ],
        ),
      ),
    );
  }
}

Widget _loginText() {
  return Text(
    "Sign In",
    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
    textAlign: TextAlign.center,
  );
}

Widget _emailField(BuildContext context) {
  return TextField(
    decoration: InputDecoration(
      hintText: "Enter Username Or Email",
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

Widget _signUpText() {
  return Padding(
    padding: const EdgeInsets.only(bottom: 30),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          "Not A Member?",
          style: TextStyle(fontWeight: FontWeight.w500, fontSize: 14),
        ),
        TextButton(
          onPressed: () {},
          child: Text(
            "Register Now",
            style: TextStyle(color: Color(0xff288CE9)),
          ),
        ),
      ],
    ),
  );
}
