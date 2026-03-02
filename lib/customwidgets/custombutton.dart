import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../colors.dart';

class CustomButton extends StatelessWidget {
  final String text ;
  const CustomButton({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return Container(
        width: 199,
        height: 53,
        child: Container(
          alignment: Alignment.center,
          child: Text(
            text,
            style: GoogleFonts.roboto(
                fontWeight: FontWeight.w700,
                fontSize: 16,
                color: Colors.white
            ),
          ),
        ),
        decoration: BoxDecoration(
          gradient: LinearGradient(
              colors: [
                AppColors.primaryColor,
                AppColors.secondaryColor
              ],
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter
          ),
          borderRadius: BorderRadius.circular(5),
        )
    );
  }
}
