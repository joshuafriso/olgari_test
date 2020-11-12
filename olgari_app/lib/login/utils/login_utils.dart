import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:olgari_app/home/home_controller.dart';
import 'package:olgari_app/home/home_page.dart';
import 'package:olgari_app/shared/widgets/custom_raisedbutton_widget.dart';

class LoginUtils {
  void showBottomSheetMethod(
      BuildContext context, String email, HomeController controller) {
    var size = MediaQuery.of(context).size;
    showModalBottomSheet(
        context: context,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(top: Radius.circular(25.0)),
        ),
        builder: (context) {
          return Container(
            padding: EdgeInsets.all(15),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: [
                Align(
                  alignment: Alignment.center,
                  child: Container(
                    margin: EdgeInsets.only(bottom: 26),
                    width: 40,
                    height: 4,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Color(0xFFE9E6D8)),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(bottom: 10),
                  child: Text(
                    "VAMOS REDEFINIR SUA SENHA?",
                    style: GoogleFonts.firaSans(
                        fontSize: 14,
                        fontWeight: FontWeight.w400,
                        color: Color(0xFF938F85)),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(bottom: 24),
                  child: Text(
                    "Iremos te enviar os instruções de redefinição de senha para o e-mail abaixo, ok?",
                    style: GoogleFonts.firaSans(
                        fontSize: 16, fontWeight: FontWeight.w400),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(bottom: 44),
                  child: Text(email.toString(),
                      style: GoogleFonts.firaSans(
                          fontSize: 16, fontWeight: FontWeight.w400)),
                ),
                Divider(
                  color: Color(0xFFF1EFE7),
                  height: 5,
                ),
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Container(
                          width: size.width * 0.4,
                          child: FlatButton(
                              onPressed: () {
                                Navigator.of(context).pop();
                              },
                              child: Text(
                                "CANCELAR",
                                style: GoogleFonts.firaSans(
                                    fontSize: 12, fontWeight: FontWeight.w400),
                              ))),
                      CustomRaisedbuttonWidget(
                        text: "Enviar",
                        onPressed: () {
                          controller.changeShowToaster(true);
                          Navigator.pushReplacement(context,
                              MaterialPageRoute(builder: (_) => HomePage()));
                        },
                        width: size.width * 0.45,
                      )
                    ],
                  ),
                )
              ],
            ),
          );
        });
  }
}
