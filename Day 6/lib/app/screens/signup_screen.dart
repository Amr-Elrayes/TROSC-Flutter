import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:soccer_app/app/screens/login_screen.dart';
import 'package:soccer_app/app/screens/second_welcome_screen.dart';
import 'package:soccer_app/app/widgets/mySizedwidget.dart';
import 'package:soccer_app/app/widgets/myTextFormField.dart';
import 'package:soccer_app/app/widgets/my_Container.dart';

class SignupScreen extends StatelessWidget {
  const SignupScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF141414),
      body: SafeArea(
        child: SingleChildScrollView( // Wrap Column with SingleChildScrollView
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 14),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                IconButton(
                  onPressed: () {
                    Navigator.pop(context, MaterialPageRoute(builder: (context) {
                      return const SecondWelcome();
                    }));
                  },
                  icon: CircleAvatar(
                    backgroundColor: const Color(0xFF1F2022),
                    child: SvgPicture.asset(
                      'assets/icons/back.svg',
                      width: 24,
                    ),
                  ),
                ),
              const Padding(
                padding: EdgeInsets.symmetric(vertical: 32),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'SIGN UP',
                      style: TextStyle(
                        fontSize: 36,
                        color: Colors.white,
                        fontFamily: 'Teko',
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    Row(
                      children: [
                        Text(
                          'Already have an account ? ',
                          style: TextStyle(
                            color: Color(0xFF808696),
                            fontSize: 14,
                            letterSpacing: -0.5,
                          ),
                        ),
                        
                        Text(
                          'Login',
                          style: TextStyle(
                            color: Color(0xFFF8FE11),
                            fontSize: 14,
                            letterSpacing: -0.5,
                          ),
                        )
                      ],
                    ),
                  ],
                ),
              ),
                myTextFormField(
                  t: 'Name',
                  keyboardType: TextInputType.text,
                  obscureText: false,
                ),
                mySizedBox(height: 15),
                myTextFormField(
                  t: 'Email',
                  keyboardType: TextInputType.emailAddress,
                  obscureText: false,
                ),
                mySizedBox(height: 15),
myTextFormField(t: 'Password' , keyboardType: TextInputType.visiblePassword , obscureText: true , showEyeIcon: true),
                mySizedBox(height: 30),
                Center(
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context) {
                        return const LoginScreen();
                      }));
                    },
                    style: ElevatedButton.styleFrom(
                      fixedSize: const Size(311, 48),
                      backgroundColor: const Color(0xFFF8FE11),
                    ),
                    child: const Text(
                      'Signup',
                      style: TextStyle(
                        fontSize: 20,
                        color: Color(0xFF141414),
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                ),
                mySizedBox(height: 16),
                Center(
                  child: Text(
                    'Or signup with',
                    style: TextStyle(
                      color: const Color(0xFF808696),
                    ),
                  ),
                ),
                mySizedBox(height: 14),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    myContainer(
                      IconButton(
                        onPressed: () {},
                        icon: SvgPicture.asset(
                          'assets/icons/Google.svg',
                          width: 24,
                        ),
                      ),
                    ),
                    mySizedBox(width: 16),
                    myContainer(
                      IconButton(
                        onPressed: () {},
                        icon: SvgPicture.asset(
                          'assets/icons/Twitter.svg',
                          width: 24,
                        ),
                      ),
                    ),
                    mySizedBox(width: 16),
                    myContainer(
                      IconButton(
                        onPressed: () {},
                        icon: SvgPicture.asset(
                          'assets/icons/Facebook.svg',
                          width: 24,
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
