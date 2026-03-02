import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomTextField extends StatelessWidget {
  final String hint ;
  final IconData prefix ;
  const CustomTextField({super.key, required this.hint, required this.prefix});

  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
          filled: true,
          fillColor: Colors.grey[200],
          contentPadding: EdgeInsets.symmetric(vertical:16),
          border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(5),
              borderSide: BorderSide.none
          ),
          hintText: hint,
          hintStyle: GoogleFonts.roboto(
              fontSize: 14,
              fontWeight: FontWeight.w400,
              color: Color(0xff515151)
          ),
          prefixIcon: Container(
            margin: EdgeInsets.symmetric(horizontal: 23),
            child: Icon(prefix),
          ),
          prefixIconColor: Color(0xff515151)
      ),
    );
  }
}
