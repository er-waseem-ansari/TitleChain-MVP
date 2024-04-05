import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:title_chain/screens/login_screen/LoginScreen.dart';
import 'package:title_chain/screens/signup_screen/SignupScreen.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final double screenWidth = MediaQuery.of(context).size.width;
    final double screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(height: screenHeight*0.25,),
            Container(width: screenWidth*0.7,child: Image.asset("assets/images/welcome_screen_images/welcome_screen_image.png")),

            SizedBox(height: 30,),
            Container(child: Text("Welcome to TitleChain", style: GoogleFonts.lato(
              fontWeight: FontWeight.w600,
              fontSize: 20,
              color: Colors.grey
            ),),),

            Container(width: screenWidth*0.7, child: Text("Intelligent Agent for\n Real-World Asset Accounting. \n \n Secure On-Chain Registration, & Business Tokenization for Co-ops and Enterprises",textAlign: TextAlign.center, style: GoogleFonts.lato(
                // fontWeight: FontWeight.w600,
                fontSize: 14,
                color: Colors.grey
            ),),),

            Spacer(),
            Container(width: screenWidth*0.7,
              child: Row(
                children: [
                  SizedBox(height: 50, width: screenWidth*0.3, child: ElevatedButton(onPressed: (){
                    Navigator.push(context,
                        MaterialPageRoute(builder:
                            (context) => SignupScreen()
                        )
                    );
                  },
                      style: ElevatedButton.styleFrom(
                        shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(6.0)
                        ),
                        backgroundColor: Colors.black



                      ),
                      child: Text("Open Account", style: GoogleFonts.lato(
                        color: Colors.white
                      ),
                      textAlign: TextAlign.center,))),
                  Spacer(),
                  SizedBox(height: 50, width: screenWidth*0.3,child: ElevatedButton(onPressed: (){
                    Navigator.push(context,
                        MaterialPageRoute(builder:
                            (context) => LoginScreen()
                        )
                    );
                  },
                      style: ElevatedButton.styleFrom(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(6.0)
                          ),
                          backgroundColor: Color(0xFF5574ff)



                      ),child: Text("LOGIN", style: GoogleFonts.lato(
                          color: Colors.white
                      ),)))
                ],
              ),
            ),
            SizedBox(height: screenHeight*0.1,),
          ],
        ),
      ),
    );
  }
}
