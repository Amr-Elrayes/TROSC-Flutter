import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:soccer_app/app/screens/second_welcome_screen.dart';

import '../widgets/mySizedwidget.Dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
        backgroundColor: Color(0xFF141414),
        body: SafeArea(
          child: Center(
            child: Column(
              children: [
                Stack(
                  children: [
                    SvgPicture.asset(
                          'assets/patterns/pattern.svg',
                          width: 422,
                          height: 472,
                                
                    ),
                    Positioned(
                      top: 174,
                      left: 122,
                      child: SvgPicture.asset(
                            'assets/images/alien_logo.svg',
                            width: 124,
                            height: 124,
                                  
                      ),
                    ),
                  ],
                ),
                Text(
                  'MONSTER LIVESCORE',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 36,
                  fontFamily: 'Teko',
                  fontWeight: FontWeight.w600,
                ),
                ),
                mySizedBox(height: 16),
                Container(
                  width: 311,
                  child: Text('Never miss a goal - get live match alerts, fixtures and results for your favourite teams and competitions',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Color(0xFF808696),
                    fontSize: 14,
                    letterSpacing: -0.3,
                  ),
                  ),
                ),
                mySizedBox(height: 16),
                ElevatedButton(
                  onPressed: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context){
                      return const SecondWelcome();
                    }));
                  }, 
                  style: ElevatedButton.styleFrom(
                    fixedSize: const Size(311, 48),
                    backgroundColor: const Color(0xFFF8FE11),

                  ),
                  child: const Text(
                    'Get Started',
                    style: TextStyle(
                      color: Color(0xFF141414),
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