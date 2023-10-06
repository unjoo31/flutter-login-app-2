import 'package:flutter/material.dart';
import 'package:login_app_2/components/custom_text_form_field.dart';
import 'package:login_app_2/size.dart';
import 'package:login_app_2/user_repository.dart';
import 'package:login_app_2/validator_util.dart';

// StatelessWidget : 상태의 변경이 없는 위젯 (대부분 final을 사용함)
class Custom_Form extends StatelessWidget {
  // final : readonly 메모리를 만드는 것
  final _formKey = GlobalKey<FormState>();

  final _email = TextEditingController();
  final _password = TextEditingController();

  Custom_Form();

  @override
  Widget build(BuildContext context) {
    return Form(
        key: _formKey, // Form태그안에 있는 유효성 검사의 준비가 된 상태
        child: Column(
          children: [
            CustomTextFormField(
                text: "Email",
                validate: validateEmail(),
                textController: _email),
            SizedBox(height: large_gap),
            CustomTextFormField(
                text: "Password",
                validate: validatePassword(),
                textController: _password,
                isPassword: true),
            SizedBox(height: large_gap),
            TextButton(
                onPressed: () {
                  // TextButton을 누르면 _formKey.currentState!가 발동함
                  if (_formKey.currentState!.validate()) {
                    // validator가 null을 리턴하면 true가 된다.
                    UserRepository repo = UserRepository();
                    repo.login(_email.text.trim(),
                        _password.text.trim()); // .trim():앞뒤공백 없애기
                    Navigator.pushNamed(context, "/home"); // true면 페이지 이동함
                  }
                },
                child: Text("Login"))
          ],
        ));
  }
}
