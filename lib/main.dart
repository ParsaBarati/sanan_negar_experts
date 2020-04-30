import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:sanannegarexperts/GLOBAL_CONSTANTS.dart';
import 'package:sanannegarexperts/dashboard/main_page.dart';
import 'package:sanannegarexperts/login/constants/constants.dart';
import 'package:sanannegarexperts/login/ui/signin.dart';
import 'package:sanannegarexperts/splashscreen.dart';
import 'package:load/load.dart';
import 'package:overlay_support/overlay_support.dart';

import 'login/ui/widgets/loading.dart';

void main() => runApp(LoadingProvider(
      loadingWidgetBuilder: (ctx, data) {
        return Loading();
      },
      child: OverlaySupport(
        child: MyApp()
      ),
    ));

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
    ]);
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "ورود",
      theme: ThemeData(fontFamily: 'IRANSans',primaryColor: Colors.orange[200]),
      routes: <String, WidgetBuilder>{
        SPLASH_SCREEN: (BuildContext context) => SplashScreen(),
        SIGN_IN: (BuildContext context) => SignInPage(),
        DASHBOARD: (BuildContext context) => DashBoard(),
      },
      initialRoute: SPLASH_SCREEN,
    );
  }
}
