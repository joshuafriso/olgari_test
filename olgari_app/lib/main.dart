import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:olgari_app/home/home_controller.dart';
import 'package:provider/provider.dart';

import 'home/home_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);
    return MultiProvider(
      providers: [
        Provider<HomeController>(create: (_) => HomeController()),
      ],
      child: MaterialApp(
        title: 'Olga RI App',
        theme: ThemeData(
          primarySwatch: Colors.blue,
          visualDensity: VisualDensity.adaptivePlatformDensity,
        ),
        debugShowCheckedModeBanner: false,
        home: HomePage(),
      ),
    );
  }
}
