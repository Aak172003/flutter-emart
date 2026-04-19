import 'package:emart_app/views/splash_screen/splash_screen.dart';

import 'package:emart_app/consts/consts.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // So we are using getx so we need to change this material app to getmaterial app
    return GetMaterialApp(
      // return MaterialApp(
      // This is used to remove debug banner
      debugShowCheckedModeBanner: false,
      title: appname,
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.transparent,
        appBarTheme: const AppBarTheme(backgroundColor: Colors.transparent),
        fontFamily: regular,
      ),
      home: const SplashScreen(),
    );
  }
}
