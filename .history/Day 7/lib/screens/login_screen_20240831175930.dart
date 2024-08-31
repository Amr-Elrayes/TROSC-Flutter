import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return  Stack(
      children: [
        Image(
          image: AssetImage(
            'assets/images/back_ui.png',
          ),
          width: double.infinity,
          height: double.infinity,
        ),
        Center(
          child: Container(
            color: Colors.white,
            width: 320,
            height: 500,
            decoration: B,
          ),
        )
      ],
    );
  }
}