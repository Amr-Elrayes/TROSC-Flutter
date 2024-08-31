import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ui_design/screens/home_screen.dart';
bool obscureText = true;
class SignupScreen extends StatefulWidget {
  const SignupScreen({super.key});

  @override
  State<SignupScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<SignupScreen> {
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
            width: 330,
            height: 520,
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
              padding: const EdgeInsets.all(17.0),
              child: Scaffold(
                resizeToAvoidBottomInset: false,
                backgroundColor: Colors.transparent,
              
                body: Column(children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Image.asset("assets/images/logo_ui.png"),
                      Text(
                        "Sign Up",
                        style: GoogleFonts.jomolhari(
                          fontSize: 32
                        ),
                      ),
                      SizedBox(
                        width: 32,
                      )
                    ],
                  ),
                  SizedBox(height: 30),
                  TextFormField(
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: "Name",
                      hintText: "Amr Elrayes",
                    ),
                  ),
                  SizedBox(height: 30),
                  TextFormField(
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: "Email",
                      hintText: "user@gmail.com",
                    ),
                  ),
                  SizedBox(height: 30),
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
                  SizedBox(height: 10),
                    const Align(
                      alignment: Alignment.centerRight,
                        child: Text(
                          'Forget Password',
                          style: TextStyle(
                            color: Colors.black,
                            decoration: TextDecoration.underline,
                          ),
                        ),
                      ),
                    ),
                  SizedBox(height: 30),
                  ElevatedButton(
                  onPressed: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context){
                      return const HomePage();
                    }));
                  }, 
                  style: ElevatedButton.styleFrom(
                    fixedSize: const Size(170, 55),
                    backgroundColor: Color.fromARGB(255, 0, 0, 0),
                  ),
                    child: const Text(
                      'Signin',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w400,
                        color: Colors.white,
                      ),
                    ),
                    ),
                    SizedBox(height: 25),
                    const Center(
                      child: Row(
                        children: [
                          Text(
                            '                   Have an account ',
                            style: TextStyle(
                            ),
                          ),
                          Text(
                            'Log in',
                            style: TextStyle(
                              fontWeight: FontWeight.w700,
                              
                            ),
                          )
                        ],
                      ),
                    ),
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