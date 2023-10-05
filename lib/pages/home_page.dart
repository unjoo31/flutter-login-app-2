import 'package:flutter/material.dart';
import 'package:login_app_2/components/logo.dart';
import 'package:login_app_2/size.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            SizedBox(height: xlarge_gap),
            Logo("Care Soft"),
            SizedBox(height: large_gap),
            TextButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                child: Text("Get Started"))
          ],
        ),
      ),
    );
  }
}
