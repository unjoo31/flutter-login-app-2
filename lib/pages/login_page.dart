import 'package:flutter/material.dart';
import 'package:login_app_2/components/custom_text_form_field.dart';
import 'package:login_app_2/components/logo.dart';
import 'package:login_app_2/size.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: (ListView(
          // inset 영역 때문에
          children: [
            Logo("Login"),
            CustomTextFormField(text: "Email"),
            SizedBox(height: large_gap),
            CustomTextFormField(text: "Password", isPassword: true),
            TextButton(onPressed: () {}, child: Text("Login"))
          ],
        )),
      ),
    );
  }
}
