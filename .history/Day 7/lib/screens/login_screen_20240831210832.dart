import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ui_design/screens/home_screen.dart';
bool obscureText = true;
class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
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
                resizeToAvoidBottomInset: false,
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
                  SizedBox(height: 50),
                  TextFormField(
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: "Email",
                      hintText: "user@gmail.com",
                    ),
                  ),
                  SizedBox(height: 60),
                  TextFormField(
                    keyboardType: TextInputType.visiblePassword,
                    obscureText: obscureText,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: "Password",
                      suffixIcon: IconButton(
                        onPressed: (){setState(() {
                          obscureText = !obscureText;
                        });}, 
                        icon: Icon(obscureText? Icons.visibility : Icons.visibility_off)),
                    ),
                  ),
                  SizedBox(height: 12),
                  ElevatedButton(
                  onPressed: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context){
                      return const HomePage();
                    }));
                  }, 
                  style: Ele,
                    child: child)
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