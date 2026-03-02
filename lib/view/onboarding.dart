import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:project1/view/login.dart';
import '../customwidgets/customlogo.dart';

class OnBoardingScreen extends StatefulWidget {
  const OnBoardingScreen({super.key});

  @override
  State<OnBoardingScreen> createState() => _OnBoardingScreenState();
}

class _OnBoardingScreenState extends State<OnBoardingScreen> {

  @override
  void initState() {
    Future.delayed(const Duration(seconds: 5) , () {
      return Navigator.of(context).push(MaterialPageRoute(builder: (context)=>const Loginscreen()));
    },);
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Scaffold(
          body: Column(
            children: [
              SizedBox(height: 110,),
              CustomLogo(),
              Container(
                  width: 350,
                  height: 350,
                  child: Image.asset("assets/images/logo.png", fit: BoxFit.cover,)
              ),
              SizedBox(height: 7,),
              Text(
                  "LOREM IPSUM",
                  style: GoogleFonts.inter(
                      fontWeight: FontWeight.bold,
                      fontSize: 24
                  )
              ),
              SizedBox(height: 13,),
              Text(
                "Lorem Ipsum is a dummy text \n        used as placeholder",
                style: GoogleFonts.inter(
                    fontSize: 17,
                    color: Color(0xff515151)
                ),
              )
            ],
          ),
        ),
        Positioned(
            top: - 50,
            left: 105,
            child: Image.asset("assets/images/line.png")
        ),
        Positioned(
            top: - 20,
            left: 52,
            child: Image.asset("assets/images/line.png")
        ),
        Positioned(
            top: 290,
            left: 79,
            child: Image.asset("assets/images/lamp.png")
        ),
        Positioned(
            top: 312,
            left: 26,
            child: Image.asset("assets/images/lamp.png")
        ),
      ],
    );
  }
}
