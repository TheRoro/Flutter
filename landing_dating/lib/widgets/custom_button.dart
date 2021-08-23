import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:landing_dating/helpers/style.dart';

class CustomButton extends StatelessWidget {
  final String text;
  const CustomButton({Key? key, required this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: active,
        borderRadius: BorderRadius.circular(30),
      ),
      padding: EdgeInsets.symmetric(horizontal: 18, vertical: 12),
      child: Text(
        text,
        style: GoogleFonts.roboto(
            fontSize: 15, fontWeight: FontWeight.bold, color: Colors.white),
      ),
    );
  }
}
