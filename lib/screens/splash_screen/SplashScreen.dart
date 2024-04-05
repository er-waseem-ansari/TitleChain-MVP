import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:title_chain/screens/signup_screen/SignupScreen.dart';
import 'package:title_chain/screens/welcome_screen/WelcomeScreen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(Duration(seconds: 5),
            ()=>Navigator.pushReplacement(context,
            MaterialPageRoute(builder:
                (context) => WelcomeScreen()
            )
        )
    );
  }

  @override
  Widget build(BuildContext context) {
    final double screenHeight = MediaQuery.of(context).size.height;
    final double screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Container(
        height: screenHeight,
        width: screenWidth,
        child: Column(
          children: [
            // Container(width: screenWidth*0.7,child: Image.asset("assets/images/welcome_screen_images/welcome_screen_image.png")),

            SizedBox(height: screenHeight*0.1, width: screenWidth*0.7,),
            Container(width: screenWidth*0.3, child: Image(image: AssetImage('assets/images/splash_screen_images/title_chain_logo.png'), width: screenWidth*0.5,)),


            Expanded(
              child: Center(
                  child: Container(width: screenWidth*0.7,
                    child: Text("Digital Asset Management for businesses and cooperatives. \n \n Tokenize Your Real-World Assets onto the Blockchain. ", style: GoogleFonts.lato(
                        fontWeight: FontWeight.w600,
                        fontSize: 20,
                        color: Colors.grey,

                    ),
                    textAlign: TextAlign.center,),
                  ),
                ),
              ),

          ],
        ),
      ),
    );
  }
}
