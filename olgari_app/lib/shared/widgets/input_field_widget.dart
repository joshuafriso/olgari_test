import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class InputFieldWidget extends StatelessWidget {
  final String hint;
  final bool obscure;
  final dynamic onChanged;
  final String errorText;
  final TextInputType keyboardType;
  final TextCapitalization textCapitalization;
  final bool hasError;

  InputFieldWidget(
      {this.hint = "Digite aqui",
      this.obscure = false,
      this.onChanged,
      this.errorText,
      this.keyboardType,
      this.textCapitalization = TextCapitalization.none,
      this.hasError = false});

  @override
  Widget build(BuildContext context) {
    return TextField(
      onChanged: onChanged,
      enableSuggestions: false,
      keyboardType: keyboardType != null ? keyboardType : null,
      textCapitalization: textCapitalization != TextCapitalization.none
          ? textCapitalization
          : TextCapitalization.none,
      decoration: InputDecoration(
          hintText: hint,
          hintStyle: GoogleFonts.firaSans(
              color: Color(0xFF938F85),
              fontStyle: FontStyle.italic,
              fontSize: 18),
          focusedBorder: InputBorder.none,
          enabledBorder: InputBorder.none,
          errorBorder: InputBorder.none,
          focusedErrorBorder: InputBorder.none,
          errorText: errorText != null ? errorText : null,
          contentPadding: EdgeInsets.symmetric(horizontal: 2),
          suffix: hasError
              ? Container(
                  height: 30.0,
                  width: 30.0,
                  child: Image.asset("assets/images/ic_alert.png"))
              : null),
      style:
          GoogleFonts.firaSans(fontSize: 18, decoration: TextDecoration.none),
      obscureText: obscure,
      cursorColor: Colors.black,
      cursorWidth: 1.0,
      cursorHeight: 22,
    );
  }
}
