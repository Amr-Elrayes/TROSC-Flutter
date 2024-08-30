import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
// ignore: unused_import
import 'package:soccer_app/app/screens/login_screen.dart';
import 'package:soccer_app/app/screens/signup_screen.dart';
import 'package:soccer_app/app/screens/third_welcome_screen.dart';

import '../widgets/mySizedwidget.Dart';

class SecondWelcome extends StatelessWidget {
  const SecondWelcome({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0xFF141414),
        body: Center(
          child: Column(
            children: [
              Image.asset('assets/images/illustration.png',
              width: 500,
              height: 470,
              fit: BoxFit.cover,
              ),
                IconButton(
                onPressed: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context){
                    return const ThirdWelcome();
                  }));
                }, 
icon: CircleAvatar(
  backgroundColor: Color(0xFF1F2022),
  child: Transform.rotate(
    angle: 3.14159, // Rotate by 180 degrees (π radians)
    child: SvgPicture.asset(
      'assets/icons/back.svg',
      width: 24,
    ),
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
                child: Text('We’d like to check that your preferences and details are accurate.',
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
    );
  }


}