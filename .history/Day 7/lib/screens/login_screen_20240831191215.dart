import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

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
            width: 320,
            height: 500,
            decoration: BoxDecoration(
              color: Color.fromARGB(255, 217, 223, 204),
              borderRadius: BorderRadius.circular(30),
              boxShadow: [BoxShadow(color: const Color.fromARGB(195, 0, 0, 0),
              spreadRadius: 12,
              blurRadius: 12,
              offset: Offset(0, 4)),
              ],
            ),
            child: Padding(
              padding: const EdgeInsets.all(24.0),
              child: Scaffold(
                backgroundColor: Colors.transparent,
              
                body: Column(children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Image.asset("assets/images/logo_ui.png"),
                      Text(
                        "Sign In",
                        style: GoogleFonts.jomolhari(
                          fontSize: 32
                        ),
                      ),
                      SizedBox(
                        width: 32,
                      )
                    ],
                  ),
                  SizedBox(height: 80),
                  TextFormField(),
                ],
                ),
              ),
            ),
          ),
        )
      ],
    );
  }
}