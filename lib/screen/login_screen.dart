import 'package:budget_tracker/common/button.dart';
import 'package:flutter/material.dart';
import 'package:budget_tracker/common/labeled_textfield.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      resizeToAvoidBottomInset: true,
      body: Center(
          child: Padding(
        padding: EdgeInsets.all(15.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            LabeledTextField(label: "Username"),
            SizedBox(height: 10),
            LabeledTextField(label: "Password"),
            SizedBox(
              height: 15,
            ),
            SizedBox(
                width: double.infinity,
                height: 45,
                child: Button(
                  title: "Login",
                ))
          ],
        ),
      )),
    );
  }
}
