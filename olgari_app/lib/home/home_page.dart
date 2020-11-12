import 'package:flushbar/flushbar.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:olgari_app/home/home_controller.dart';
import 'package:olgari_app/login/login_page.dart';
import 'package:olgari_app/shared/widgets/custom_raisedbutton_widget.dart';
import 'package:provider/provider.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  HomeController homeController;

  @override
  void didChangeDependencies() {
    homeController = Provider.of<HomeController>(context);
    if (homeController.showToaster) {
      SchedulerBinding.instance.addPostFrameCallback((_) => showToast());
    }
    homeController.changeShowToaster(false);
    super.didChangeDependencies();
  }

  void showToast() {
    Flushbar(
      borderRadius: 50,
      backgroundColor: Color(0xFF00A56A),
      flushbarPosition: FlushbarPosition.TOP,
      icon: Image.asset("assets/images/ic_success.png"),
      messageText: Text("Te enviamos um e-mail ;)",
          style: GoogleFonts.firaSans(
              fontSize: 16, fontWeight: FontWeight.w400, color: Colors.white)),
      duration: Duration(seconds: 2),
      isDismissible: false,
      flushbarStyle: FlushbarStyle.FLOATING,
      reverseAnimationCurve: Curves.decelerate,
      forwardAnimationCurve: Curves.elasticOut,
    )..show(context);
  }

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return WillPopScope(
      onWillPop: () async => false,
      child: SafeArea(
        child: Material(
          child: Column(
            children: [
              Container(
                height: size.height * 0.5,
                color: Color(0xFFF1EFE7),
                child: Padding(
                  padding: EdgeInsets.only(bottom: size.height * 0.034),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Image.asset("assets/images/img_chicken.png"),
                      Image.asset("assets/images/logo.png")
                    ],
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: size.height * 0.034),
                child: Text(
                  "VAMO DE SALADA?",
                  style: GoogleFonts.firaSans(
                      color: Color(0xFF938F85),
                      fontSize: 16.0,
                      fontWeight: FontWeight.w400),
                ),
              ),
              Container(
                margin: EdgeInsets.only(
                    top: size.height * 0.023,
                    bottom: size.height * 0.034,
                    left: size.height * 0.083,
                    right: size.height * 0.083),
                child: Text(
                  "Falta pouco para você matar sua fome de Olga Ri ;)",
                  style: GoogleFonts.firaSans(
                      fontSize: 16, fontWeight: FontWeight.w400),
                  textAlign: TextAlign.center,
                ),
              ),
              Container(
                margin: EdgeInsets.symmetric(horizontal: size.height * 0.056),
                child: CustomRaisedbuttonWidget(
                  text: "Entrar",
                  color: Color(0xFFF9CA07),
                  textColor: Colors.white,
                  onPressed: () {
                    Navigator.of(context).push(
                        MaterialPageRoute(builder: (context) => LoginPage()));
                  },
                ),
              ),
              Container(
                margin: EdgeInsets.only(
                    top: size.height * 0.034, bottom: size.height * 0.023),
                child: Text(
                  "Ou entre com:",
                  style: GoogleFonts.firaSans(
                      fontSize: 12, fontWeight: FontWeight.normal),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                      margin: EdgeInsets.only(right: size.height * 0.023),
                      child: Image.asset("assets/images/ic_google.png")),
                  Container(
                      margin: EdgeInsets.only(right: size.height * 0.023),
                      child: Image.asset("assets/images/ic_facebook.png")),
                  Image.asset("assets/images/ic_apple.png"),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
