import 'package:flutter/material.dart';
import 'package:login_app_2/size.dart';

class CustomTextFormField extends StatelessWidget {
  final textController;
  final validate;
  String text;
  bool isPassword;
  CustomTextFormField(
      {required this.text,
      required this.validate,
      required this.textController,
      this.isPassword = false});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text("${text}"),
        SizedBox(height: small_gap),
        TextFormField(
          controller: textController,
          // 1.value가 들어옴
          // 2.value로 유효성 검사하기
          // 3.리턴(응답)
          //   1) null 리턴 -> 유효성검사 통과
          //   2) 메시지 리턴 -> 유효성검사 실패
          validator: validate,
          obscureText: isPassword,
          decoration: InputDecoration(
            prefixIcon: Icon(Icons.access_time_rounded, color: Colors.black),
            suffixIcon: Icon(Icons.access_alarm, color: Colors.black),
            hintText: "Enter ${text}",
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(20),
            ),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(20),
            ),
            errorBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(20),
            ),
            focusedErrorBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(20),
            ),
          ),
        ),
      ],
    );
  }
}
