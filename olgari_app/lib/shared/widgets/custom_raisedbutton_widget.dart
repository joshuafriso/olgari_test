import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomRaisedbuttonWidget extends StatelessWidget {
  Function onPressed;
  String text;
  Color textColor;
  Color color;
  double width;

  CustomRaisedbuttonWidget(
      {this.color = const Color(0xFFF9CA07),
      this.onPressed,
      this.text,
      this.textColor = Colors.white,
      this.width});

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(50),
          boxShadow: [
            BoxShadow(
                color: color.withOpacity(0.3),
                blurRadius: 6,
                offset: Offset(0, 7))
          ]),
      height: size.height * 0.082,
      width: width != null ? width : double.infinity,
      child: RaisedButton(
        color: color,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(50)),
        onPressed: onPressed,
        child: Text(
          text.toUpperCase(),
          style: GoogleFonts.firaSans(
              fontSize: 16, color: textColor, fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}
