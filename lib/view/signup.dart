import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:project1/customwidgets/custombutton.dart';
import 'package:project1/customwidgets/customtextfield.dart';
import 'package:project1/view/login.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          SizedBox(height: 70,),
          Center(
            child: Text(
              "Let’s Get Started!",
              style: GoogleFonts.roboto(
                  fontSize: 24,
                  fontWeight: FontWeight.w700
              ),
            ),
          ),
          SizedBox(height: 3,),
          Text(
            "Create an account on MNZL to get all features",
            style: GoogleFonts.roboto(
              fontSize: 13,
              color: Color(0xff515151),
              fontWeight: FontWeight.w400,
            ),
          ),
          SizedBox(height: 30,),
          Container(
            margin: EdgeInsets.symmetric(horizontal: 25),
            child: Column(
              children: [
                CustomTextField(hint: "First Name", prefix: Icons.person_outline),
                SizedBox(height: 20,),
                CustomTextField(hint: "Last Name", prefix: Icons.person_outline),
                SizedBox(height: 20,),
                CustomTextField(hint: "User Name", prefix: Icons.person_outline),
                SizedBox(height: 20,),
                CustomTextField(hint: "Email", prefix: Icons.email_outlined),
                SizedBox(height: 20,),
                CustomTextField(hint: "Password", prefix: Icons.lock_outline),
                SizedBox(height: 20,),
                CustomTextField(hint: "Confirm Password", prefix: Icons.lock_outline),
              ],
            ),
          ),
          SizedBox(height: 30,),
          CustomButton(text: "CREATE"),
          SizedBox(height: 30,),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Already have an account?",
                style: GoogleFonts.roboto(
                    fontSize: 14,
                    fontWeight: FontWeight.w400
                ),
              ),
              SizedBox(width: 5,),
              InkWell(
                onTap: (){
                  Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context)=>Loginscreen()));
                },
                child: Text(
                  "Login here",
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
    );
  }
}
