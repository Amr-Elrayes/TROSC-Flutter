import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:soccer_app/app/screens/login_screen.dart';
import 'package:soccer_app/app/screens/second_welcome_screen.dart';
import 'package:soccer_app/app/screens/signup_screen.dart';

import '../widgets/mySizedwidget.Dart';

class ThirdWelcome extends StatelessWidget {
  const ThirdWelcome({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0xFF141414),
        body: SafeArea(
          child: Center(
            child: Column(
              children: [
              Stack(
                children: [
                  SvgPicture.asset(
                    'assets/patterns/yellow.svg',
                  
                    width: 472,
                    height: 410,
                  ),
                  Positioned(
                    top: -110,
                    left: 10,
                    child: Image.asset(
                      'assets/images/cup.png',
                      width: 315,
                      height: 600,
                    ),
                  ),
                ],
              ),
              mySizedBox(height: 10),
                IconButton(
                onPressed: (){
                  Navigator.pop(context, MaterialPageRoute(builder: (context){
                    return const SecondWelcome();
                  }));
                }, 
                icon: CircleAvatar(
                  backgroundColor: Color(0xFF1F2022),
                  child: SvgPicture.asset(
                    'assets/icons/back.svg',
                    width: 24,
                  ),
                ),
              ),
              mySizedBox(height: 10),
                const Text(
                  'MONSTER LIVESCORE',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 36,
                  fontFamily: 'Teko',
                  fontWeight: FontWeight.w600,
                ),
                ),
                mySizedBox(height: 10),
                Container(
                  width: 311,
                  child: Text('Be part of monster livesoccer familiy , To have recent information about sport',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Color(0xFF808696),
                    fontSize: 14,
                    letterSpacing: 1,
                  ),
                  ),
                ),
                mySizedBox(height: 16),
                ElevatedButton(
                  onPressed: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context){
                      return const LoginScreen();
                    }));
                  }, 
                  style: ElevatedButton.styleFrom(
                    fixedSize: const Size(311, 48),
                    backgroundColor: const Color(0xFFF8FE11),
          
                  ),
                  child: const Text(
                    'Login',
                    style: TextStyle(
                      fontSize: 20,
                      color: Color(0xFF141414),
                      fontWeight: FontWeight.w600,
                      ),
                      ),
                  ),
                  mySizedBox(height: 16),
                  OutlinedButton(
                    onPressed: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context){
                      return const SignupScreen();
                    }));
                  }, 
                    style: OutlinedButton.styleFrom(
                    fixedSize: const Size(311, 48),
                    side:  BorderSide( color: Color(0xFFF8FE11)) ,
                  ),
                  child: const Text(
                    'Signup for Monster Livescore',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  ),
              ],
              ),
          ),
        ),
    );
  }


}

