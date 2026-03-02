import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ionicons/ionicons.dart';
import 'package:project1/colors.dart';
import 'package:project1/customwidgets/custombutton.dart';
import 'package:project1/customwidgets/customlogo.dart';
import 'package:project1/customwidgets/customtextfield.dart';
import 'package:project1/view/signup.dart';

class Loginscreen extends StatelessWidget {
  const Loginscreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Scaffold(
          body: Column(
            children: [
              SizedBox(height: 138,),
              CustomLogo(),
              SizedBox(height: 9,),
              Text(
                "Welcome back!",
                style: GoogleFonts.roboto(
                  fontSize: 22,
                  fontWeight: FontWeight.w700
                ),
              ),
              SizedBox(height: 10,),
              Text(
                  "Log in to existing LOGO account",
                style: GoogleFonts.roboto(
                  fontSize: 13,
                  color: Color(0xff515151),
                  fontWeight: FontWeight.w400,
                ),
              ),
              SizedBox(height: 40),
              Container(
                margin: EdgeInsets.symmetric(horizontal: 25),
                child: Column(
                  children: [
                    CustomTextField(hint: "Username", prefix: Icons.person_outline),
                    SizedBox(height: 20,),
                    CustomTextField(hint: "Password", prefix: Icons.lock_outline)
                  ],
                ),
              ),
              SizedBox(height: 10,),
              Container(
                margin: EdgeInsets.only(right: 33),
                alignment: Alignment.topRight,
                child: Text(
                  "Forgot Password?",
                  style: GoogleFonts.roboto(
                    color: Color(0xff515151),
                    fontWeight: FontWeight.w500,
                    fontSize: 14
                  ),
                ),
              ),
              SizedBox(height: 25,),
              CustomButton(text: "LOG IN"),
              SizedBox(height: 25,),
              Text(
                "Or sign up using ",
                style: GoogleFonts.roboto(
                  fontSize: 15,
                  fontWeight: FontWeight.w400,
                  color: Color(0xff282828)
                ),
              ),
              SizedBox(height: 10,),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(Ionicons.logo_facebook , size: 33, color: Colors.blue,),
                  SizedBox(width: 30,),
                  Icon(Ionicons.logo_google, size: 33, color: Colors.red.shade700,),
                  SizedBox(width: 30,),
                  Icon(Ionicons.logo_apple, size: 33, )
                ],
              ),
              SizedBox(height: 30,),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Don’t have an account?",
                    style: GoogleFonts.roboto(
                      fontSize: 14,
                      fontWeight: FontWeight.w400
                    ),
                  ),
                  SizedBox(width: 5,),
                  InkWell(
                    onTap: (){
                      Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context)=>SignUpScreen()));
                    },
                    child: Text(
                      "Sign Up",
                      style: GoogleFonts.roboto(
                          fontSize: 14,
                          fontWeight: FontWeight.bold
                      ),
                    ),
                  )
                ],
              )
            ],
          ),
        ),

        Positioned(
            top: -15,
            left: 13,
            child: Image.asset("assets/images/Rectangle 2.png")
        ),
        Positioned(
            top: -20,
            left: -35,
            child: Image.asset("assets/images/Rectangle 1.png")
        ),
      ],
    );
  }
}
