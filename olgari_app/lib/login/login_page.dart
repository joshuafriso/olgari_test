import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:olgari_app/home/home_controller.dart';
import 'package:olgari_app/login/login_controller.dart';
import 'package:olgari_app/login/utils/login_utils.dart';
import 'package:olgari_app/shared/widgets/custom_raisedbutton_widget.dart';
import 'package:olgari_app/shared/widgets/input_field_widget.dart';
import 'package:provider/provider.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final controller = LoginController();
  HomeController homeController;
  LoginUtils utils = LoginUtils();

  @override
  void didChangeDependencies() {
    controller.setupValidations();
    homeController = Provider.of<HomeController>(context);

    super.didChangeDependencies();
  }

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: GestureDetector(
          child: Image.asset("assets/images/ic_back.png"),
          onTap: () {
            Navigator.of(context).pop();
          },
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              alignment: Alignment.centerLeft,
              margin: EdgeInsets.only(
                  top: size.height * 0.056,
                  left: size.height * 0.023,
                  bottom: size.height * 0.034),
              width: size.width * 0.5,
              child: Observer(
                builder: (_) => RichText(
                  text: controller.isEmailInput
                      ? TextSpan(
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 20,
                              fontWeight: FontWeight.w400),
                          children: <TextSpan>[
                              TextSpan(
                                  text: "Para começar, ",
                                  style: GoogleFonts.firaSans()),
                              TextSpan(
                                  text: "  qual o seu ",
                                  style: GoogleFonts.firaSans()),
                              TextSpan(
                                  text: "e-mail",
                                  style: GoogleFonts.firaSans(
                                      fontWeight: FontWeight.w700)),
                              TextSpan(text: "?", style: GoogleFonts.firaSans())
                            ])
                      : TextSpan(
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 20,
                              fontWeight: FontWeight.w400),
                          children: <TextSpan>[
                              TextSpan(
                                  text: "Olá, Olag Ri :) ",
                                  style: GoogleFonts.firaSans()),
                              TextSpan(
                                  text: "Agora, insira sua ",
                                  style: GoogleFonts.firaSans()),
                              TextSpan(
                                  text: "senha",
                                  style: GoogleFonts.firaSans(
                                      fontWeight: FontWeight.w700))
                            ]),
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.only(
                  left: size.height * 0.023,
                  right: size.height * 0.023,
                  bottom: size.height * 0.123),
              child: Observer(
                builder: (_) => controller.isEmailInput
                    ? InputFieldWidget(
                        keyboardType: TextInputType.emailAddress,
                        textCapitalization: TextCapitalization.none,
                        onChanged: controller.changeEmail,
                        errorText: controller.error.email,
                        hasError: controller.error.email != null ? true : false,
                      )
                    : InputFieldWidget(
                        obscure: true,
                        keyboardType: TextInputType.text,
                        textCapitalization: TextCapitalization.none,
                        onChanged: controller.changePassword,
                        errorText: controller.error.password,
                        hasError:
                            controller.error.password != null ? true : false,
                      ),
              ),
            ),
            Observer(
              builder: (_) => controller.isEmailInput
                  ? Container()
                  : Container(
                      margin: EdgeInsets.only(
                          left: size.height * 0.023,
                          bottom: size.height * 0.023),
                      child: GestureDetector(
                        child: Text(
                          "Esqueci minha senha",
                          style: GoogleFonts.firaSans(
                              fontSize: 14,
                              fontWeight: FontWeight.w400,
                              decoration: TextDecoration.underline),
                        ),
                        onTap: () {
                          utils.showBottomSheetMethod(context,
                              controller.email.toString(), homeController);
                        },
                      ),
                    ),
            ),
            Observer(
                builder: (_) => LinearProgressIndicator(
                      value: controller.isEmailInput ? 0.25 : 1,
                      backgroundColor: Color(0xFFF1EFE7),
                      valueColor:
                          AlwaysStoppedAnimation<Color>(Color(0xFFF9CA07)),
                      minHeight: 3,
                    )),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Container(
                      width: size.width * 0.4,
                      child: Observer(
                        builder: (_) => controller.isEmailInput
                            ? FlatButton(
                                onPressed: () {
                                  Navigator.of(context).pop();
                                },
                                child: Text(
                                  "CANCELAR",
                                  style: GoogleFonts.firaSans(
                                      fontSize: 12,
                                      fontWeight: FontWeight.w400),
                                ))
                            : FlatButton(
                                onPressed: () {
                                  controller.changeIsEmail(true);
                                },
                                child: Text(
                                  "ANTERIOR",
                                  style: GoogleFonts.firaSans(
                                      fontSize: 12,
                                      fontWeight: FontWeight.w400),
                                )),
                      )),
                  Observer(
                      builder: (_) => controller.isEmailInput
                          ? CustomRaisedbuttonWidget(
                              text: "Próximo",
                              onPressed: controller.error.email == null
                                  ? () {
                                      controller.changeIsEmail(false);
                                    }
                                  : () {},
                              width: size.width * 0.45,
                            )
                          : CustomRaisedbuttonWidget(
                              text: "Entrar",
                              onPressed: () {},
                              width: size.width * 0.45,
                            ))
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
