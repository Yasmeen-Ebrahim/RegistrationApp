import 'package:flutter/material.dart';
import '../colors.dart';

class CustomLogo extends StatelessWidget {
  const CustomLogo({super.key});

  @override
  Widget build(BuildContext context) {
    return   ShaderMask(shaderCallback: (Rect bounds){
      return LinearGradient(
          colors: [AppColors.primaryColor , AppColors.secondaryColor],
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter
      ).createShader(bounds);
    },
      child: Center(
        child: Text(
          "LOGO" ,
          style: TextStyle(
              fontFamily: "Prime",
              fontSize: 75,
              fontWeight: FontWeight.w400,
              color : Colors.white
          ),
        ),
      ),
    );
  }
}
