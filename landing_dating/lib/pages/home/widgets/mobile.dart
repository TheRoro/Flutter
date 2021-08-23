import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:landing_dating/constants/constants.dart';
import 'package:landing_dating/helpers/responsive.dart';
import 'package:landing_dating/helpers/style.dart';
import 'package:landing_dating/widgets/custom_button.dart';

class MobileScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              constraints: BoxConstraints(
                maxWidth: 450,
              ),
              margin: EdgeInsets.symmetric(horizontal: 20),
              child: RichText(
                textAlign: TextAlign.center,
                text: TextSpan(
                  children: [
                    TextSpan(text: 'Get noticed for '),
                    TextSpan(
                      text: 'who ',
                      style: GoogleFonts.roboto(color: active),
                    ),
                    TextSpan(text: 'you are '),
                    TextSpan(
                      text: 'not what ',
                      style: GoogleFonts.roboto(color: active),
                    ),
                    TextSpan(text: 'you look like.'),
                  ],
                  style: GoogleFonts.roboto(
                    fontSize: 28,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            )
          ],
        ),
        SizedBox(
          height: 20,
        ),
        Container(
          constraints: BoxConstraints(maxWidth: 550),
          child: Text(
            mainParagraph,
            textAlign: TextAlign.center,
            style: GoogleFonts.roboto(
              fontSize: 20,
              letterSpacing: 1.5,
              height: 1.5,
            ),
          ),
        ),
        SizedBox(
          height: 20,
        ),
        Container(
          constraints: BoxConstraints(maxWidth: 550),
          padding: EdgeInsets.all(4),
          margin: EdgeInsets.symmetric(horizontal: 40),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(40),
            boxShadow: [
              BoxShadow(
                color: Colors.black.withOpacity(.1),
                offset: Offset(0, 40),
                blurRadius: 80,
              ),
            ],
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                width: screenSize.width / 4,
                padding: EdgeInsets.only(left: 4),
                child: TextField(
                  decoration: InputDecoration(
                    icon: Icon(Icons.email_outlined),
                    hintText: 'Email',
                    border: InputBorder.none,
                  ),
                ),
              ),
              CustomButton(text: 'Get Started')
            ],
          ),
        ),
      ],
    );
  }
}
